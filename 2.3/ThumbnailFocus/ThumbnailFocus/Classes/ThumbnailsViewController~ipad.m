//
//  ThumbnailsViewController~ipad.m
//  ThumbnailFocus
//
//  Created by kentaro terada on 2014/06/17.
//  Copyright (c) 2014年 鄭 基旭. All rights reserved.
//

#import "ThumbnailsViewController~ipad.h"

@interface ThumbnailsViewController_ipad ()
@property (nonatomic,retain) IBOutletCollection UIImageView *imageView;
@property (strong, nonatomic) FocusManager *focusManager;
@end

@implementation ThumbnailsViewController_ipad

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
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

@end
