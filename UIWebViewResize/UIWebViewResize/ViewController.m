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
    [UIView animateWithDuration:0.5 animations:^{
        if (self.upperView.frame.size.width == 0)
        {
            self.upperView.frame = CGRectMake(0, 0, 311, self.upperView.frame.size.height);
            self.lowerView.frame = CGRectMake(0, 383, 311, self.lowerView.frame.size.height);
            self.mainView.frame = CGRectMake(310, 0, 714, 768);
        }
        else
        {
            self.upperView.frame = CGRectMake(0, 0, 0, self.upperView.frame.size.height);
            self.lowerView.frame = CGRectMake(0, 383, 0, self.lowerView.frame.size.height);
            self.mainView.frame = CGRectMake(0, 0, 1024, 768);
        }
    }];
}

@end
