//
//  ColorViewController.m
//  MVCPattern
//
//  Created by John Russel Usi on 10/15/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "ColorViewController.h"
#import "DetailsViewController.h"
#import "Color.h"

@implementation ColorViewController

- (instancetype)init{

  self = [super initWithStyle:UITableViewStylePlain];
  if (self) {
    
    UINavigationItem *navItem = self.navigationItem;
    navItem.title = @"ColorViewController";
  }
  
  return self;
}

- (instancetype)initWithStyle:(UITableViewStyle)style{

  return [self init];
}

- (void)viewDidLoad{
  
  [super viewDidLoad];
  
  _colors = [[NSMutableArray alloc]init];
  
  for (int i = 0; i < 3; i++) {
    
    Color *color = [[Color alloc]init];
    
    if (i == 0) {
      
      color.name = @"Red";
      color.information = @"This is color Red";
    } else if (i == 1) {
      
      color.name = @"Green";
      color.information = @"This is color Green";
    } else if (i == 2) {
      
      color.name = @"Blue";
      color.information = @"This is color Blue";
    }
    
    [_colors addObject:color];
  }
  
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section{
  
  return [_colors count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath{
  
  UITableViewCell *cell =
  [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault
                        reuseIdentifier:@"UITableViewCell"];
  
  Color *color = _colors[indexPath.row];
  
  cell.textLabel.text = [color description];
  
  return cell;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
  
  DetailsViewController *dvc = [[DetailsViewController alloc]init];
  
  Color *selectedColor = _colors[indexPath.row];
  dvc.color = selectedColor;
  
  [self.navigationController pushViewController:dvc animated:YES];
}


@end
