//
//  LevelViewController.m
//  MVCPattern
//
//  Created by John Russel Usi on 10/16/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "LevelViewController.h"
#import "DetailViewController.h"
#import "ItemModel.h"

@interface LevelViewController ()

@property (nonatomic, strong) NSString *filePath;
@property (nonatomic, strong) NSArray *itemsArray;
@property (nonatomic, strong) NSArray *filteredArray;

@property (nonatomic, strong) NSDictionary *itemsDictionary;
@property (nonatomic, strong) NSMutableArray *levelArray;
@property (nonatomic, strong) NSMutableArray *arrayOfItemModel;

@property (nonatomic, strong) NSString *itemTitleForCell;

@end

@implementation LevelViewController

- (void)viewDidLoad{

  [super viewDidLoad];
  
  self.title = self.category;
  self.levelArray = [[NSMutableArray alloc]init];
  self.arrayOfItemModel = [[NSMutableArray alloc]init];
  
  [self.tableView registerClass:[UITableViewCell class]
         forCellReuseIdentifier:@"UITableViewCell"];
  
  self.filePath = [[NSBundle mainBundle]pathForResource:@"Items" ofType:@"plist"];
  self.itemsArray = [[NSArray alloc]initWithContentsOfFile:self.filePath];
  self.filteredArray = [self.itemsArray filteredArrayUsingPredicate:
                            [NSPredicate predicateWithFormat:@"itemCategory == %@", self.category]];
  
  for (int i = 0; i < [self.filteredArray count]; i++) {
    
    self.itemsDictionary = [self.filteredArray objectAtIndex:i];
    
    ItemModel *item = [[ItemModel alloc]initWithDictionary:self.itemsDictionary];
    [self.arrayOfItemModel addObject:item];
    
    [self.levelArray addObject:self.itemsDictionary];
  }
  NSLog(@"%@", self.arrayOfItemModel);
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath{

  UITableViewCell *cell =
  [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"
                                  forIndexPath:indexPath];
  NSDictionary *cellIdentifier = [self.levelArray objectAtIndex:indexPath.row];
  
  cell.textLabel.text = [NSString stringWithFormat:@"%@", [cellIdentifier objectForKey:@"itemName"]];
  
  return cell;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

  DetailViewController *dvc = [[DetailViewController alloc]init];
  
  dvc.item = [self.arrayOfItemModel objectAtIndex:indexPath.row];
  
  [self.navigationController pushViewController:dvc animated:YES];
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section{

  return [self.filteredArray count];
}

- (instancetype)init{

  self = [super initWithStyle:UITableViewStylePlain];
  return self;
}

- (instancetype)initWithStyle:(UITableViewStyle)style{

  return [self init];
}

@end
