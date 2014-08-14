//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSInteger low = number;
    NSInteger high = otherNumber;
    if (high < low) {
        low = otherNumber;
        high = number;
    }
    
    // Make into a While loop
   
    //NSMutableString *stringNumber = [@"" mutableCopy];
    /*for (; low <= high; low++) {
        [stringNumber appendFormat:@"%ld", (long)low]; */
    
    
    NSMutableString *stringNumber = [@"" mutableCopy];
    while (low <=high) {
        [stringNumber appendFormat:@"%ld", (long)low];
        low++;
    }
    
         
    return stringNumber;
}

@end
