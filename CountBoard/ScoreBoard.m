//
//  ScoreBoard.m
//  CountBoard
//
//  Created by Huang YiFeng on 12-3-7.
//  Copyright (c) 2012年 Cybozu, Inc. All rights reserved.
//

#import "ScoreBoard.h"

static CGFloat k_transition_duration = 0.5;

@interface ScoreBoard()

- (void)_createTwoGestureRecognizer;
- (void)_turnPage;
- (void)_refreshState;


@end


@implementation ScoreBoard

@synthesize score;

#pragma mark - private

- (void)_turnPage
{
//    [self]
}

- (void)_createTwoGestureRecognizer
{
    UISwipeGestureRecognizer *upRgn = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeUp:)];
    upRgn.direction = UISwipeGestureRecognizerDirectionUp;
    upRgn.delegate = self;
    
    UISwipeGestureRecognizer *downRgn = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeDown:)];
    downRgn.direction = UISwipeGestureRecognizerDirectionDown;
    downRgn.delegate = self;
    
    [self addGestureRecognizer:upRgn];
    [self addGestureRecognizer:downRgn];
}

- (void)_refreshState
{
    self.text = [NSString stringWithFormat:@"%d",self.score];
}

#pragma mark - init

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) 
    {
        score = 0;
        [self _createTwoGestureRecognizer];
    }
    return self;
}

- (void)awakeFromNib
{
    [self _refreshState];
}

#pragma mark - IBAction

- (void)swipeUp:(UIGestureRecognizer *)sender
{
    self.score++;

    UIViewAnimationOptions option = UIViewAnimationOptionTransitionCurlUp | UIViewAnimationOptionCurveEaseInOut;
    
    [UIView transitionWithView:sender.view duration:k_transition_duration options:option animations:^{
        [self _refreshState];
    } completion:nil];
}

- (void)swipeDown:(UIGestureRecognizer *)sender
{
    if (0 < self.score) 
    {
        self.score--;
        UIViewAnimationOptions option = UIViewAnimationOptionTransitionCurlDown | UIViewAnimationOptionCurveEaseInOut;
        [UIView transitionWithView:sender.view duration:k_transition_duration options:option animations:^{
            [self _refreshState];
        } completion:nil];
    }
}

@end
