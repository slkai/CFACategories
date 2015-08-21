//
//  UIColor+CFA.m
//  CFACategories
//
//  Created by JunjieDeng on 15/8/21.
//  Copyright (c) 2015年 JunjieDeng. All rights reserved.
//

#import "UIColor+CFA.h"

@implementation UIColor (CFA)

+ (UIColor *) colorWithHex:(NSString *)hexColor
{
    unsigned int red,green,blue;
    NSRange range;
    range.length = 2;
    
    range.location = 0;
    [[NSScanner scannerWithString:[hexColor substringWithRange:range]] scanHexInt:&red];
    
    range.location = 2;
    [[NSScanner scannerWithString:[hexColor substringWithRange:range]] scanHexInt:&green];
    
    range.location = 4;
    [[NSScanner scannerWithString:[hexColor substringWithRange:range]] scanHexInt:&blue];
    
    return [UIColor colorWithRed:red green:green blue:blue];
}

@end
