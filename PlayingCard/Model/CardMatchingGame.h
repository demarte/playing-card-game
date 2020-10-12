//
//  CardMatchingGame.h
//  PlayingCard
//
//  Created by Ivan Rodrigues de Martino on 12/10/20.
//  Copyright © 2020 Ivan Rodrigues de Martino. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

NS_ASSUME_NONNULL_BEGIN

@interface CardMatchingGame : NSObject

/// Designated Initializer
- (instancetype)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck;

-(void)chooseCardAtIndex:(NSUInteger)index;
-(Card *)cardAtIndex:(NSUInteger)index;

@property (nonatomic, readonly) NSInteger score;

@end

NS_ASSUME_NONNULL_END
