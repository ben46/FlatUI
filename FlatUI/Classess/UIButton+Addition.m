//
//  UIButton+Addition.m
//  FlatUI
//
//  Created by MacBook Air on 13-7-21.
//  Copyright (c) 2013年 Piotr Bernad. All rights reserved.
//

#import "UIButton+Addition.h"

@implementation UIButton (Addition)

- (void)setTitle:(NSString *)title;
{
    [self setTitle:title forState:UIControlStateNormal];
    [self setTitle:title forState:UIControlStateSelected];
}

@end
