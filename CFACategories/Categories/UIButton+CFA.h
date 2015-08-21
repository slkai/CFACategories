//
//  UIButton+CFA.h
//  CFACategories
//
//  Created by JunjieDeng on 15/8/21.
//  Copyright (c) 2015年 JunjieDeng. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ButtonBlock)(UIButton *btn);

@interface UIButton (CFA)

/// 创建文字按钮
+ (instancetype)buttonWithTitle:(NSString *)title
                           font:(UIFont *)font
                          color:(UIColor *)color
                backgroundColor:(UIColor *)bgColor
                    borderColor:(UIColor *)borderColor
                    borderWidth:(CGFloat)borderWidth
                   cornerRadius:(CGFloat)cornerRadius
                          block:(ButtonBlock)block;

/// 创建文字按钮
+ (instancetype)buttonWithTitle:(NSString *)title font:(UIFont *)font color:(UIColor *)color block:(ButtonBlock)block;

/// 创建图片按钮
+ (instancetype)buttonWithImage:(UIImage *)nornalImage highlightImage:(UIImage *)highlightImage block:(ButtonBlock)block;

/// 创建block按钮
-(instancetype)initWithBlock:(ButtonBlock)block;



@end
