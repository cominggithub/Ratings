//
//  PlayerDetailsViewController.m
//  Ratings
//
//  Created by Coming on 12/12/9.
//  Copyright (c) 2012年 Coming. All rights reserved.
//

#import "PlayerDetailsViewController.h"


@interface PlayerDetailsViewController ()

@end

@implementation PlayerDetailsViewController

@synthesize delegate;


-(IBAction) cancel:(id)sender
{

    [self.delegate playerDetailsViewControllerDidCancel:self];
}

-(IBAction) done:(id)sender
{
    
    Player *player  = [[Player alloc] init];
    player.name     = self.nameTextField.text;
    player.game     = @"天天開心";
    player.rating   = 1;
    [self.delegate playerDetailsViewController:self didAddPlayer:player];
    
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
    
    if (indexPath.section == 0)
        [self.nameTextField becomeFirstResponder];
        
}



- (void)viewDidUnload {

    [self setNameTextField:nil];
    [super viewDidUnload];
}
@end
