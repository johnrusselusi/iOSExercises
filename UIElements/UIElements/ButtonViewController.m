//
//  ButtonViewController.m
//  UIElements
//
//  Created by John Russel Usi on 10/16/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "ButtonViewController.h"

@interface ButtonViewController ()

@property (retain, nonatomic) IBOutlet UILabel *textLabel;
@property (retain, nonatomic) IBOutlet UIButton *standardButton;
@property (retain, nonatomic) IBOutlet UIButton *customButton;


@end

@implementation ButtonViewController

- (instancetype)init{

    self = [super init];
    self.tabBarItem.title = [UIButton description];
  
    return self;
}

- (IBAction)customButtonPressed:(id)sender {
  
    self.textLabel.text = @"Custom Button Pressed";
}

- (IBAction)standardButtonPressed:(id)sender {
  
    self.textLabel.text = @"Standard Button Pressed";
}

- (void)dealloc{

    [_textLabel release];
    _textLabel = nil;
    
    [_standardButton release];
    _standardButton = nil;
    
    [_customButton release];
    _customButton = nil;
    
    [super dealloc];
}

@end
