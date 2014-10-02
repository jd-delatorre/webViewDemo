//
//  ViewController.h
//  webViewDemo
//
//  Created by John De La Torre on 2/8/14.
//  Copyright (c) 2014 John De La Torre. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (strong, nonatomic) IBOutlet UITextField *txtAddress;

- (IBAction)addressChanged:(id)sender;
- (IBAction)goPressed:(id)sender;



@end
