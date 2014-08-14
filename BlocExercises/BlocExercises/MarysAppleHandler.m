//
//  MarysAppleHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import "MarysAppleHandler.h"

@implementation MarysAppleHandler

- (NSString *) itemMaryCanPurchaseForDollars:(NSInteger)dollars {
    NSString *itemToReturn = @"have The Big Apple";

    /* WORK HERE */
    
    if (dollars < 5) {
        itemToReturn = @"get out of my store";
    } else if (dollars == 5) {
        itemToReturn = @"have some gum";
    } else if (dollars >= 6 && dollars < 1000) {
        itemToReturn = @"have an apple";
    } else if (dollars >= 1000 && dollars < 1000000000) {
        itemToReturn = @"have an Apple computer";
    }
    
    
    NSLog(@"For $%ld, Mary can: %@", (long)dollars, itemToReturn);
    return itemToReturn;
}

- (NSUInteger) dollarCostForAppleFlavoredVodka {
    /* WORK HERE */
    
   // NSUInteger cost = 24;
    
   // if (self.getsDiscount) {
    //    cost *= .75;
   // }
    
    NSUInteger cost = self.getsDiscount ? 24 * .75 : 24;
    NSLog(@"Cost will be %ld", (unsigned long)cost);
    return cost;
}

@end
