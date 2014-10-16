//
//  MainViewController.m
//  MVCPattern
//
//  Created by John Russel Usi on 10/15/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "MainViewController.h"
#import "LevelViewController.h"

@implementation MainViewController

- (void)viewDidLoad{

  [super viewDidLoad];
  
  self.title = @"MVC";
  
  [self.tableView registerClass:[UITableViewCell class]
         forCellReuseIdentifier:@"UITableViewCell"];
  
  self.categories = [[NSMutableArray alloc]init];
  
  [self.categories addObject:[NSDictionary dictionaryWithObject:@"Letter" forKey:@"Title"]];
  [self.categories addObject:[NSDictionary dictionaryWithObject:@"Number" forKey:@"Title"]];
  [self.categories addObject:[NSDictionary dictionaryWithObject:@"Food" forKey:@"Title"]];
  
  }

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath{

  UITableViewCell *cell =
  [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"
                                  forIndexPath:indexPath];
  NSDictionary *cellIdentifier = [self.categories objectAtIndex:indexPath.row];
  cell.textLabel.text = [NSString stringWithFormat:@"%@",[cellIdentifier objectForKey:@"Title"]];
  
  return cell;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

  LevelViewController *lvc = [[LevelViewController alloc]init];
  NSDictionary *levelViewTitle = [self.categories objectAtIndex:indexPath.row];
  
  lvc.category = [NSString stringWithFormat:@"%@", [levelViewTitle objectForKey:@"Title"]];
  
  [self.navigationController pushViewController:lvc animated:YES];
}

- (NSInteger)tableView:(UITableView *)tableView
  numberOfRowsInSection:(NSInteger)section{
  
  return [self.categories count];
}

- (instancetype)init{

  self = [super initWithStyle:UITableViewStylePlain];
  return self;
}

- (instancetype)initWithStyle:(UITableViewStyle)style{

  return [self init];
}

@end
