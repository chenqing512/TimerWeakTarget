//
//  NextViewController.m
//  TimerWeakTarget
//
//  Created by ChenQing on 17/9/25.
//  Copyright © 2017年 ChenQing. All rights reserved.
//

#import "NextViewController.h"
#import "WeakTarget.h"

@interface NextViewController (){
    NSTimer *timer;
    NSInteger count;
}

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor redColor];
    count=0;
    timer=[NSTimer scheduledTimerWithTimeInterval:1 target:[WeakTarget weakTarget:self] selector:@selector(timerRunloop:) userInfo:nil repeats:YES];
}

-(void)timerRunloop:(id)sender{
    NSLog(@"-----%zd",count++);
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)dealloc{
    [timer invalidate];
    NSLog(@"method=%@",NSStringFromSelector(_cmd));
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
