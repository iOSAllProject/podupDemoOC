//
//  PopUpView.h
//  podupDemo
//
//  Created by OSXVN on 8/24/16.
//  Copyright © 2016 XUANVINHTD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PopUpView : UIView
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UILabel *lable1;
-(PopUpView *) init:(CGRect)frame;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *label3;
-(void) showView;
-(void) hideView;

@end
