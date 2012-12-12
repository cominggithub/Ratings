//
//  main.m
//  Ratings
//
//  Created by Coming on 12/12/5.
//  Copyright (c) 2012年 Coming. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"

int main(int argc, char *argv[])
{
    @try
    {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
    }@catch (NSException* e) {
        NSLog(@"%@: %@", [e name], [e reason]);
        
    }
    
}
