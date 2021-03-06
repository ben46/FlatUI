//
//  PBFlatSettings.m
//  FlatUIlikeiOS7
//
//  Created by Piotr Bernad on 11.06.2013.
//  Copyright (c) 2013 Piotr Bernad. All rights reserved.
//

#import "PBFlatSettings.h"
#import "PBFlatSegmentedControl.h"

@implementation PBFlatSettings

+ (PBFlatSettings *)sharedInstance
{
    static dispatch_once_t once;
    static PBFlatSettings *sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[PBFlatSettings alloc] init];
    });
    return sharedInstance;
}
- (id)init {
    self = [super init];
    if (self) {
        _mainColor = [UIColor colorWithRed:0.35f green:0.51f blue:0.91f alpha:1.00f];
        _backgroundColor = [UIColor whiteColor];
        _textFieldPlaceHolderColor = [UIColor colorWithRed:0.80f green:0.80f blue:0.80f alpha:1.00f];
        _secondColor = [UIColor colorWithRed:0.94f green:0.94f blue:0.94f alpha:1.00f];
        _font = [UIFont fontWithName:@"HelveticaNeue-Light" size:17];
        _iconImageColor = [UIColor whiteColor];
        _navigationTintColor = [UIColor whiteColor];
    }
    return self;
}

- (void)navigationBarApperance {
    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageWithColor:_mainColor] forBarMetrics:UIBarMetricsDefault];
    [[UINavigationBar appearance] setTintColor:_navigationTintColor];
    
    NSDictionary *_titleTextAttributes = [NSDictionary dictionaryWithObjectsAndKeys:
                       [_font fontWithSize:20.0f], UITextAttributeFont,
                       [UIColor clearColor],UITextAttributeTextShadowColor,
                       _navigationTintColor, UITextAttributeTextColor,
                                          nil];
    
    [[UINavigationBar appearance] setTitleTextAttributes:_titleTextAttributes];
    
    // remove shadow
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 6.0){
        [[UINavigationBar appearance] setShadowImage:[UIImage imageWithColor:_textFieldPlaceHolderColor]];
    }
}
@end
