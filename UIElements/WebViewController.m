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
  
  NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"http://zomato.com"]
                                                         cachePolicy:NSURLCacheStorageNotAllowed
                                                     timeoutInterval:20.0];
  request.HTTPMethod = @"POST";
  [request setValue:@"application/xml; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
  
  NSString *stringData = @"some data";
  NSData *requestBodyData = [stringData dataUsingEncoding:NSUTF8StringEncoding];
  request.HTTPBody = requestBodyData;
  
  [self.webView loadRequest:request];
  
  __unused NSURLConnection *conn = [[NSURLConnection alloc] initWithRequest:request delegate:self];
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
