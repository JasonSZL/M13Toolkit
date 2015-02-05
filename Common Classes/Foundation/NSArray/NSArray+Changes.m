//
//  NSArray+Changes.m
//  
//
//  Created by Brandon McQuilkin on 2/4/15.
//
//

#import "NSArray+Changes.h"

@implementation NSArray (Changes)

+ (NSArray *)changesBetweenArray:(NSArray *)currentArray andPreviousArray:(NSArray *)previousArray
{
    //Convert to sets to use set methods not available to arrays
    NSSet *currentSet = [NSSet setWithArray:currentArray];
    NSSet *previousSet = [NSSet setWithArray:previousArray];
    
    //Calculate the deleted objects
    NSMutableSet *deletedObjects = [previousSet mutableCopy];
    [deletedObjects minusSet:currentSet];
    
    //Calculate the inserted objects
    NSMutableSet *insertedObjects = [currentSet mutableCopy];
    [insertedObjects minusSet:previousSet];
    
    //Create the moved change index objects
    __block NSInteger delta = 0;
    NSMutableArray *movedIndices = [NSMutableArray array];
    [previousArray enumerateObjectsUsingBlock:^(id leftObj, NSUInteger leftIdx, BOOL *stop) {
        if ([deletedObjects containsObject:leftObj]) {
            delta++;
            return;
        }
        NSUInteger localDelta = delta;
        for (NSUInteger rightIdx = 0; rightIdx < currentArray.count; ++rightIdx) {
            id rightObj = currentArray[rightIdx];
            if ([insertedObjects containsObject:rightObj]) {
                localDelta--;
                continue;
            }
            if (![rightObj isEqual:leftObj]) {
                continue;
            }
            NSInteger adjustedRightIdx = rightIdx + localDelta;
            if (leftIdx != rightIdx && adjustedRightIdx != leftIdx) {
                [movedIndices addObject:[M13ObjectIndexChange indexChangeForMoveFromIndex:leftIdx toIndex:rightIdx]];
            }
            return;
        }
    }];
    
    //Create the inserted change index objects
    NSMutableArray *insertedIndices = [NSMutableArray array];
    [currentArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if ([insertedObjects containsObject:obj]) {
            [insertedIndices addObject:[M13ObjectIndexChange indexChangeForInsertionAtIndex:idx]];
        }
    }];
    
    //Create the deleted change index objects
    NSMutableArray *deletedIndices = [NSMutableArray array];
    [previousArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        //Does it exist?
        if ([deletedObjects containsObject:obj]) {
            [deletedIndices addObject:[M13ObjectIndexChange indexChangeForDeletionAtIndex:idx]];
        }
    }];
    
    //Combine the results
    NSMutableArray *result = [NSMutableArray array];
    [result addObjectsFromArray:movedIndices];
    [result addObjectsFromArray:insertedIndices];
    [result addObjectsFromArray:deletedIndices];
    
    return [result copy];
}

@end

@interface M13ObjectIndexChange ()

@property (nonatomic, readwrite) NSUInteger currentIndex;
@property (nonatomic, readwrite) NSUInteger previousIndex;
@property (nonatomic, readwrite) M13ObjectIndexChangeType changeType;

@end

@implementation M13ObjectIndexChange

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.changeType = NSNotFound;
        self.currentIndex = NSNotFound;
        self.previousIndex = NSNotFound;
    }
    return self;
}

+ (instancetype)indexChangeForMoveFromIndex:(NSUInteger)fromIndex toIndex:(NSUInteger)toIndex
{
    M13ObjectIndexChange *change = [M13ObjectIndexChange new];
    change.changeType = M13ObjectIndexChangeTypeMoved;
    change.previousIndex = fromIndex;
    change.currentIndex = toIndex;
    return change;
}

+ (instancetype)indexChangeForInsertionAtIndex:(NSUInteger)index
{
    M13ObjectIndexChange *change = [M13ObjectIndexChange new];
    change.changeType = M13ObjectIndexChangeTypeInserted;
    change.currentIndex = index;
    return change;
}

+ (instancetype)indexChangeForDeletionAtIndex:(NSUInteger)index
{
    M13ObjectIndexChange *change = [M13ObjectIndexChange new];
    change.changeType = M13ObjectIndexChangeTypeDeleted;
    change.previousIndex = index;
    return change;
}

- (NSString *)description
{
    switch (self.changeType) {
        case M13ObjectIndexChangeTypeMoved:
            return [NSString stringWithFormat:@"<%@: %p> {type=moved; from=%tu; to=%tu}", [self class], self, self.previousIndex, self.currentIndex];
            break;
        case M13ObjectIndexChangeTypeInserted:
            return [NSString stringWithFormat:@"<%@: %p> {type=insertion; to=%tu}", [self class], self, self.currentIndex];
            break;
        case M13ObjectIndexChangeTypeDeleted:
            return [NSString stringWithFormat:@"<%@: %p> {type=deletion; from=%tu}", [self class], self, self.previousIndex];
            break;
        default:
            break;
    }
}

@end