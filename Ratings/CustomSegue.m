//
//  CustomSegue.m
//  Ratings
//
//  Created by Coming on 12/12/9.
//  Copyright (c) 2012年 Coming. All rights reserved.
//

#import "CustomSegue.h"
#import "linmsdebug.h"

@implementation CustomSegue

-(void) perform
{
    
    UIViewController* src = [self sourceViewController];
    UIViewController* dest = [self destinationViewController];
    static int transitionMode = 0;
    switch (transitionMode%4)
    {
        case 0:
            linmspl();
            src.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
            dest.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
            break;
        case 1:
            linmspl();
            src.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            dest.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            break;
        case 2:
            linmspl();
            src.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
            dest.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
            break;
        default:
            linmspl();
            src.modalTransitionStyle = UIModalTransitionStylePartialCurl;
            dest.modalTransitionStyle = UIModalTransitionStylePartialCurl;
            break;
    }
    
    transitionMode++;
    [[self sourceViewController] presentModalViewController:[self destinationViewController] animated:YES];
}
@end
