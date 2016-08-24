//
//  PopUpView.m
//  podupDemo
//
//  Created by OSXVN on 8/24/16.
//  Copyright © 2016 XUANVINHTD. All rights reserved.
//

#import "PopUpView.h"

@implementation PopUpView

-(PopUpView *) init:(CGRect)frame {
    PopUpView *result = nil;
    NSArray* elements = [[NSBundle mainBundle] loadNibNamed: NSStringFromClass([self class]) owner:self options: nil];
    for (id anObject in elements)
    {
        if ([anObject isKindOfClass:[self class]])
        {
            result = anObject;
            break;
        }
    }
    result.contentView.layer.cornerRadius = 10;
    result.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.4];
    result.opaque = YES;
    [result setFrame:frame];
    
   
    return result;
}

-(void) showView {
    self.lable1.text = @"chàng thì bé, uống thì yếu mà bày đặt nhậu nhẹt tại ngày đó ngày đoàn tụ gia đình";
    self.label2.text = @"1243432423432432434";
    self.label3.text = @"chàng thì bé, uống thì yếu mà bày đặt nhậu hậu nhẹt tại ngày đó ngày đoàn tụ gia đình";
    self.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.001, 0.001);
    [UIView animateWithDuration:0.3
                     animations:^{
                         self.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.0, 1.0);
                     } completion:^(BOOL finished) {
                         
                     }];
}

-(void) hideView {
    [UIView animateWithDuration:0.5
                     animations:^{
                         self.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.001, 0.001);
                     } completion:^(BOOL finished) {
                         self.hidden = TRUE;
                     }];
}
@end
