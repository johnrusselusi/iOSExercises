//
//  DetailViewController.m
//  MVCPattern
//
//  Created by John Russel Usi on 10/19/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "DetailViewController.h"
#import "ItemModel.h"

@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *itemName;
@property (weak, nonatomic) IBOutlet UILabel *itemDescription;
@property (weak, nonatomic) IBOutlet UILabel *itemCategory;

@end

@implementation DetailViewController

- (void)viewDidLoad{

  [super viewDidLoad];
  
  self.itemName.text = self.item.itemName;
  self.itemDescription.text = self.item.itemInfo;
  self.itemCategory.text = self.item.itemCategory;
  
  NSLog(@"%@", self.item);
}

@end
