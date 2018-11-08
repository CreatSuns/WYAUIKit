//
//  WYAImageView.h
//  WYAUIKit_Example
//
//  Created by 李世航 on 2018/11/7.
//  Copyright © 2018 1228506851@qq.com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WYAImageView : UIImageView

/**
 设置UIImageview样式

 @param frame 位置
 @param imageName 图片名
 @return UIImageview
 */
- (instancetype)initWithFrame:(CGRect)frame ImageName:(NSString * _Nullable)imageName;

/**
 设置UIImageview样式

 @param frame 位置
 @param imageName 图片名
 @param imageContentMode 图片模式
 @return UIImageview
 */
- (instancetype)initWithFrame:(CGRect)frame ImageName:(NSString * _Nullable)imageName ImageContentMode:(UIViewContentMode)imageContentMode;

@end

NS_ASSUME_NONNULL_END
