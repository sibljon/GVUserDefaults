//
//  ViewController.m
//  Example
//
//  Created by Kevin Renskers on 19-12-12.
//  Copyright (c) 2012 Gangverk. All rights reserved.
//

#import "ViewController.h"
#import "GVUserDefaults+Properties.h"
#import "CodeTimestamps.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"Should be null:");
    NSLog(@"userName: %@", [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultUserName"]);
    NSLog(@"--------------------");

    NSLog(@"Should be default:");
    NSLog(@"userName: %@", [GVUserDefaults standardUserDefaults].userName);
    NSLog(@"--------------------");

    [[NSUserDefaults standardUserDefaults] setObject:@"test1" forKey:@"NSUserDefaultUserName"];

    NSLog(@"Should all be test1:");
    NSLog(@"userName: %@", [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultUserName"]);
    NSLog(@"userName: %@", [GVUserDefaults standardUserDefaults].userName);
    NSLog(@"--------------------");

    [GVUserDefaults standardUserDefaults].userName = @"Test 2";

    NSLog(@"Should all be test2:");
    NSLog(@"userName: %@", [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultUserName"]);
    NSLog(@"userName: %@", [GVUserDefaults standardUserDefaults].userName);
    NSLog(@"--------------------");

    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"NSUserDefaultUserName"];

    NSLog(@"Should all be default:");
    NSLog(@"userName: %@", [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultUserName"]);
    NSLog(@"userName: %@", [GVUserDefaults standardUserDefaults].userName);
    NSLog(@"--------------------");

    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    NSLog(@"Should all be 123:");
    NSLog(@"integerValue: %i", [GVUserDefaults standardUserDefaults].integerValue);
    NSLog(@"integerValue: %i", [[NSUserDefaults standardUserDefaults] integerForKey:@"NSUserDefaultIntegerValue"]);
    NSLog(@"integerValue OBJECT: %@", [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultIntegerValue"]);
    NSLog(@"--------------------");

    [GVUserDefaults standardUserDefaults].integerValue = 789;

    NSLog(@"Should all be 789:");
    NSLog(@"integerValue: %i", [GVUserDefaults standardUserDefaults].integerValue);
    NSLog(@"integerValue: %i", [[NSUserDefaults standardUserDefaults] integerForKey:@"NSUserDefaultIntegerValue"]);
    NSLog(@"integerValue OBJECT: %@", [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultIntegerValue"]);
    NSLog(@"--------------------");

    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"NSUserDefaultIntegerValue"];

    NSLog(@"Should all be 123:");
    NSLog(@"integerValue: %i", [GVUserDefaults standardUserDefaults].integerValue);
    NSLog(@"integerValue: %i", [[NSUserDefaults standardUserDefaults] integerForKey:@"NSUserDefaultIntegerValue"]);
    NSLog(@"integerValue OBJECT: %@", [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultIntegerValue"]);
    NSLog(@"--------------------");

    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    NSLog(@"Should all be 1:");
    NSLog(@"boolValue: %i", [GVUserDefaults standardUserDefaults].boolValue);
    NSLog(@"boolValue: %i", [[NSUserDefaults standardUserDefaults] integerForKey:@"NSUserDefaultBoolValue"]);
    NSLog(@"boolValue OBJECT: %@", [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultBoolValue"]);
    NSLog(@"--------------------");

    [GVUserDefaults standardUserDefaults].boolValue = NO;

    NSLog(@"Should all be 0:");
    NSLog(@"boolValue: %i", [GVUserDefaults standardUserDefaults].boolValue);
    NSLog(@"boolValue: %i", [[NSUserDefaults standardUserDefaults] integerForKey:@"NSUserDefaultBoolValue"]);
    NSLog(@"boolValue OBJECT: %@", [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultBoolValue"]);
    NSLog(@"--------------------");

    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"NSUserDefaultBoolValue"];

    NSLog(@"Should all be 1:");
    NSLog(@"boolValue: %i", [GVUserDefaults standardUserDefaults].boolValue);
    NSLog(@"boolValue: %i", [[NSUserDefaults standardUserDefaults] integerForKey:@"NSUserDefaultBoolValue"]);
    NSLog(@"boolValue OBJECT: %@", [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultBoolValue"]);
    NSLog(@"--------------------");

    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    NSLog(@"Should all be 12.3:");
    NSLog(@"floatValue: %f", [GVUserDefaults standardUserDefaults].floatValue);
    NSLog(@"floatValue: %f", [[NSUserDefaults standardUserDefaults] floatForKey:@"NSUserDefaultFloatValue"]);
    NSLog(@"floatValue OBJECT: %@", [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultFloatValue"]);
    NSLog(@"--------------------");

    [GVUserDefaults standardUserDefaults].floatValue = 66.6;

    NSLog(@"Should all be 66.6:");
    NSLog(@"floatValue: %f", [GVUserDefaults standardUserDefaults].floatValue);
    NSLog(@"floatValue: %f", [[NSUserDefaults standardUserDefaults] floatForKey:@"NSUserDefaultFloatValue"]);
    NSLog(@"floatValue OBJECT: %@", [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultFloatValue"]);
    NSLog(@"--------------------");

    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"NSUserDefaultFloatValue"];

    NSLog(@"Should all be 12.3:");
    NSLog(@"floatValue: %f", [GVUserDefaults standardUserDefaults].floatValue);
    NSLog(@"floatValue: %f", [[NSUserDefaults standardUserDefaults] floatForKey:@"NSUserDefaultFloatValue"]);
    NSLog(@"floatValue OBJECT: %@", [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultFloatValue"]);
    NSLog(@"--------------------");
}

@end
