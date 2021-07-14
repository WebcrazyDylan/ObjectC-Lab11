//
//  DeliveryCar.h
//  Lab11
//
//  Created by Dylan Park on 2021-07-14.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryService.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeliveryCar : NSObject <DeliveryServiceDelegate>;

- (NSString *)deliverPizza:(Pizza *)pizza;

@end

NS_ASSUME_NONNULL_END
