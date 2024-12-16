//
//  NetworkServiceFactory.h
//  NetworkServiceInterface
//
//  Created by Maxim on 16.12.2024.
//

#import <Foundation/Foundation.h>

@protocol NetworkServiceInterface;

NS_ASSUME_NONNULL_BEGIN

@interface NetworkServiceFactory : NSObject
- (id<NetworkServiceInterface>)makeNetworkService;
@end

NS_ASSUME_NONNULL_END
