//
//  SimpleCalculator.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "SimpleCalculator.h"

@implementation SimpleCalculator


- (NSInteger) increaseNumberBy1: (NSInteger) number {
    /* Work Here */
    return number + 1;
}

- (NSInteger) addNumber:(NSInteger) number1 toNumber:(NSInteger) number2 {
    /* Work Here */
//    [self addNumber:5 toNumber:5];
    return number1 + number2;
}

- (NSInteger) remainderOfNumber:(NSInteger) dividend dividedByNumber:(NSInteger) divisor {
    /* WORK HERE */
    return dividend % divisor;
}

@end
