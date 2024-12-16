//
//  FirstScreenFactory.h
//  FirstScreenInterface
//
//  Created by Maxim on 16.12.2024.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FirstScreenFactory: NSObject
+ (UIViewController * _Nonnull)makeFirstScreenWith:(id<FirstScreenAppearance> _Nullable)appearance;
@end

NS_ASSUME_NONNULL_END
