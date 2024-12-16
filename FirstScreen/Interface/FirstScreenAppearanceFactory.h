//
//  FirstScreenAppearanceFactory.h
//  FirstScreenInterface
//
//  Created by Maxim on 16.12.2024.
//

#import <Foundation/Foundation.h>

@protocol FirstScreenAppearance;

NS_ASSUME_NONNULL_BEGIN

@interface FirstScreenAppearanceFactory : NSObject
- (id<FirstScreenAppearance> _Nonnull)makeAppearanceForPrefferedId:(NSInteger)appearanceId;
@end

NS_ASSUME_NONNULL_END
