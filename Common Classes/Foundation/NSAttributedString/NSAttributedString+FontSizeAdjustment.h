//
//  FontSizeAdjustment.h
//  M13Toolkit
/*Copyright (c) 2015 Brandon McQuilkin
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

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