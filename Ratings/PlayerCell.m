//
//  PlayerCell.m
//  Ratings
//
//  Created by Coming on 12/12/9.
//  Copyright (c) 2012年 Coming. All rights reserved.
//

#import "PlayerCell.h"

@implementation PlayerCell

@synthesize nameLabel=_nameLabel;
@synthesize gameLabel=_gameLabel;
@synthesize headImageView=_headImageView;
@synthesize ratingImageView1=_ratingImageView1;
@synthesize ratingImageView2=_ratingImageView2;
@synthesize ratingImageView3=_ratingImageView3;
@synthesize ratingImageView4=_ratingImageView4;
@synthesize ratingImageView5=_ratingImageView5;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
