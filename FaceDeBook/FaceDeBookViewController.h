//
//  FaceDeBookViewController.h
//  FaceDeBook
//
//  Created by Jocelyn Poitras on 12-08-31.
//  Copyright (c) 2012 Jocelyn Poitras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface FaceDeBookViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    
    SystemSoundID toneSSIDs[1];
    
}

@property (nonatomic, strong) IBOutlet UITableView *tableView;

@end
