//
//  ActionSheetViewController.m
//  UIElements
//
//  Created by John Russel Usi on 10/17/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "ActionSheetViewController.h"

@interface ActionSheetViewController () <UIActionSheetDelegate>

@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation ActionSheetViewController

- (IBAction)buttonPressed:(id)sender {
  
    UIActionSheet *actionSheet = [[UIActionSheet alloc]initWithTitle:nil
                                                          delegate:self
                                                 cancelButtonTitle:@"Cancel"
                                            destructiveButtonTitle:@"Delete"
                                                 otherButtonTitles:@"Save", nil];
  
    actionSheet.delegate = self;
  
    [actionSheet showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{

    self.textLabel.text = [NSString stringWithFormat:@"%@", [actionSheet buttonTitleAtIndex:buttonIndex]];
}

@end
