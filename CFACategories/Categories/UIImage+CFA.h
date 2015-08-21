//
//  UIImage+CFA.h
//  CFACategories
//
//  Created by JunjieDeng on 15/8/21.
//  Copyright (c) 2015年 JunjieDeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (CFA)

/// 返回一个像素的纯色图片
+ (UIImage *)imageWithColor:(UIColor *)color;

@end
