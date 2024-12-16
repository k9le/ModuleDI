//
//  NetworkServiceFactory.m
//  NetworkServiceImpl
//
//  Created by Maxim on 16.12.2024.
//

@import NetworkServiceInterface;
#import <NetworkServiceImpl/NetworkServiceImpl-Swift.h>

@implementation NetworkServiceFactory
- (id<NetworkServiceInterface>)makeNetworkService {
    return [NetworkServiceFactoryImpl makeNetworkService];
}

@end
