//
//  Manager.h
//  Lab11
//
//  Created by Dylan Park on 2021-07-14.
//

#import <Foundation/Foundation.h>
#import "KitchenDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@protocol PizzaManagerDelegate <NSObject>

- (NSString *)deliverPizza:(Pizza *)pizza;

@end

@interface Manager : NSObject <KitchenDelegate>;

@property (nonatomic, weak) id<PizzaManagerDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
