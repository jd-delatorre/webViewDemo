//
//  ViewController.m
//  webViewDemo
//
//  Created by John De La Torre on 2/8/14.
//  Copyright (c) 2014 John De La Torre. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _txtAddress.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addressChanged:(id)sender {
    [self CallWeb];
}

- (IBAction)goPressed:(id)sender {
    [self CallWeb];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self CallWeb];
    return true;
}

-(void)CallWeb{
    
    NSString *addr = _txtAddress.text;
    [_txtAddress resignFirstResponder];
    
    //function to go to url
    //checking if url has http or not if it does, then just proceed, if not append http
    
    NSString *urlString;
    addr = [addr lowercaseString];
    
    if ([addr rangeOfString:@"http://"].location == NSNotFound) {
        urlString = @"http://";
        urlString = [urlString stringByAppendingString:addr];
    }
    else{
        urlString = addr;
    }
    
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *theRequest = [NSURLRequest requestWithURL:url];
    
    [_webView loadRequest:theRequest];
}


@end
