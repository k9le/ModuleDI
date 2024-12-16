//
//  PersistenceServiceFactory.h
//  PersistenceServiceInterface
//
//  Created by Maxim on 16.12.2024.
//

#import <Foundation/Foundation.h>

@protocol PersistenceServiceInterface;

NS_ASSUME_NONNULL_BEGIN

@interface PersistenceServiceFactory : NSObject
- (id<PersistenceServiceInterface> _Nonnull)makePersistenceService;
@end

NS_ASSUME_NONNULL_END
