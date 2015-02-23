//
//  MainViewController.h
//  UIWebViewResize
//
//  Created by David Ingham on 23/02/2015.
//  Copyright (c) 2015 David Ingham. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIWebView *webview;
@property (weak, nonatomic) IBOutlet UIButton *button;

- (IBAction)buttonTouched:(id)sender;

@end
