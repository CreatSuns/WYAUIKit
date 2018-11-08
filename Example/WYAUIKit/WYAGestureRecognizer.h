//
//  WYAGestureRecognizer.h
//  WYAUIKit_Example
//
//  Created by 李世航 on 2018/11/6.
//  Copyright © 2018 1228506851@qq.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UIKit/UIGraphicsRendererSubclass.h>
NS_ASSUME_NONNULL_BEGIN

@protocol WYATouchGestureRecognizerDelegate <NSObject>
@optional
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *_Nullable)event;
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *_Nullable)event;
- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *_Nullable)event;
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *_Nullable)event;
@end

@interface WYAGestureRecognizer : UIGestureRecognizer
@property (nonatomic, weak)   id <WYATouchGestureRecognizerDelegate> wyaTouchDelegate;
@end

NS_ASSUME_NONNULL_END
