//
//  FontSizeAdjustment.h
//  M13Toolkit
//
//  Created by Brandon McQuilkin on 2/5/15.
//  Copyright (c) 2015 BrandonMcQuilkin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CGGeometry.h>

@interface NSAttributedString (FontSizeAdjustment)

/**
 Creates a new attributed string by adjusting the point size of the fonts in the specified range by the given amount.
 
 @param offset The amount of points to update the font size by.
 @param range  The range to apply the offset.
 
 @return A new attributed string.
 */
- (NSAttributedString *)attributedStringByAdjustingFontSizeByOffset:(CGFloat)offset inRange:(NSRange)range;

@end

@interface NSMutableAttributedString (FontSizeAdjustment)

/**
 Modifies the attributed string by adjusting the point size of the fonts in the specified range by the given amount.
 
 @param offset The amount of points to update the font size by.
 @param range  The range to apply the offset.
 */
- (void)adjustFontSizeByOffset:(CGFloat)offset inRange:(NSRange)range;

@end