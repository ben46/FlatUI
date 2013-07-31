//
//  PBFlatButton+Addition.m
//  FlatUI
//
//  Created by MacBook Air on 13-7-21.
//  Copyright (c) 2013年 Piotr Bernad. All rights reserved.
//

#import "PBFlatButton+Addition.h"

@implementation PBFlatButton (Addition)


+ (PBFlatButton *)buttonCommon;
{
    PBFlatButton *button = [[PBFlatButton alloc] initWithFrame:CGRectMake(0, 0, 120, 30)];
    return button;
}

@end
