//
//  TDSAppDelegate.h
//  tabBarController
//
//  Created by kentaro terada on 2014/09/07.
//  Copyright (c) 2014年 kentaro.terada. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TDSAppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UITabBarController *tabBarController;

@end
