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
    
    
    NSMutableArray *mutableArrayOfNumbers = [arrayOfNumbers mutableCopy];
    NSNumber *lowest = [mutableArrayOfNumbers objectAtIndex:0];
    for (int i = 0; i < [lowest intValue]; i++) {
        if ([mutableArrayOfNumbers objectAtIndex:i] < mutableArrayOfNumbers) {
            lowest = [mutableArrayOfNumbers objectAtIndex:i];
        };
    }
     return [lowest intValue];
}

@end

