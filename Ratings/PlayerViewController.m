//
//  PlayerViewController.m
//  Ratings
//
//  Created by Coming on 12/12/5.
//  Copyright (c) 2012年 Coming. All rights reserved.
//

#import "linmsdebug.h"
#import "PlayerViewController.h"
#import "PlayerDetailsViewController.h"
#import "Player.h"
#import "PlayerCell.h"

@interface PlayerViewController ()

@end

@implementation PlayerViewController

@synthesize players;
@synthesize headImages;
@synthesize appleImage;

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

    UIImage* headImage;
    
    headImages = [[NSMutableArray alloc] initWithCapacity:10];
    headImage = [UIImage imageNamed:@"lee.png"];
    [headImages addObject:headImage];
    
    headImage = [UIImage imageNamed:@"500.jpg"];
    [headImages addObject:headImage];
    
    headImage = [UIImage imageNamed:@"real.jpg"];
    [headImages addObject:headImage];
    
    appleImage = [UIImage imageNamed:@"Apple logo icon - Aluminum 3232.png"];
    [headImages addObject:headImage];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return [self.players count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    int i;
    PlayerCell *cell = (PlayerCell*)[tableView dequeueReusableCellWithIdentifier:@"PlayerCell"];
    
    Player *player = [self.players objectAtIndex:indexPath.row];
    
    cell.nameLabel.text = player.name;
    cell.gameLabel.text = player.game;
    
    
    if ([player.name isEqualToString:@"李大仁"])
    {
        cell.headImageView.image = [headImages objectAtIndex:0];
        
    }
    else if([player.name isEqualToString:@"伍佰"])
    {
        cell.headImageView.image = [headImages objectAtIndex:1];
    }
    else
    {
        cell.headImageView.image = [headImages objectAtIndex:2];
    }
    
    for(i = 1; i<= 5; i++)
    {
        UIImageView *appleImageView = (UIImageView *) [cell viewWithTag:200+i];
        if ( i <= player.rating )
        {
            appleImageView.image = appleImage;
        }
        else
        {
            appleImageView.image = nil;
        }
    }
    
    
//    headImageView.image = appleImage;
//    headImageView.image = (UIImage*)[headImages objectAtIndex:0];
    
    // Configure the cell...
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [self.players removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}



// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}



// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
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
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"AddPlayer"])
    {

        UINavigationController *navigationController = segue.destinationViewController;
        PlayerDetailsViewController *playerDetailsViewController = [[navigationController viewControllers] objectAtIndex:0];
        playerDetailsViewController.delegate = (id)self;
    }
}


-(void) playerDetailsViewControllerDidCancel: (PlayerDetailsViewController*) controller
{


    [self dismissViewControllerAnimated:YES completion:nil];
    
}

-(void) playerDetailsViewController: (PlayerDetailsViewController*) controller didAddPlayer:(Player*) player
{
    
    [self.players addObject:player];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:[self.players count] - 1 inSection:0];
    [self.tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:indexPath]
                          withRowAnimation:UITableViewRowAnimationAutomatic];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

@end
