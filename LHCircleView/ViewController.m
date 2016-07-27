//
//  ViewController.m
//  LHCircleView
//
//  Created by bosheng on 16/7/27.
//  Copyright © 2016年 liuhuan. All rights reserved.
//

#import "ViewController.h"
#import "LHCircleView/lhCircleView.h"

@interface ViewController ()
{
    lhCircleView * circleView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    circleView = [[lhCircleView alloc]initWithFrame:CGRectMake(0, 0, 150, 150)];
//    circleView.backgroundColor = [UIColor orangeColor];
    circleView.center = self.view.center;
    [self.view addSubview:circleView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - touch
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    circleView.progressValue = ((CGFloat)(arc4random()%1000))/1000;
}

@end
