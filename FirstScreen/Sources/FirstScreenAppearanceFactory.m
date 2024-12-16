//
//  FirstScreenAppearanceFactory.m
//  FirstScreenImpl
//
//  Created by Maxim on 16.12.2024.
//

@import Foundation;
@import FirstScreenInterface;
#import <FirstScreenImpl/FirstScreenImpl-Swift.h>

@implementation FirstScreenAppearanceFactory
- (id<FirstScreenAppearance> _Nonnull)makeAppearanceForPrefferedId:(NSInteger)appearanceId {
    switch (appearanceId) {
        case 2:
            return [FirstScreenAppearanceImpl2 new];
        case 1:
        default:
            return [FirstScreenAppearanceImpl1 new];
    }
}

@end
