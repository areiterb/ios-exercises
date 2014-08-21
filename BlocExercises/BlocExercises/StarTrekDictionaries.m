//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
     /* WORK HERE*/
    
    [characterDictionary enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        NSLog(@"In our directory, the key\"%@\" corresponds with %@", key, obj);
    }];
    return characterDictionary[@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    
    NSMutableArray *mutableCharactersArray = [@[] mutableCopy];
    [charactersArray enumerateObjectsUsingBlock:^(NSDictionary *character, NSUInteger idx, BOOL *stop) {
       [mutableCharactersArray addObject:character[@"favorite drink"]];
    }];    
    
    return mutableCharactersArray;
    
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    
    NSMutableDictionary *mutableCharacterDictionary = [characterDictionary mutableCopy];
    mutableCharacterDictionary[@"quote"] = (@"Great power comes with great responsability");
    /*[mutableCharacterDictionary setObject:@"Great power comes with great responsability" forKey:@"quote"];
    NSLog(@"You got to love this %ld", [mutableCharacterDictionary[@"quote"] longValue]); */
    
    //characterDictionary[@"quote"];
    
    return mutableCharacterDictionary;
}

@end

