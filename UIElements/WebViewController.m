//
//  WebViewController.m
//  UIElements
//
//  Created by John Russel Usi on 10/17/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "WebViewController.h"

static NSString *const URL_STRING = @"http://zomato.com";

@interface WebViewController () <NSURLConnectionDelegate>

@property (retain, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation WebViewController

- (void)viewDidLoad{
  
    [super viewDidLoad];
    void (^loadRequest)(void) = ^{
        NSURL *url = [NSURL URLWithString:URL_STRING];
        NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                         cachePolicy:NSURLCacheStorageNotAllowed
                                                     timeoutInterval:20.0];
        
        
        __unused NSURLConnection *conn = [[[NSURLConnection alloc] initWithRequest:request delegate:self] autorelease];
        
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
    [alertView release];
}

- (void)dealloc{

    [_webView release];
    _webView = nil;
    
    [super dealloc];
}

@end
