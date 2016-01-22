//
//  ViewController.m
//  McStock
//
//  Created by Yiqiao on 16/1/22.
//  Copyright © 2016年 Yiqiao. All rights reserved.
//

#import "ViewController.h"
#import "SiteViewController.h"
#import "RouteViewController.h"
#import "ExchangeViewController.h"
#import "BaseNacController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)CreateViewController{

    SiteViewController *site = [[SiteViewController alloc]init];
    RouteViewController *route = [[RouteViewController alloc]init];
    ExchangeViewController *exchange = [[ExchangeViewController alloc]init];
    
    NSArray *ViewControllerArray = @[site, route, exchange];
    NSMutableArray *NavArray = [[NSMutableArray alloc]init];
    
    
    for (int i = 0; i<ViewControllerArray.count; i++) {
        BaseNacController *nav = [[BaseNacController alloc]initWithRootViewController:ViewControllerArray[i]];
        [NavArray addObject:nav];
        
    }
    
    self.viewControllers = (NSArray *)NavArray;
    
}

- (void)CreateTabBar{

}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self CreateViewController];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
