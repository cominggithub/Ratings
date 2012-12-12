//
//  PlayerViewController.h
//  Ratings
//
//  Created by Coming on 12/12/5.
//  Copyright (c) 2012年 Coming. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerDetailsViewController.h"

@interface PlayerViewController : UITableViewController<PlayerDetailsViewControllerDelegate>
{
    
    
}

@property (nonatomic, strong) NSMutableArray *players;
@property (nonatomic, strong) NSMutableArray *headImages;
@property (nonatomic, retain) UIImage *appleImage;
@end
