//
//  DeliveryCar.m
//  Lab11
//
//  Created by Dylan Park on 2021-07-14.
//

#import "DeliveryCar.h"

@implementation DeliveryCar

- (nonnull NSString *)deliverPizza:(nonnull Pizza *)pizza {
    NSLog(@"Pizza Delivered.");
    return pizza.description;
}

@end
