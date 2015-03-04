//
//  ViewController.m
//  UIWebViewResize
//
//  Created by David Ingham on 23/02/2015.
//  Copyright (c) 2015 David Ingham. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(resizeNotificationReceived:) name:@"RESIZE" object:nil];
    
    self.mainView.layer.borderWidth = 5;
    self.mainView.layer.borderColor = [[UIColor blueColor]CGColor];
    
    self.upperView.layer.borderWidth = 5;
    self.upperView.layer.borderColor = [[UIColor redColor]CGColor];
    
    self.lowerView.layer.borderWidth = 5;
    self.lowerView.layer.borderColor = [[UIColor greenColor]CGColor];
}

- (void)resizeNotificationReceived:(NSNotification *) notification
{
    if (self.upperWidthConstraint.constant == 0)
    {
        self.upperWidthConstraint.constant = 311;
        self.lowerWidthConstraint.constant = 311;
    }
    else
    {
        self.upperWidthConstraint.constant = 0;
        self.lowerWidthConstraint.constant = 0;
    }
    
    [self.view setNeedsUpdateConstraints];
    
    [UIView animateWithDuration:0.5 animations:^{
        [self.view layoutIfNeeded];
    }];
}

@end
