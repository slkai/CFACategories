//
//  UIImage+CFA.m
//  CFACategories
//
//  Created by JunjieDeng on 15/8/21.
//  Copyright (c) 2015年 JunjieDeng. All rights reserved.
//

#import "UIImage+CFA.h"

@implementation UIImage (CFA)

+ (UIImage *)imageWithColor:(UIColor *)color
{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
