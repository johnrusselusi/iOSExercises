//
//  DetailsViewController.m
//  MVCPattern
//
//  Created by John Russel Usi on 10/15/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "DetailsViewController.h"
#import "LetterViewController.h"
#import "NumberViewController.h"
#import "ColorViewController.h"
#import "Number.h"
#import "Color.h"
#import "Letter.h"

@interface DetailsViewController ()

@property (nonatomic, weak) IBOutlet UILabel *itemTitle;
@property (nonatomic, weak) IBOutlet UILabel *itemInformation;
@property (nonatomic, weak) IBOutlet UILabel *itemType;

@end

@implementation DetailsViewController

- (void)viewWillAppear:(BOOL)animated{

  [super viewWillAppear:animated];
  
  if ([[self.navigationController.viewControllers objectAtIndex:1] isKindOfClass:[LetterViewController class]])
  {
    Letter *letter = self.letter;
    
    self.itemTitle.text = letter.character;
    self.itemInformation.text = letter.information;
    self.itemType.text = [Letter description];
  } else if ([[self.navigationController.viewControllers objectAtIndex:1] isKindOfClass:[NumberViewController class]]){
  
    Number *number = self.number;
    
    self.itemTitle.text = number.character;
    self.itemInformation.text = number.information;
    self.itemType.text = [Number description];
  } else if ([[self.navigationController.viewControllers objectAtIndex:1] isKindOfClass:[ColorViewController class]]){
  
    Color *color = self.color;
    
    self.itemTitle.text = color.name;
    self.itemInformation.text = color.information;
    self.itemType.text = [Color description];
  }
 }

@end
