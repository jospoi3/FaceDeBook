//
//  AboutViewController.m
//  FaceDeBook
//
//  Created by Jocelyn Poitras on 12-09-07.
//  Copyright (c) 2012 Jocelyn Poitras. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

@synthesize webView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    // Add code to load web content in UIWebView
    //NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"about.html" ofType:nil]];
    //NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //[webView loadRequest:request];
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.thundra.ca/test/about.html"]]];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
