//
//  ViewController.m
//  podupDemo
//
//  Created by OSXVN on 8/24/16.
//  Copyright © 2016 XUANVINHTD. All rights reserved.
//

#import "ViewController.h"
#import "PopUpView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonpodUp:(id)sender {
    PopUpView* myViewObject = [[PopUpView alloc] init:self.view.frame];
    [self.view addSubview:myViewObject];
    [myViewObject showView];
}

@end
