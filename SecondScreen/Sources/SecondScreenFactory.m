//
//  SecondScreenFactory.m
//  SecondScreenImpl
//
//  Created by Maxim on 16.12.2024.
//

@import SecondScreenInterface;
#import <SecondScreenImpl/SecondScreenImpl-Swift.h>

@implementation SecondScreenFactory
- (UIViewController *)makeSecondScreenWith:(UIUserInterfaceStyle)theme {
    return [SecondScreenFactoryImpl makeSecondScreenWith:theme];
}

@end
