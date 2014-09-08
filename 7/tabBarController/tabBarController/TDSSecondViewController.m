//
//  TDSSecondViewController.m
//  tabBarController
//
//  Created by kentaro terada on 2014/09/08.
//  Copyright (c) 2014年 kentaro.terada. All rights reserved.
//

#import "TDSSecondViewController.h"

@interface TDSSecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation TDSSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [[NSNotificationCenter defaultCenter] addObserverForName:@"notificationName"
                                                      object:nil
                                                       queue:[NSOperationQueue mainQueue]
                                                  usingBlock:^(NSNotification *note) {
                                                      NSLog(@"%@", note);
                                                      NSDictionary *userInfo = note.userInfo;
                                                      _label.text = userInfo[@"key"];
                                                  }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)recieveNotification:(NSNotification *)notification
{
    NSDictionary *userInfo = notification.userInfo;
    _label.text = userInfo[@"key"];
}

@end
