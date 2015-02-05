//
//  FontSizeAdjustment.m
//  M13Toolkit
//
//  Created by Brandon McQuilkin on 2/5/15.
//  Copyright (c) 2015 BrandonMcQuilkin. All rights reserved.
//

#import "NSAttributedString+FontSizeAdjustment.h"

#if TARGET_OS_IPHONE
#import <UIKit/UIKit.h>
#else
#import <AppKit/AppKit.h>
#endif

@implementation NSAttributedString (FontSizeAdjustment)

- (NSAttributedString *)attributedStringByAdjustingFontSizeByOffset:(CGFloat)offset inRange:(NSRange)range
{
    NSMutableAttributedString *mutableString = [self mutableCopy];
    [mutableString adjustFontSizeByOffset:offset inRange:range];
    return [mutableString copy];
}

@end

@implementation NSMutableAttributedString (FontSizeAdjustment)

- (void)adjustFontSizeByOffset:(CGFloat)offset inRange:(NSRange)range
{
    [self beginEditing];
    
    [self enumerateAttribute:NSFontAttributeName inRange:range options:0 usingBlock:^(id attribute, NSRange attributeRange, BOOL *stop)
     {
         if (attribute) {
             
#if TARGET_OS_IPHONE
             UIFont *oldFont = (UIFont *)attribute;
             UIFont *newFont = [oldFont fontWithSize:oldFont.pointSize + offsetPoints];
#else
             NSFont *oldFont = (NSFont *)attribute;
             NSFont *newFont = [NSFont fontWithName:oldFont.fontName size:oldFont.pointSize + offsetPoints];
#endif
             [self removeAttribute:NSFontAttributeName range:attributeRange];
             [self addAttribute:NSFontAttributeName value:newFont range:attributeRange];
         }
     }];
    
    [self endEditing];
}

@end
