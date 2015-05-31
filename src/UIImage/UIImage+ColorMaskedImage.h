//
//  UIImage+ColorMaskedImage.h
//  Chronability
//
//  Created by Logan Wright on 3/18/15.
//  Copyright (c) 2015 IntrepidPursuits. All rights reserved.
//

@import UIKit;

@interface UIImage (ColorMaskedImage)

/*!
 *  Used for masking the specified image to a speific color
 *
 *  @param color the color to mask to
 *
 *  @return the image that has been updated to use the specified color
 */
- (UIImage *)maskToColor:(UIColor *)color;

@end
