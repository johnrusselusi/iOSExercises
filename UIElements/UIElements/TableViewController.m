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
#import "SegmentedViewController.h"
#import "ToolbarViewController.h"
#import "TabBarViewController.h"
#import "AlertViewController.h"
#import "ActionSheetViewController.h"


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
                          [SegmentedViewController description],
                          [ToolbarViewController description],
                          [TabBarViewController description],
                          [AlertViewController description],
                          [ActionSheetViewController description],
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
  } else if (indexPath.row == 5) {
  
    SegmentedViewController *svc = [[SegmentedViewController alloc]init];
    svc.title = @"UISegmentedControl";
    [self.navigationController pushViewController:svc animated:YES];
  } else if (indexPath.row == 6) {
  
    ToolbarViewController *tvc = [[ToolbarViewController alloc]init];
    tvc.title = @"UIToolbar";
    [self.navigationController pushViewController:tvc animated:YES];
  } else if (indexPath.row == 7) {
  
    TabBarViewController *tvc = [[TabBarViewController alloc]init];
    tvc.title = @"UITabBar";
    [self.navigationController pushViewController:tvc animated:YES];
  } else if (indexPath.row == 8) {
  
    AlertViewController *avc = [[AlertViewController alloc]init];
    avc.title = @"Alert View Controller";
    [self.navigationController pushViewController:avc animated:YES];
  } else if (indexPath.row == 9) {
  
    ActionSheetViewController *avc = [[ActionSheetViewController alloc]init];
    avc.title = @"UIActionSheet";
    [self.navigationController pushViewController:avc animated:YES];
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
