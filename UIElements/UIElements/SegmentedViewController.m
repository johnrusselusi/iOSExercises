//
//  SegmentedViewController.m
//  UIElements
//
//  Created by John Russel Usi on 10/16/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "SegmentedViewController.h"

@interface SegmentedViewController ()

@property (retain, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@end

@implementation SegmentedViewController
- (IBAction)segmentedControlClicked:(id)sender {
  
    if (self.segmentedControl.selectedSegmentIndex == 0) {
    
        self.view.backgroundColor = [UIColor redColor];
    } else if (self.segmentedControl.selectedSegmentIndex == 1) {
  
        self.view.backgroundColor = [UIColor greenColor];
    } else if (self.segmentedControl.selectedSegmentIndex == 2){
  
        self.view.backgroundColor = [UIColor blueColor];
    }
}

- (void)dealloc{

    [_segmentedControl release];
    _segmentedControl = nil;
    
    [super dealloc];
}

@end
