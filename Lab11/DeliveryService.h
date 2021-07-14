//
//  DeliveryService.h
//  Lab11
//
//  Created by Dylan Park on 2021-07-14.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "Manager.h"

NS_ASSUME_NONNULL_BEGIN

@protocol DeliveryServiceDelegate <NSObject>

- (NSString *)deliverPizza:(Pizza *)pizza;

@end

@interface DeliveryService : NSObject <PizzaManagerDelegate>;

@property (nonatomic, weak) id<DeliveryServiceDelegate> delegate;

@property NSMutableArray *pizzaRecord;

- (NSString *)deliverPizza:(Pizza *)pizza;
- (NSMutableArray *)returnPizzaRecord;

@end

NS_ASSUME_NONNULL_END
