//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
    // NSString *fullSentence = [cheese favoriteCheeseStringWithCheese:@"cheddar"];
    // fullSentence is "My favorite cheese is cheddar."
    NSString *fullSentence = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    NSLog(@"%@", fullSentence);
    return fullSentence;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    /* WORK HERE */
    NSString *cheeseNameOnly = cheeseName;
    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    if (cheeseRange.location != NSNotFound) {
        cheeseNameOnly = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
    }
    NSLog(@"%@", cheeseNameOnly);
    return cheeseNameOnly;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    /* WORK HERE */
    NSString* format = @"%ld cheeses"; // Assume plural
    if (cheeseCount == 1) {
        format = @"ld cheese";
    }
    return [NSString stringWithFormat:format, (long)cheeseCount];
}

@end
