//
//  ToolbarViewController.m
//  UIElements
//
//  Created by John Russel Usi on 10/16/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "ToolbarViewController.h"

@interface ToolbarViewController ()

@property (weak, nonatomic) IBOutlet UIBarButtonItem *playBarItem;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *ffwdBarItem;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *rewindBarItem;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (weak, nonatomic) IBOutlet UIToolbar *toolbar;

@end

@implementation ToolbarViewController

- (IBAction)playPressed:(id)sender {
  
  self.textLabel.text = @"Play";
}

- (IBAction)ffwdPressed:(id)sender {
  
  self.textLabel.text = @"Fast Forward";
}

- (IBAction)rewindPressed:(id)sender {
  
  self.textLabel.text = @"Rewind";
}
@end
