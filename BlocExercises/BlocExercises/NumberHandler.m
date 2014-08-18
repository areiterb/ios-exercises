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
    
    [number intValue];
    
    return number;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE
    NSInteger low = number;
    NSInteger high = otherNumber;
    if (high < low) {
        low = otherNumber;
        high = number;
    }
    
        NSArray *numberBetweenNumber =@[[NSValue valueWithRange: low],
                                       [NSValue valueWithRange: high]
                                        ];*/
        
    return nil;//numberBetweenNumber;
}

-  (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    
    [[arrayOfNumbers mutableCopy] sortUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        NSNumber *number1 = (NSNumber *)obj1;
        NSNumber *number2 = (NSNumber *)obj2;
        
        int intValue1 = [number1 intValue];
        int intValue2 = [number2 intValue];
        
        if (intValue1 > intValue2) {
            return number2.integerValue;
        } else {
            return number1.integerValue;
        }
    }];
    
     return 0;
}

@end

