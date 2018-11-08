//
//  WYALabel.h
//  WYAUIKit_Example
//
//  Created by 李世航 on 2018/11/7.
//  Copyright © 2018 1228506851@qq.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <YYText/YYText.h>

NS_ASSUME_NONNULL_BEGIN

//typedef NS_ENUM(NSInteger, WYALabelType){
//    WYALabelTypeSystem, //系统的UIlabel
//    WYALabelTypeCustom, //YYLabel
//};

typedef NS_ENUM(NSInteger, WYALabelAlignType){
    WYALabelAlignTypeTop, //居上 (当为UIlabel时，该项无效)
    WYALabelAlignTypeBottom, //居下 (当为UIlabel时，该项无效)
    WYALabelAlignTypeLeft, // 居左
    WYALabelAlignTypeRight, // 居右
    WYALabelAlignTypeCenter
};

IB_DESIGNABLE //添加该字段可以在xib中拖拽设置
@interface WYALabel : UILabel

/**
 初始化UIlabel设置样式(基本样式)

 @param frame 位置
 @param title 标题
 @param titleFont 标题大小
 @param titleColor 标题颜色
 @param textAlign 标题位置
 @return UIlabel
 */
- (instancetype)initWithFrame:(CGRect)frame Title:(NSString *)title TitleFont:(CGFloat)titleFont TitleColor:(UIColor *)titleColor TextAlign:(WYALabelAlignType)textAlign;

/**
 初始化UIlabel设置样式（添加背景颜色）

 @param frame 位置
 @param title 标题
 @param titleFont 标题大小
 @param titleColor 标题颜色
 @param textAlign 标题位置
 @param backGroundColor 背景颜色
 @return UIlabel
 */
- (instancetype)initWithFrame:(CGRect)frame Title:(NSString *)title TitleFont:(CGFloat)titleFont TitleColor:(UIColor *)titleColor TextAlign:(WYALabelAlignType)textAlign BackGroundColor:(UIColor *)backGroundColor;

/**
 初始化UIlabel设置样式（添加背景颜色和边框样式）

 @param frame 位置
 @param title 标题
 @param titleFont 标题大小
 @param titleColor 标题颜色
 @param textAlign 标题位置
 @param backGroundColor 背景颜色
 @param borderWidth 边框宽度
 @param borderColor 边框颜色
 @return UIlabel
 */
- (instancetype)initWithFrame:(CGRect)frame Title:(NSString *)title TitleFont:(CGFloat)titleFont TitleColor:(UIColor *)titleColor TextAlign:(WYALabelAlignType)textAlign BackGroundColor:(UIColor *)backGroundColor BorderWidth:(CGFloat)borderWidth BorderColor:(UIColor *)borderColor;

/**
 初始化UIlabel设置样式（添加背景颜色和圆角样式）

 @param frame 位置
 @param title 标题
 @param titleFont 标题大小
 @param titleColor 标题颜色
 @param textAlign 标题位置
 @param backGroundColor 背景颜色
 @param cornerRadius 圆角大小
 @return UIlabel
 */
- (instancetype)initWithFrame:(CGRect)frame Title:(NSString *)title TitleFont:(CGFloat)titleFont TitleColor:(UIColor *)titleColor TextAlign:(WYALabelAlignType)textAlign BackGroundColor:(UIColor *)backGroundColor CornerRadius:(CGFloat)cornerRadius;

/**
 初始化UIlabel设置样式（添加背景颜色和边框样式、圆角样式）

 @param frame 位置
 @param title 标题
 @param titleFont 标题大小
 @param titleColor 标题颜色
 @param textAlign 标题位置
 @param backGroundColor 背景颜色
 @param borderWidth 边框宽度
 @param borderColor 边框颜色
 @param cornerRadius 圆角大小
 @return UIlabel
 */
- (instancetype)initWithFrame:(CGRect)frame Title:(NSString *)title TitleFont:(CGFloat)titleFont TitleColor:(UIColor *)titleColor TextAlign:(WYALabelAlignType)textAlign BackGroundColor:(UIColor *)backGroundColor BorderWidth:(CGFloat)borderWidth BorderColor:(UIColor *)borderColor CornerRadius:(CGFloat)cornerRadius;


/**
 设置YYlabel

 @param frame 位置
 @param title 标题
 @param titleFont 字体大小
 @param titleColor 字体颜色
 @param alignType 对齐方式
 @param backGroundColor 背景颜色
 @param borderWidth 边线宽度
 @param borderColor 边线颜色
 @param cornerRadius 圆角大小
 @param mask 是否裁剪
 @return YYLabel
 */
+ (YYLabel *)labelForYYLabelWithFrame:(CGRect)frame
                                Title:(NSString *)title
                            TitleFont:(CGFloat)titleFont
                           TitleColor:(UIColor *)titleColor
                           TitleAlign:(WYALabelAlignType)alignType
                      BackGroundColor:(UIColor *)backGroundColor
                          BorderWidth:(CGFloat)borderWidth
                          BorderColor:(UIColor *)borderColor
                         CornerRadius:(CGFloat)cornerRadius;

@end

NS_ASSUME_NONNULL_END



/**
 设置UILabel
 
 @param frame 位置
 @param title 标题
 @param titleFont 标题大小
 @param titleColor 字体颜色
 @param alignType 对齐方式
 @param backGroundColor 背景颜色
 @param borderWidth 边线宽度
 @param borderColor 边线颜色
 @param cornerRadius 圆角大小
 @param mask 是否裁剪
 */
//-(void)labelWithFrame:(CGRect)frame
//                Title:(NSString *)title
//            TitleFont:(CGFloat)titleFont
//           TitleColor:(UIColor *)titleColor
//           TitleAlign:(WYALabelAlignType)alignType
//      BackGroundColor:(UIColor *)backGroundColor
//          BorderWidth:(CGFloat)borderWidth
//          BorderColor:(UIColor * _Nullable)borderColor
//         CornerRadius:(CGFloat)cornerRadius
//        MasksToBounds:(BOOL)mask;
