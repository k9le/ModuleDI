//
//  FirstScreenFactory.m
//  FirstScreenImpl
//
//  Created by Maxim on 16.12.2024.
//

@import FirstScreenInterface;
#import <FirstScreenImpl/FirstScreenImpl-Swift.h>

@implementation FirstScreenFactory
+ (UIViewController * _Nonnull)makeFirstScreenWith:(id<FirstScreenAppearance> _Nullable)appearance {
    return [FirstScreenFactoryImpl makeFirstScreen:appearance];
}

@end
