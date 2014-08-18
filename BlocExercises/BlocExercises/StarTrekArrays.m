//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    
    NSArray *characterArray = [characterString componentsSeparatedByString:@";"];
    
    return characterArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    
    NSString *characterString = [characterArray componentsJoinedByString:@";"];
    
    return characterString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    
    NSMutableArray *characterMutableArray = [characterArray mutableCopy];
    NSSortDescriptor *sortAlphabetically =[[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [characterMutableArray sortUsingDescriptors: @[sortAlphabetically]];
    return characterMutableArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    
    NSPredicate *containsWorfPredicate = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'Worf'"];
    NSArray *containsWorf = [characterArray filteredArrayUsingPredicate:containsWorfPredicate];
    for (NSString *task in characterArray) {
        NSLog(@"%@", task);
    }
    
    
    return 1 == containsWorf.count;
}

@end
