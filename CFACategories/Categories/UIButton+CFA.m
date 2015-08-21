//
//  UIButton+CFA.m
//  CFACategories
//
//  Created by JunjieDeng on 15/8/21.
//  Copyright (c) 2015年 JunjieDeng. All rights reserved.
//

#import "UIButton+CFA.h"

#import <objc/runtime.h>

static const void *kButtonKey;

@implementation UIButton (CFA)


+ (instancetype)buttonWithTitle:(NSString *)title
                           font:(UIFont *)font
                          color:(UIColor *)color
                backgroundColor:(UIColor *)bgColor
                    borderColor:(UIColor *)borderColor
                    borderWidth:(CGFloat)borderWidth
                   cornerRadius:(CGFloat)cornerRadius
                          block:(ButtonBlock)block
{
    UIButton *btn = [[UIButton alloc] initWithBlock:block];

    btn.backgroundColor = bgColor;
    btn.titleLabel.font = font;
    btn.layer.borderWidth = borderWidth;
    btn.layer.borderColor = borderColor.CGColor;
    btn.layer.cornerRadius = cornerRadius;
    
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:color forState:UIControlStateNormal];
    
    return btn;
}


+ (instancetype)buttonWithTitle:(NSString *)title font:(UIFont *)font color:(UIColor *)color block:(ButtonBlock)block
{
    UIButton *btn = [[UIButton alloc] initWithBlock:block];
    
    btn.titleLabel.font = font;
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:color forState:UIControlStateNormal];
    
    return btn;
}

+ (instancetype)buttonWithImage:(UIImage *)nornalImage highlightImage:(UIImage *)highlightImage block:(ButtonBlock)block
{
    UIButton *btn = [[UIButton alloc] initWithBlock:block];
    
    [btn setImage:nornalImage forState:UIControlStateNormal];
    [btn setImage:highlightImage forState:UIControlStateHighlighted];
    
    return btn;
}

-(instancetype)initWithBlock:(ButtonBlock)block
{
    if (self = [super init])
    {
        self.backgroundColor = [UIColor clearColor];
        
        objc_setAssociatedObject(self, kButtonKey, block, OBJC_ASSOCIATION_COPY);
        [self addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

#pragma mark - Action
-(void)btnClick:(UIButton *)btn
{
    ButtonBlock block = objc_getAssociatedObject(self, kButtonKey);
    block(btn);
}

@end
