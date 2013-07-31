//
//  PBLabel.m
//  FlatUI
//
//  Created by MacBook Air on 13-7-21.
//  Copyright (c) 2013年 Piotr Bernad. All rights reserved.
//

#import "PBLabel.h"
#import "PBFlatSettings.h"

@implementation PBLabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UIColor *_backgroundColor = [UIColor clearColor];
        UIColor *_mainColor = [[PBFlatSettings sharedInstance] mainColor];
        [self setBackgroundColor:_backgroundColor];
        [self setTextColor:_mainColor];
        [self setFont:[[PBFlatSettings sharedInstance] font]];
    }
    return self;
}

- (void)setFontSize:(NSInteger)size;
{
    self.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:size];
}

@end
