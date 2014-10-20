//
//  WebViewController.m
//  UIElements
//
//  Created by John Russel Usi on 10/17/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController () <NSURLConnectionDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (nonatomic, strong) NSMutableData *responseData;

@end

@implementation WebViewController

- (void)viewDidLoad{
  
  [super viewDidLoad];
  void (^loadRequest)(void) = ^{
  NSURL *url = [NSURL URLWithString:@"http://zomato.com"];
  NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                         cachePolicy:NSURLCacheStorageNotAllowed
                                                     timeoutInterval:20.0];
  
  __unused NSURLConnection *conn = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    
  [self.webView loadRequest:request];
  };
  
  loadRequest();
}

- (void)connection:(NSURLConnection *)connection
  didFailWithError:(NSError *)error{

  connection = nil;
  
  UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Connection Error"
                                                     message:[NSString stringWithFormat:@"%@", [error localizedDescription]]
                                                    delegate:nil
                                           cancelButtonTitle:@"OK"
                                           otherButtonTitles:nil];
  
  [alertView show];
}

@end
