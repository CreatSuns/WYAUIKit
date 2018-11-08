//
//  WYATextField.h
//  WYAUIKit_Example
//
//  Created by 李世航 on 2018/11/6.
//  Copyright © 2018 1228506851@qq.com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WYATextField : UITextField

/**
 设置WYATextField样式（placeholder）

 @param frame frame
 @param placeHolder 站位字
 @param placeHolderFont 占位字大小
 @param placeHolderColor 占位字颜色
 @return WYATextField
 */
- (instancetype)initWithFrame:(CGRect)frame
                         Text:(NSString *)text
                    TextColor:(UIColor *)textColor
                     TextFont:(CGFloat)textFont
                  PlaceHolder:(NSString *)placeHolder
              PlaceHolderFont:(CGFloat)placeHolderFont
             PlaceHolderColor:(UIColor *)placeHolderColor;

/**
 设置WYATextField样式（placeholder，左侧视图）

 @param frame frame
 @param placeHolder 占位字
 @param placeHolderFont 占位字大小
 @param placeHolderColor 占位字颜色
 @param leftView 左侧视图
 @param leftViewModel 左侧视图样式
 @return WYATextField
 */
- (instancetype)initWithFrame:(CGRect)frame
                         Text:(NSString *)text
                    TextColor:(UIColor *)textColor
                     TextFont:(CGFloat)textFont
                  PlaceHolder:(NSString *)placeHolder
              PlaceHolderFont:(CGFloat)placeHolderFont
             PlaceHolderColor:(UIColor *)placeHolderColor
                     LeftView:(UIView *)leftView
                LeftViewModel:(UITextFieldViewMode)leftViewModel;

/**
 设置WYATextField样式（placeholder，清除按钮）

 @param frame frame
 @param placeHolder 占位字
 @param placeHolderFont 占位字大小
 @param placeHolderColor 占位字颜色
 @param showClearButton 是否显示清除按钮
 @param clearButtonModel 清除按钮样式
 @return WYATextField
 */
- (instancetype)initWithFrame:(CGRect)frame
                         Text:(NSString *)text
                    TextColor:(UIColor *)textColor
                     TextFont:(CGFloat)textFont
                  PlaceHolder:(NSString *)placeHolder
              PlaceHolderFont:(CGFloat)placeHolderFont
             PlaceHolderColor:(UIColor *)placeHolderColor
              ShowClearButton:(BOOL)showClearButton
             ClearButoonModel:(UITextFieldViewMode)clearButtonModel;

@property (nonatomic, assign) BOOL    needBottomLine;

@end

NS_ASSUME_NONNULL_END
