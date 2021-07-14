//
//  DeliveryService.m
//  Lab11
//
//  Created by Dylan Park on 2021-07-14.
//

#import "DeliveryService.h"

@implementation DeliveryService

- (instancetype)init {
    self = [super init];
    if (self) {
        _pizzaRecord = [NSMutableArray new];
    }
    return self;
}

- (nonnull NSString *)deliverPizza:(nonnull Pizza *)pizza {
    NSString *pizzaDescription = pizza.description;
    [self.pizzaRecord addObject:pizzaDescription];
    [_delegate deliverPizza:pizza];
    return pizzaDescription;
}

- (NSMutableArray *)returnPizzaRecord {
    return self.pizzaRecord;
}

@end
