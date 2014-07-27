//
//  TDSViewController.m
//  UIWebViewSample
//
//  Created by kentaro terada on 2014/07/21.
//  Copyright (c) 2014年 kentaro.terada. All rights reserved.
//

#import "TDSViewController.h"

@interface TDSViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@property (strong, nonatomic) IBOutlet UIBarButtonItem *backButton;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *forwardButton;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *reloadButton;




@end

@implementation TDSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _webView.delegate = self;
    NSLog(@"%s", __func__);
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://mixi.jp"]];
    
    self.navigationController.toolbarHidden = NO;
    
    NSLog(@"after toolbarhidden = NO");
    
    self.backButton = [[UIBarButtonItem alloc] initWithTitle:@"戻る" style:UIBarButtonItemStyleBordered target:self action:@selector(goBack)];
    self.backButton.enabled = false;
    
    self.forwardButton = [[UIBarButtonItem alloc] initWithTitle:@"進む" style:UIBarButtonItemStyleBordered target:self action:@selector(goForward)];
    self.forwardButton.enabled = false;
    
    self.reloadButton = [[UIBarButtonItem alloc] initWithTitle:@"リロード" style:UIBarButtonItemStyleBordered target:self action:@selector(reload)];
    
    [self setToolbarItems:@[_backButton, _forwardButton, _reloadButton]];
    
    
    [_webView loadRequest:request];
}

- (void)goBack
{
    [_webView goBack];
}

- (void)goForward
{
    [_webView goForward];
}

- (void)reload
{
    [_webView reload];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    _backButton.enabled = [_webView canGoBack];
    _forwardButton.enabled = [_webView canGoForward];
    
    NSString *title = [webView stringByEvaluatingJavaScriptFromString:@"document.title"];
    NSLog(@"%@", title);
    self.title = title;
    
}

@end
