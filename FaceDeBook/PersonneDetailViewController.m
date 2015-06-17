//
//  PersonneDetailViewController.m
//  FaceDeBook
//
//  Created by Jocelyn Poitras on 12-08-31.
//  Copyright (c) 2012 Jocelyn Poitras. All rights reserved.
//

#import "PersonneDetailViewController.h"

@interface PersonneDetailViewController ()

@end

@implementation PersonneDetailViewController

@synthesize personneLabel;
@synthesize personneName;

@synthesize ageLabel;
@synthesize personneAge;

@synthesize bioLabel;
@synthesize personneBio;

@synthesize personneThumbnail;
@synthesize thumbnailImageView;


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
    
    // Scroller
   // [Scroller setScrollEnabled:YES];
   // [Scroller setContentSize:CGSizeMake(320, 1000)];
    
    // Set the Label text with the selected personne
    personneLabel.text = personneName;
    
    // Set the Label text with the selected personne
    ageLabel.text = personneAge;
    
    // Set the Label text with the selected personne
    bioLabel.text = personneBio;
    
    // Set the Label text with the selected personne
    //thumbnailImageView.image = personneThumbnail;
    thumbnailImageView.image  = [UIImage imageNamed:personneThumbnail];
    
    //NSLog(@"Entering PersonnalDetail.");
}

- (void)viewWillUnload
{
    NSLog(@"Will exit PersonnalDetail.");
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
