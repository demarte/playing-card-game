//
//  PlayingCard.h
//  PlayingCard
//
//  Created by Ivan Rodrigues de Martino on 08/10/20.
//  Copyright © 2020 Ivan Rodrigues de Martino. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

NS_ASSUME_NONNULL_BEGIN

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (unsigned long)maxRank;

@end

NS_ASSUME_NONNULL_END
