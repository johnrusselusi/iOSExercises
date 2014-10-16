//
//  LevelViewController.m
//  MVCPattern
//
//  Created by John Russel Usi on 10/16/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "LevelViewController.h"
#import "ItemModel.h"

@implementation LevelViewController

- (void)viewDidLoad{

  [super viewDidLoad];
  self.title = self.category;
  
  NSString *filePath = [[NSBundle mainBundle]pathForResource:@"Items" ofType:@"plist"];
  NSMutableArray *array = [NSArray arrayWithContentsOfFile:filePath];
  
  for (NSString *str in array) {
    
    NSLog(@"--%@", str);
  }
}

- (instancetype)init{

  self = [super initWithStyle:UITableViewStylePlain];
  return self;
}

- (instancetype)initWithStyle:(UITableViewStyle)style{

  return [self init];
}

@end
