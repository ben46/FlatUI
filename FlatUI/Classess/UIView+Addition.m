//
//  UIView+Addition.m
//  phoebe
//
//  Created by cncn on 13-7-23.
//  Copyright (c) 2013年 cncn. All rights reserved.
//

#import "UIView+Addition.h"

@implementation UIView (Addition)

- (void)setWidth:(CGFloat)width;
{
    CGRect f = self.frame;
    f.size.width = width;
    self.frame = f;
}

- (void)setHeight:(CGFloat)height;
{
    CGRect f = self.frame;
    f.size.height = height;
    self.frame = f;
}

- (void)setOriginX:(CGFloat)x;
{
    CGRect f = self.frame;
    f.origin.x = x;
    self.frame = f;
}

- (void)setOriginY:(CGFloat)y;
{
    CGRect f = self.frame;
    f.origin.y = y;
    self.frame = f;
}

- (void)setOriginX:(CGFloat)x originY:(CGFloat)y;
{
    CGRect f = self.frame;
    f.origin.x = x;
    f.origin.y = y;
    self.frame = f;
}

@end
