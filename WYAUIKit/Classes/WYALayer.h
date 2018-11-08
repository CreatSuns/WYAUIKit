//
//  WYALayer.h
//  WYAUIKit_Example
//
//  Created by 李世航 on 2018/11/6.
//  Copyright © 2018 1228506851@qq.com. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

NS_ASSUME_NONNULL_BEGIN

@interface WYALayer : CALayer <UIGestureRecognizerDelegate>

- (instancetype)initWithSuperLayer:(CALayer *)superLayer;
- (instancetype)initWithSuperView:(UIView *)superView;

@end

NS_ASSUME_NONNULL_END
