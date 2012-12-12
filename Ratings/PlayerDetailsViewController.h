//
//  PlayerDetailsViewController.h
//  Ratings
//
//  Created by Coming on 12/12/9.
//  Copyright (c) 2012年 Coming. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"

@class PlayerDetailsViewController;
@protocol PlayerDetailsViewControllerDelegate <NSObject>
-(void) playerDetailsViewControllerDidCancel: (PlayerDetailsViewController*) controller;
-(void) playerDetailsViewController: (PlayerDetailsViewController*) controller didAddPlayer:(Player*) player;
@end

@interface PlayerDetailsViewController : UITableViewController
@property (nonatomic, weak) id <PlayerDetailsViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;


-(IBAction)cancel:(id)sender;
-(IBAction)done:(id)sender;


@end
