//
//  MainViewController.m
//  MVCPattern
//
//  Created by John Russel Usi on 10/14/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "MainViewController.h"
#import "LetterViewController.h"
#import "NumberViewController.h"
#import "ColorViewController.h"

@interface MainViewController ()

@property (nonatomic, strong) NSArray *classes;

@end

@implementation MainViewController

- (void)viewDidLoad{

  [super viewDidLoad];
  
  _classes = [[NSArray alloc]initWithObjects:@"Letters", @"Numbers", @"Colors", nil];
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section{

  return [_classes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath{

  UITableViewCell *cell =
  [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault
                        reuseIdentifier:@"UITableViewCell"];
  
  cell.textLabel.text = _classes[indexPath.row];
  
  return cell;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

  if (indexPath.row == 0) {
    
    LetterViewController *lvc = [[LetterViewController alloc]initWithStyle:UITableViewStylePlain];
    [self.navigationController pushViewController:lvc animated:YES];
  } else if (indexPath.row == 1){
  
    NumberViewController *nvc = [[NumberViewController alloc]initWithStyle:UITableViewStylePlain];
    [self.navigationController pushViewController:nvc animated:YES];
  } else if (indexPath.row == 2){
  
    ColorViewController *cvc = [[ColorViewController alloc]initWithStyle:UITableViewStylePlain];
    [self.navigationController pushViewController:cvc animated:YES];
  }
}

@end
