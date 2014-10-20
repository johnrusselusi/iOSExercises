//
//  ToolbarViewController.m
//  UIElements
//
//  Created by John Russel Usi on 10/16/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "ToolbarViewController.h"

static NSString *const PLAY_LABEL = @"Play";
static NSString *const FFWD_LABEL = @"Fast Forward";
static NSString *const REWIND_LABEL = @"Rewind";

@interface ToolbarViewController ()

@property (retain, nonatomic) IBOutlet UIBarButtonItem *playBarItem;
@property (retain, nonatomic) IBOutlet UIBarButtonItem *ffwdBarItem;
@property (retain, nonatomic) IBOutlet UIBarButtonItem *rewindBarItem;
@property (retain, nonatomic) IBOutlet UILabel *textLabel;
@property (retain, nonatomic) IBOutlet UIToolbar *toolbar;

@end

@implementation ToolbarViewController

- (IBAction)playPressed:(id)sender {
  
    self.textLabel.text = PLAY_LABEL;
}

- (IBAction)ffwdPressed:(id)sender {
  
    self.textLabel.text = FFWD_LABEL;
}

- (IBAction)rewindPressed:(id)sender {
  
    self.textLabel.text = REWIND_LABEL;
}
@end
