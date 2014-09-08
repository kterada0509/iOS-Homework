//
//  TDSFirstViewController.m
//  tabBarController
//
//  Created by kentaro terada on 2014/09/08.
//  Copyright (c) 2014年 kentaro.terada. All rights reserved.
//

#import "TDSFirstViewController.h"

@interface TDSFirstViewController ()

- (IBAction)postNotification:(id)sender;
@end

@implementation TDSFirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)postNotification:(id)sender {
    NSDictionary *dict = @{@"key":@"value"};
    [[NSNotificationCenter defaultCenter] postNotificationName:@"notificationName" object:self userInfo:dict];
}
@end
