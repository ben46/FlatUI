//
//  PBBarButtonIconButton.m
//  FlatUI
//
//  Created by Piotr Bernad on 16.06.2013.
//  Copyright (c) 2013 Piotr Bernad. All rights reserved.
//

#import "PBBarButtonIconButton.h"
#import "PBFlatSettings.h"
#import "PBLabel.h"

@implementation PBBarButtonIconButton {
    PBFlatIconType _type;
}
-(id)initWithFrame:(CGRect)frame andWithType:(PBFlatIconType)type {
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor clearColor]];
        _type = type;
    }
    return self;
}
-(void)drawRect:(CGRect)rect {
    [PBIconDrawning drawIconInRect:rect withType:_type color:[[PBFlatSettings sharedInstance] mainColor]];
//    if(self.titleLabel.text && self.titleLabel.text.length > 0) {
//        PBLabel *label = [[PBLabel alloc] initWithFrame:CGRectMake(rect.size.width, 0, 30, 30)];
//        [label setText:self.titleLabel.text];
//        [label sizeToFit];
//        [self addSubview:label];
//    }
}
- (void)setType:(PBFlatIconType)type {
    _type = type;
    [self setNeedsDisplay];
}

@end
