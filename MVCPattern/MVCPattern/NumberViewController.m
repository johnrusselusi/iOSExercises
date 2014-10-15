//
//  NumberViewController.m
//  MVCPattern
//
//  Created by John Russel Usi on 10/15/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "NumberViewController.h"
#import "DetailsViewController.h"
#import "Number.h"

@implementation NumberViewController

- (instancetype)init{
  
  self = [super initWithStyle:UITableViewStylePlain];
  if (self) {
    
    UINavigationItem *navItem = self.navigationItem;
    navItem.title = @"NumberViewController";
  }
  
  return self;
}

- (instancetype)initWithStyle:(UITableViewStyle)style{
  
  return [self init];
}

- (void)viewDidLoad{
  
  [super viewDidLoad];
  
  _numbers = [[NSMutableArray alloc]init];
  
  for (int i = 0; i < 3; i++) {
    
    Number *number = [[Number alloc]init];
    
    if (i == 0) {
      
      number.character = @"1";
      number.information = @"First number";
    } else if (i == 1) {
      
      number.character = @"2";
      number.information = @"Second number";
    } else if (i == 2) {
      
      number.character = @"3";
      number.information = @"Third";
    }
    
    [_numbers addObject:number];
  }
  
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section{
  
  return [_numbers count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath{
  
  UITableViewCell *cell =
  [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault
                        reuseIdentifier:@"UITableViewCell"];
  
  Number *number = _numbers[indexPath.row];
  
  cell.textLabel.text = [number description];
  
  return cell;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
  
  DetailsViewController *dvc = [[DetailsViewController alloc]init];
  
  Number *selectedNumber = _numbers[indexPath.row];
  dvc.number = selectedNumber;
  [self.navigationController pushViewController:dvc animated:YES];
}


@end
