//
//  Deck.h
//  PlayingCard
//
//  Created by Ivan Rodrigues de Martino on 08/10/20.
//  Copyright © 2020 Ivan Rodrigues de Martino. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

NS_ASSUME_NONNULL_BEGIN

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;

@end

NS_ASSUME_NONNULL_END
