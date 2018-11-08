//
//  WYAButton.h
//  WYAUIKit_Example
//
//  Created by 李世航 on 2018/11/6.
//  Copyright © 2018 1228506851@qq.com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, WYAButtonType){
    WYAButtonTypeSystem,
};

typedef NS_ENUM(NSInteger, WYAButtonContentType){
    WYAButtonContentTypeSystem, //系统格式
    WYAButtonContentTypeImageLeft, //图片在左，文字在右
    WYAButtonContentTypeImageRight, //图片在右，文字在左
    WYAButtonContentTypeImageTop, // 图片在上，文字在下
    WYAButtonContentTypeImageBottom, //图片在下，文字在上
};

typedef void (^ButtonActionCallBack) (UIButton * button);

IB_DESIGNABLE
@interface WYAButton : UIButton

//@property (nonatomic) IBInspectable  WYAButtonType btnType;
//@property (nonatomic) IBInspectable  UIImage * imageNormal;
//@property (nonatomic) IBInspectable  UIImage * imageRotated;
//@property (nonatomic) IBInspectable  CGFloat imageSize;

@property (nonatomic, readonly) WYAButtonContentType contentType;

/**
 设置UIbutton基本样式

 @param frame 位置
 @param title 标题
 @param titleColor 标题正常状态颜色
 @param titleFont 标题大小
 @return UIbutton
 */
- (instancetype)initWithFrame:(CGRect)frame Title:(NSString * _Nullable)title TitleColor:(UIColor * _Nullable)titleColor TitleFont:(CGFloat)titleFont;

/**
 设置UIbutton基本样式（设置标题高亮状态）

 @param frame 位置
 @param titleNormal 标题
 @param titleHightLighted 高亮状态标题
 @param titleNormalColor 标题正常状态颜色
 @param titleHighLightedColor 高亮状态标题颜色
 @param titleFont 标题大小
 @return UIbutton
 */
- (instancetype)initWithFrame:(CGRect)frame TitleNormal:(NSString * _Nullable)titleNormal TitleHighlighted:(NSString *_Nullable)titleHightLighted TitleNormalColor:(UIColor *_Nullable)titleNormalColor TitleHighLightedColor:(UIColor *_Nullable)titleHighLightedColor TitleFont:(CGFloat)titleFont;

/**
 设置UIbutton基本样式（设置标题选中状态）

 @param frame 位置
 @param titleNormal 正常状态标题
 @param titleSelected 选中状态标题
 @param titleNormalColor 正常状态标题颜色
 @param titleSelectedColor 选中状态标题颜色
 @param titleFont 标题大小
 @return UIbutton
 */
- (instancetype)initWithFrame:(CGRect)frame TitleNormal:(NSString * _Nullable)titleNormal TitleSelected:(NSString * _Nullable)titleSelected TitleNormalColor:(UIColor *_Nullable)titleNormalColor TitleSelectedColor:(UIColor *_Nullable)titleSelectedColor TitleFont:(CGFloat)titleFont;

/**
 设置UIbutton基本样式（添加图片内容和对齐方式）

 @param frame 位置
 @param titleNormal 标题
 @param titleNormalColor 正常状态颜色
 @param titleFont 标题大小
 @param imageNormalString 正常状态图片名称
 @param contentType 内容样式
 @return UIbutton
 */
- (instancetype)initWithFrame:(CGRect)frame TitleNormal:(NSString * _Nullable)titleNormal TitleNormalColor:(UIColor *_Nullable)titleNormalColor TitleFont:(CGFloat)titleFont ImageNormalString:(NSString *_Nullable)imageNormalString ButtonContentType:(WYAButtonContentType)contentType;

/**
 设置UIbutton基本样式（添加边框和圆角）

 @param frame 位置
 @param titleNormal 标题
 @param titleNormalColor 正常状态标题颜色
 @param titleFont 标题大小
 @param borderWidth 边框宽度
 @param borderColor 边框颜色
 @param cornerRadius 圆角大小
 @return UIbutton
 */
- (instancetype)initWithFrame:(CGRect)frame TitleNormal:(NSString * _Nullable)titleNormal TitleNormalColor:(UIColor *_Nullable)titleNormalColor TitleFont:(CGFloat)titleFont BorderWidth:(CGFloat)borderWidth BorderColor:(UIColor *)borderColor CornerRadius:(CGFloat)cornerRadius;

/**
 按钮添加事件

 @param action 事件
 @param controlEvents 触发事件方式
 */
- (void)addCallBackAction:(ButtonActionCallBack)action
         forControlEvents:(UIControlEvents)controlEvents;
@end

NS_ASSUME_NONNULL_END


/**
 设置button样式
 
 @param frame 位置
 @param titleNormal 正常状态文字
 @param titleSelected 选中状态文字
 @param titleHightLighted 高亮状态文字
 @param titleNormalColor 正常状态文字颜色
 @param titleSelectedColor 选中状态文字颜色
 @param titleHighLightedColor 高亮文字颜色
 @param titleFont 文字大小
 @param imageNormalString 正常状态图片
 @param imageSelectedString 选中状态图片
 @param backImageNormalString 正常状态背景图片
 @param backImageSelectedString 选中状态背景图片
 @param backGroundColor 背景颜色
 @param contentType WYAButtonContentType
 @param borderWidth 边线宽度
 @param borderColor 边线颜色
 @param cornerRadius 圆角大小
 @param mask 是否裁剪
 */
//- (void)buttonWithFrame:(CGRect)frame
//            TitleNormal:(NSString *)titleNormal
//          TitleSelected:(NSString *)titleSelected
//       TitleHighlighted:(NSString *)titleHightLighted
//       TitleNormalColor:(UIColor *)titleNormalColor
//     TitleSelectedColor:(UIColor *)titleSelectedColor
//  TitleHighLightedColor:(UIColor *)titleHighLightedColor
//              TitleFont:(CGFloat)titleFont
//      ImageNormalString:(NSString *)imageNormalString
//    ImageSelectedString:(NSString *)imageSelectedString
//  BackImageNormalString:(NSString *)backImageNormalString
//BackImageSelectedString:(NSString *)backImageSelectedString
//        BackGroundColor:(UIColor *)backGroundColor
//      ButtonContentType:(WYAButtonContentType)contentType
//            BorderWidth:(CGFloat)borderWidth
//            BorderColor:(UIColor *)borderColor
//           CornerRadius:(CGFloat)cornerRadius
//          MasksToBounds:(BOOL)mask;
