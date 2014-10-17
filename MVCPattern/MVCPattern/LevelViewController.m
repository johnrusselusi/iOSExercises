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
  
  [self.tableView registerClass:[UITableViewCell class]
         forCellReuseIdentifier:@"UITableViewCell"];

  NSString *filePath = [[NSBundle mainBundle]pathForResource:@"Items" ofType:@"plist"];
  NSDictionary *dict = [[NSDictionary alloc]initWithContentsOfFile:filePath];
  NSArray *array = [NSArray arrayWithArray:[dict objectForKey:@"itemCategory"]];
  
  NSArray *filteredArray = [array filteredArrayUsingPredicate:
                            [NSPredicate predicateWithFormat:@"itemCategory == %@", self.category]];
  
  for (int i = 0; i < [filteredArray count]; i++) {
    
    NSDictionary *d = [filteredArray objectAtIndex:i];
    ItemModel *item = [[ItemModel alloc]initWithDictionary:d];
    [self.items addObject:item];
  }
  NSLog(@"%@", dict);
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath{

  UITableViewCell *cell =
  [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"
                                  forIndexPath:indexPath];
  NSDictionary *cellIdentifier = [self.items objectAtIndex:indexPath.row];
  cell.textLabel.text = [NSString stringWithFormat:@"%@",[cellIdentifier objectForKey:@"itemTitle"]];
  return cell;
}

- (instancetype)init{

  self = [super initWithStyle:UITableViewStylePlain];
  return self;
}

- (instancetype)initWithStyle:(UITableViewStyle)style{

  return [self init];
}

@end
