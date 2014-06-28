//
//  SVSViewController.m
//  scrollViewSample
//
//  Created by 武田 祐一 on 2013/04/19.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "SVSViewController.h"

static CGRect const kOjisanMovedFrame = {{0, 0}, {300, 300}};

@interface SVSViewController ()

@end

@implementation SVSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:scrollView];
 
    
    UIImage *image = [UIImage imageNamed:@"big_image.jpg"];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, image.size.width, image.size.height)];
    imageView.image = image;
  
    // 起動時に自動的にポジションの移動
    [UIImageView animateWithDuration:1.5
                          delay: 0.5
                        options: UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAllowUserInteraction
                     animations:^{
                         imageView.center = CGPointMake(100, 100);
                     }
         completion:nil];

    [scrollView addSubview:imageView];
    
    scrollView.contentSize = imageView.frame.size;
    
    scrollView.maximumZoomScale = 3.0; // 最大倍率
    scrollView.minimumZoomScale = 0.5; // 最小倍率

    
    scrollView.delegate = self;
    
    //ステータスバーのクリックで、ページトップへの移動を有効化
    scrollView.scrollsToTop = YES;
    
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    NSLog(@"%s", __func__);
    for (UIView *view in scrollView.subviews) {
        if ([view isKindOfClass:[UIImageView class]]) {
            return view;
        }
    }
   
    return nil;
}


- (void)scrollViewDidZoom:(UIScrollView *)scrollView {
    //現在の位置をNSLogで出力
    NSLog(@"%@", NSStringFromCGPoint(scrollView.contentOffset));
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
