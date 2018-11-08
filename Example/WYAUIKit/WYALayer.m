//
//  WYALayer.m
//  WYAUIKit_Example
//
//  Created by 李世航 on 2018/11/6.
//  Copyright © 2018 1228506851@qq.com. All rights reserved.
//

#import "WYALayer.h"
#import "WYAGestureRecognizer.h"
@interface WYALayer ()<WYATouchGestureRecognizerDelegate,UIGestureRecognizerDelegate>

@property (nonatomic, strong) CALayer * superLayer;
@property (nonatomic, strong) UIView * superView;
@end

@implementation WYALayer

- (instancetype)initWithSuperLayer:(CALayer *)superLayer
{
    self = [super init];
    if (self) {
        _superLayer = superLayer;
        [_superLayer addSublayer:self];
    }
    return self;
}

- (instancetype)initWithSuperView:(UIView *)superView
{
    self = [super init];
    if (self) {
        _superView = superView;
        _superLayer = superView.layer;
        self.opacity = 1;
        WYAGestureRecognizer * gesture = [[WYAGestureRecognizer alloc]init];
        gesture.wyaTouchDelegate = self;
        gesture.delegate = self;
        [_superView addGestureRecognizer:gesture];
        [_superLayer addSublayer:self];
//        [CATransaction setDisableActions:true];
//        self.frame = _superLayer.bounds;
//        [CATransaction commit];
        
    }
    return self;
}

#pragma mark WYATouchGestureRecognizerDelegate
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *_Nullable)event
{
    [self startAnimation];
}
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *_Nullable)event
{
    
}
- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *_Nullable)event
{
    
}
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *_Nullable)event
{
    
}

#pragma mark UIGestureRecognizerDelegate
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer
shouldRecognizeSimultaneouslyWithGestureRecognizer:
(UIGestureRecognizer *)otherGestureRecognizer {
    return YES;
}

-(void)startAnimation{
    
    CABasicAnimation * opacityAnimation = [CABasicAnimation animationWithKeyPath:@"shadowOpacity"];
    opacityAnimation.fromValue = [NSNumber numberWithFloat:0.0];
    opacityAnimation.toValue = [NSNumber numberWithFloat:1.0];
    
    CABasicAnimation *offsetAnimation =
    [CABasicAnimation animationWithKeyPath:@"shadowOffset"];
    offsetAnimation.fromValue =
    [NSValue valueWithCGSize:CGSizeMake(0, -2.5)];
    offsetAnimation.toValue = [NSValue
                               valueWithCGSize:CGSizeMake(0,
                                                          6.5)];
    
    CAAnimationGroup *groupAnimation = [CAAnimationGroup animation];
    groupAnimation.duration = 0.3f;
    groupAnimation.timingFunction =
    [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    groupAnimation.removedOnCompletion = false;
    groupAnimation.fillMode = kCAFillModeForwards;
    
    groupAnimation.animations =
    [NSArray arrayWithObjects:opacityAnimation, offsetAnimation, nil];
    [_superLayer addAnimation:groupAnimation forKey:@"sharow"];
}

@end
