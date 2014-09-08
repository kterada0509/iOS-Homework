//
//  TDSViewController.m
//  NSUserSample
//
//  Created by kentaro terada on 2014/07/31.
//  Copyright (c) 2014年 kentaro.terada. All rights reserved.
//

#import "TDSViewController.h"

@interface TDSViewController ()
- (IBAction)saveButton:(id)sender;
- (IBAction)ReadButton:(id)sender;
- (IBAction)ReadSettingButton:(id)sender;

@end

@implementation TDSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveButton:(id)sender {
    NSLog(@"pushed saveButton");
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < 10; i ++) {
        NSString *string = [NSString stringWithFormat:@"%d", i];
        [array addObject:string];
    }
    [[NSUserDefaults standardUserDefaults] setObject:array forKey:@"array"];
}

- (IBAction)ReadButton:(id)sender {
    NSLog(@"%@", [[NSUserDefaults standardUserDefaults] objectForKey:@"array"]);
}

- (IBAction)ReadSettingButton:(id)sender {
}
@end
