//
//  UIImage+ColorMaskedImage.m
//  Chronability
//
//  Created by Logan Wright on 3/18/15.
//  Copyright (c) 2015 IntrepidPursuits. All rights reserved.
//

#import "UIImage+ColorMaskedImage.h"

@implementation UIImage (ColorMaskedImage)
- (UIImage *)maskToColor:(UIColor *)color {
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, self.scale);
    CGContextRef c = UIGraphicsGetCurrentContext();
    [self drawInRect:rect];
    CGContextSetFillColorWithColor(c, [color CGColor]);
    CGContextSetBlendMode(c, kCGBlendModeSourceAtop);
    CGContextFillRect(c, rect);
    UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return result;
}
@end
