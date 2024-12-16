//
//  PersistenceServiceFactory.m
//  PersistenceServiceImpl
//
//  Created by Maxim on 16.12.2024.
//

@import PersistenceServiceInterface;
#import <PersistenceServiceImpl/PersistenceServiceImpl-Swift.h>

@implementation PersistenceServiceFactory
- (id<PersistenceServiceInterface>)makePersistenceService {
    return [PersistenceServiceFactoryImpl makePersistenceService];
}
@end
