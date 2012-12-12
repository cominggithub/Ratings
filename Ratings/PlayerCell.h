//
//  PlayerCell.h
//  Ratings
//
//  Created by Coming on 12/12/9.
//  Copyright (c) 2012年 Coming. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayerCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UILabel *nameLabel;
@property (nonatomic, strong) IBOutlet UILabel *gameLabel;
@property (nonatomic, strong) IBOutlet UIImageView *headImageView;
@property (nonatomic, strong) IBOutlet UIImageView *ratingImageView1;
@property (nonatomic, strong) IBOutlet UIImageView *ratingImageView2;
@property (nonatomic, strong) IBOutlet UIImageView *ratingImageView3;
@property (nonatomic, strong) IBOutlet UIImageView *ratingImageView4;
@property (nonatomic, strong) IBOutlet UIImageView *ratingImageView5;

@end
