//
//  PersonneDetailViewController.h
//  FaceDeBook
//
//  Created by Jocelyn Poitras on 12-08-31.
//  Copyright (c) 2012 Jocelyn Poitras. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PersonneDetailViewController : UIViewController

@property (nonatomic, strong) IBOutlet UILabel *personneLabel;
@property (nonatomic, strong) NSString *personneName;

@property (nonatomic, strong) IBOutlet UILabel *ageLabel;
@property (nonatomic, strong) NSString *personneAge;

@property (nonatomic, strong) IBOutlet UILabel *bioLabel;
@property (nonatomic, strong) NSString *personneBio;

@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;
@property (nonatomic, strong) NSString *personneThumbnail;

@end
