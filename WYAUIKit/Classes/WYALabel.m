//
//  WYALabel.m
//  WYAUIKit_Example
//
//  Created by 李世航 on 2018/11/7.
//  Copyright © 2018 1228506851@qq.com. All rights reserved.
//

#import "WYALabel.h"
#import <YYText/YYText.h>
#import "WYAUIKit.h"

@interface WYALabel ()

@end

@implementation WYALabel

- (instancetype)initWithFrame:(CGRect)frame Title:(NSString *)title TitleFont:(CGFloat)titleFont TitleColor:(UIColor *)titleColor TextAlign:(WYALabelAlignType)textAlign
{
    self = [super initWithFrame:frame];
    if (self) {
        [self labelWithFrame:frame Title:title TitleFont:titleFont TitleColor:titleColor TitleAlign:textAlign BackGroundColor:[UIColor clearColor] BorderWidth:0 BorderColor:nil CornerRadius:0];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame Title:(NSString *)title TitleFont:(CGFloat)titleFont TitleColor:(UIColor *)titleColor TextAlign:(WYALabelAlignType)textAlign BackGroundColor:(UIColor *)backGroundColor
{
    self = [super initWithFrame:frame];
    if (self) {
        [self labelWithFrame:frame Title:title TitleFont:titleFont TitleColor:titleColor TitleAlign:textAlign BackGroundColor:backGroundColor BorderWidth:0 BorderColor:nil CornerRadius:0];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame Title:(NSString *)title TitleFont:(CGFloat)titleFont TitleColor:(UIColor *)titleColor TextAlign:(WYALabelAlignType)textAlign BackGroundColor:(UIColor *)backGroundColor BorderWidth:(CGFloat)borderWidth BorderColor:(UIColor *)borderColor
{
    self = [super initWithFrame:frame];
    if (self) {
        [self labelWithFrame:frame Title:title TitleFont:titleFont TitleColor:titleColor TitleAlign:textAlign BackGroundColor:backGroundColor BorderWidth:borderWidth BorderColor:borderColor CornerRadius:0];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame Title:(NSString *)title TitleFont:(CGFloat)titleFont TitleColor:(UIColor *)titleColor TextAlign:(WYALabelAlignType)textAlign BackGroundColor:(UIColor *)backGroundColor CornerRadius:(CGFloat)cornerRadius
{
    self = [super initWithFrame:frame];
    if (self) {
        [self labelWithFrame:frame Title:title TitleFont:titleFont TitleColor:titleColor TitleAlign:textAlign BackGroundColor:backGroundColor BorderWidth:0 BorderColor:nil CornerRadius:cornerRadius];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame Title:(NSString *)title TitleFont:(CGFloat)titleFont TitleColor:(UIColor *)titleColor TextAlign:(WYALabelAlignType)textAlign BackGroundColor:(UIColor *)backGroundColor BorderWidth:(CGFloat)borderWidth BorderColor:(UIColor *)borderColor CornerRadius:(CGFloat)cornerRadius
{
    self = [super initWithFrame:frame];
    if (self) {
        [self labelWithFrame:frame Title:title TitleFont:titleFont TitleColor:titleColor TitleAlign:textAlign BackGroundColor:backGroundColor BorderWidth:borderWidth BorderColor:borderColor CornerRadius:cornerRadius];
    }
    return self;
}

-(void)labelWithFrame:(CGRect)frame
                Title:(NSString *)title
            TitleFont:(CGFloat)titleFont
           TitleColor:(UIColor *)titleColor
           TitleAlign:(WYALabelAlignType)alignType
      BackGroundColor:(UIColor *)backGroundColor
          BorderWidth:(CGFloat)borderWidth
          BorderColor:(UIColor * _Nullable)borderColor
         CornerRadius:(CGFloat)cornerRadius
{
    self.frame = frame;
    self.text = title;
    self.font = FONT(titleFont);
    self.textColor = titleColor;
    self.backgroundColor = backGroundColor;
    self.layer.borderWidth = borderWidth;
    self.layer.borderColor = borderColor.CGColor;
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
    if (alignType == WYALabelAlignTypeLeft) {
        self.textAlignment = NSTextAlignmentLeft;
    }else if (alignType == WYALabelAlignTypeRight) {
        self.textAlignment = NSTextAlignmentRight;
    }
    
}

+ (YYLabel *)labelForYYLabelWithFrame:(CGRect)frame
                                Title:(NSString *)title
                            TitleFont:(CGFloat)titleFont
                           TitleColor:(UIColor *)titleColor
                           TitleAlign:(WYALabelAlignType)alignType
                      BackGroundColor:(UIColor *)backGroundColor
                          BorderWidth:(CGFloat)borderWidth
                          BorderColor:(UIColor *)borderColor
                         CornerRadius:(CGFloat)cornerRadius
{
    YYLabel * label = [[YYLabel alloc]init];
    label.frame = frame;
    label.text = title;
    label.font = FONT(titleFont);
    label.textColor = titleColor;
    label.backgroundColor = backGroundColor;
    label.layer.borderWidth = borderWidth;
    label.layer.borderColor = borderColor.CGColor;
    label.layer.cornerRadius = cornerRadius;
    label.layer.masksToBounds = YES;
    if (alignType == WYALabelAlignTypeTop) {
        label.textVerticalAlignment =YYTextVerticalAlignmentTop;
    }else{
        label.textVerticalAlignment = YYTextVerticalAlignmentBottom;
    }
    return label;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
