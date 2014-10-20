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
#import "WebViewController.h"

static NSString *const CELL_REUSE_IDENTIFIER = @"UITableViewCell";

@interface TableViewController ()

@property (nonatomic, strong) NSArray *viewControllers;

@end

@implementation TableViewController

- (void)viewDidLoad{

    [super viewDidLoad];
  
    self.title = @"Main View Controller";
  
    [self.tableView registerClass:[UITableViewCell class]
           forCellReuseIdentifier:CELL_REUSE_IDENTIFIER];
  
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
                            [WebViewController description],
                            nil];
  
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath{
  
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_REUSE_IDENTIFIER
                                                          forIndexPath:indexPath];
  
    cell.textLabel.text = self.viewControllers[indexPath.row];
  
    return cell;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    if (indexPath.row == 0) {
    
        ButtonViewController *bvc = [[[ButtonViewController alloc]init] autorelease];
        bvc.title = [UIButton description];
        [self.navigationController pushViewController:bvc animated:YES];
        } else if (indexPath.row == 1) {
  
        ControlViewController *cvc = [[[ControlViewController alloc]init] autorelease];
        cvc.title = [UIControl description];
        [self.navigationController pushViewController:cvc animated:YES];
        } else if (indexPath.row == 2) {
  
        TextViewController *tvc = [[[TextViewController alloc]init] autorelease];
        tvc.title = [UITextView description];
        [self.navigationController pushViewController:tvc animated:YES];
        } else if (indexPath.row == 3) {
  
        PickerViewController *pvc = [[[PickerViewController alloc]init] autorelease];
        pvc.title = [UIPickerView description];
        [self.navigationController pushViewController:pvc animated:YES];
        } else if (indexPath.row == 4) {
      
        ImageViewController *ivc = [[[ImageViewController alloc]init]autorelease];
        ivc.title = [UIImageView description];
        [self.navigationController pushViewController:ivc animated:YES];
        } else if (indexPath.row == 5) {
      
        SegmentedViewController *svc = [[[SegmentedViewController alloc]init]autorelease];
        svc.title = [UISegmentedControl description];
        [self.navigationController pushViewController:svc animated:YES];
        } else if (indexPath.row == 6) {
      
        ToolbarViewController *tvc = [[[ToolbarViewController alloc]init]autorelease];
        tvc.title = [UIToolbar description];
        [self.navigationController pushViewController:tvc animated:YES];
        } else if (indexPath.row == 7) {
      
        TabBarViewController *tvc = [[[TabBarViewController alloc]init]autorelease];
        tvc.title = [UITabBar description];
        [self.navigationController pushViewController:tvc animated:YES];
        } else if (indexPath.row == 8) {
      
        AlertViewController *avc = [[[AlertViewController alloc]init]autorelease];
        avc.title = [UIAlertView description];
        [self.navigationController pushViewController:avc animated:YES];
        } else if (indexPath.row == 9) {
      
        ActionSheetViewController *avc = [[[ActionSheetViewController alloc]init]autorelease];
        avc.title = [UIActionSheet description];
        [self.navigationController pushViewController:avc animated:YES];
        } else if (indexPath.row == 10) {
      
        WebViewController *wvc = [[[WebViewController alloc]init]autorelease];
        wvc.title = [UIWebView description];
        [self.navigationController pushViewController:wvc animated:YES];
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
