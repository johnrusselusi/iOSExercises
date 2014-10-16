//
//  TableViewController.m
//  UIElements
//
//  Created by John Russel Usi on 10/16/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "TableViewController.h"
#import "ButtonViewController.h"
#import "ControlViewController.h"
#import "TextViewController.h"
#import "PickerViewController.h"
#import "ImageViewController.h"


@interface TableViewController ()

@property (nonatomic, strong) NSArray *viewControllers;

@end

@implementation TableViewController

- (void)viewDidLoad{

  [super viewDidLoad];
  
  self.title = @"Main View Controller";
  
  [self.tableView registerClass:[UITableViewCell class]
         forCellReuseIdentifier:@"UITableViewCell"];
  
  self.viewControllers = [NSArray arrayWithObjects:[ButtonViewController description],
                          [ControlViewController description],
                          [TextViewController description],
                          [PickerViewController description],
                          [ImageViewController description],
                          nil];
  
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath{

  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"
                                                          forIndexPath:indexPath];
  
  cell.textLabel.text = self.viewControllers[indexPath.row];
  
  return cell;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

  if (indexPath.row == 0) {
    
    ButtonViewController *bvc = [[ButtonViewController alloc]init];
    bvc.title = @"UIButton";
    [self.navigationController pushViewController:bvc animated:YES];
  } else if (indexPath.row == 1) {
  
    ControlViewController *cvc = [[ControlViewController alloc]init];
    cvc.title = @"UIControl";
    [self.navigationController pushViewController:cvc animated:YES];
  } else if (indexPath.row == 2) {
  
    TextViewController *tvc = [[TextViewController alloc]init];
    tvc.title = @"UITextView";
    [self.navigationController pushViewController:tvc animated:YES];
  } else if (indexPath.row == 3) {
  
    PickerViewController *pvc = [[PickerViewController alloc]init];
    pvc.title = @"UIPicker";
    [self.navigationController pushViewController:pvc animated:YES];
  } else if (indexPath.row == 4) {
  
    ImageViewController *ivc = [[ImageViewController alloc]init];
    ivc.title = @"UIImageView";
    [self.navigationController pushViewController:ivc animated:YES];
  }
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section{

  return [self.viewControllers count];
}

- (instancetype)init{

  self = [super initWithStyle:UITableViewStylePlain];
  return self;
}

- (instancetype)initWithStyle:(UITableViewStyle)style{

  return [self init];
}

@end
