//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    
    return [NSNumber numberWithInteger:[number integerValue] * 2];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSInteger low = number;
    NSInteger high = otherNumber;
    if (high < low) {
        low = otherNumber;
        high = number;
    }
    
    NSMutableArray *arrayNumber = [@[] mutableCopy];
    for (; low <= high; low++) {
        NSNumber* number = [NSNumber numberWithInt:low];
        [arrayNumber addObject:number];

    }
    return arrayNumber;
}

-  (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    
    //NSNumber *min = [arrayOfNumbers valueForKey:@"@min.intValue"];
    
   // NSMutableArray *mutableArrayOfNumbers = [arrayOfNumbers mutableCopy];
    NSInteger lowest = [[arrayOfNumbers objectAtIndex:0] integerValue];
    for (int i = 1; i < arrayOfNumbers.count; i++) {
        NSInteger currentValue = [[arrayOfNumbers objectAtIndex:i] integerValue];
        if (currentValue < lowest) {
            lowest = currentValue;
        }
    }
     return lowest;
}

@end

