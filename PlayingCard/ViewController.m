//
//  ViewController.m
//  PlayingCard
//
//  Created by Ivan Rodrigues de Martino on 08/10/20.
//  Copyright © 2020 Ivan Rodrigues de Martino. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"
#import "Card.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipCountLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck *deck;

@end

@implementation ViewController

- (Deck *)deck
{
    if (!_deck) _deck = [self createDeck];
    return _deck;
}

- (PlayingCardDeck *) createDeck
{
    return [[PlayingCardDeck alloc] init];
}

- (void) setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipCountLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"Flip count label changed to %d", self.flipCount);
}

- (IBAction)flipCard:(UIButton *)sender {
    
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardbackground"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
        self.flipCount++;
    } else {
        Card *card = [self.deck drawRandomCard];
        if (card) {
            [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"] forState:UIControlStateNormal];
            [sender setTitle:card.contents forState:UIControlStateNormal];
            self.flipCount++;
        }
    }
}

@end
