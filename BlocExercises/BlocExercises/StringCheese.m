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
    NSLog(fullSentence);
    return fullSentence;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    /* WORK HERE */
    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    NSString *cheeseNameOnly = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
    NSLog(@"%@", cheeseNameOnly);
    return cheeseNameOnly;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    /* WORK HERE */
    // NSString *phrase = [cheese numberOfCheesesStringWithCheeseCount:4];
    // phrase is "4 cheeses"
    // NSString *phrase2 = [cheese numberOfCheesesStringWithCheeseCount:1];
    // phrase2 is "1 cheese"
    NSString *cheese;
    NSString *cheeseNumber = [NSString stringWithFormat:@"%ld cheeses", (long)cheeseCount];
    return cheeseNumber;
    NSString *cheeseNumber2 = [NSString stringWithFormat:@"%ld cheese", (long)cheeseCount];
    return cheeseNumber2;
}

@end
