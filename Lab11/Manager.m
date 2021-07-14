//
//  Manager.m
//  Lab11
//
//  Created by Dylan Park on 2021-07-14.
//

#import "Manager.h"

@implementation Manager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    [_delegate deliverPizza:pizza];
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}

- (NSString *)deliverPizza:(Pizza *)pizza {
    NSString *pizzaDescription = pizza.description;
    return pizzaDescription;
}

@end

