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

@property (weak, nonatomic) IBOutlet UIBarButtonItem *playBarItem;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *ffwdBarItem;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *rewindBarItem;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (weak, nonatomic) IBOutlet UIToolbar *toolbar;

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
