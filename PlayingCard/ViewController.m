//
//  ViewController.m
//  PlayingCard
//
//  Created by Ivan Rodrigues de Martino on 08/10/20.
//  Copyright © 2020 Ivan Rodrigues de Martino. All rights reserved.
//

#import "ViewController.h"
#import "Deck.h"
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
    if (!_deck) {
        _deck = [[PlayingCardDeck alloc] init];
    }
    return _deck;
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
    } else {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"] forState:UIControlStateNormal];
        
        Card *card = [self.deck drawRandomCard];
        [sender setTitle: [NSString stringWithFormat:@"%@", card.contents] forState:UIControlStateNormal];
    }
    
    self.flipCount++;
}

@end
