//
//  main.m
//  Lab11
//
//  Created by Dylan Park on 2021-07-14.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "ManagerHatingAnchovies.h"
#import "ManagerBeingCheery.h"
#import "Manager.h"
#import "DeliveryService.h"
#import "DeliveryCar.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Kitchen *restaurantKitchen = [Kitchen new];
        Manager *Jane = [Manager new];
        DeliveryService *deliveryService = [DeliveryService new];
        DeliveryCar *deliveryCar = [DeliveryCar new];
        
        while (TRUE) {
            // Loop forever
            NSLog(@"Please pick your pizza size and toppings: ");
            NSLog(@"'record' to see pizza record: ");
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSString *keyword = commandWords[0];
            
            restaurantKitchen.delegate = Jane;
            Jane.delegate = deliveryService;
            
            Pizza *pizza;
            if ([keyword isEqualToString:@"pepperoni"]) {
                pizza = [Pizza largePepperoni];
            } else if ([keyword isEqualToString:@"record"]) {
                NSString *pizzaRecord = [deliveryService.pizzaRecord componentsJoinedByString:@"; "];
                NSLog(@"Pizza Record: %@", [NSString stringWithFormat:@"%@", pizzaRecord]);
                continue;
            } else {
                // And then send some message to the kitchen...
                PizzaSize size = [Pizza sizeFromString:keyword];
                NSArray *toppings = [commandWords subarrayWithRange:NSMakeRange(1, commandWords.count - 1)];
                
                pizza = [restaurantKitchen makePizzaWithSize:size toppings:toppings];
            }
            
            if (pizza) {
                NSLog(@"Here is a %@.", pizza);
                deliveryService.delegate = deliveryCar;
            } else {
                NSLog(@"There is no pizza.");
            }
        }
    }
    return 0;
}
