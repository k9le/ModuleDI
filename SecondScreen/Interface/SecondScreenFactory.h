//
//  SecondScreenFactory.h
//  SecondScreenInterface
//
//  Created by Maxim on 16.12.2024.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecondScreenFactory : NSObject
- (UIViewController *)makeSecondScreenWith:(UIUserInterfaceStyle)theme;
@end

NS_ASSUME_NONNULL_END
