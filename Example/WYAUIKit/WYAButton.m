//
//  WYAButton.m
//  WYAUIKit_Example
//
//  Created by 李世航 on 2018/11/6.
//  Copyright © 2018 1228506851@qq.com. All rights reserved.
//

#import "WYAButton.h"
#import "WYAUIKit.h"
#import <objc/runtime.h>
//#import "WYALayer.h"



@interface WYAButton ()
@property (nonatomic) UIImageView * bgImageView;
@end

@implementation WYAButton

//- (instancetype)initWithCoder:(NSCoder *)coder
//{
//    self = [super initWithCoder:coder];
//    if (self) {
//
//    }
//    return self;
//}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];	
    if (self) {
        self = [self initWithFrame:frame TitleNormal:@"Button" TitleSelected:nil TitleHighlighted:nil TitleNormalColor:[UIColor blueColor] TitleHighLightedColor:nil TitleSelectedColor:nil TitleFont:16 ImageNormalString:nil ImageSelectedString:nil BackImageNormalString:nil BackImageSelectedString:nil BackGroundColor:nil WYAControlEvents:UIControlEventTouchUpInside CallBackActionBlock:self.callBack];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
                  TitleNormal:(NSString *)titleNormal
                TitleSelected:(NSString *)titleSelected
             TitleHighlighted:(NSString *)titleHightLighted
             TitleNormalColor:(UIColor *)titleNormalColor
        TitleHighLightedColor:(UIColor *)titleHighLightedColor
           TitleSelectedColor:(UIColor *)titleSelectedColor
                    TitleFont:(CGFloat)titleFont
            ImageNormalString:(NSString *)imageNormalString
          ImageSelectedString:(NSString *)imageSelectedString
        BackImageNormalString:(NSString *)backImageNormalString
      BackImageSelectedString:(NSString *)backImageSelectedString
              BackGroundColor:(UIColor *)backGroundColor
             WYAControlEvents:(UIControlEvents)controlEvents
          CallBackActionBlock:(ButtonActionCallBack)block
{
    self = [super init];
    if (self) {
        self.frame = frame;
        [self setTitle:titleNormal forState:UIControlStateNormal];
        [self setTitle:titleSelected forState:UIControlStateSelected];
        [self setTitle:titleHightLighted forState:UIControlStateHighlighted];
        [self setTitleColor:titleNormalColor forState:UIControlStateNormal];
        [self setTitleColor:titleSelectedColor forState:UIControlStateSelected];
        [self setTitleColor:titleHighLightedColor forState:UIControlStateHighlighted];
        self.titleLabel.font = FONT(titleFont);
        [self setImage:[UIImage imageNamed:imageNormalString] forState:UIControlStateNormal];
        [self setImage:[UIImage imageNamed:imageSelectedString] forState:UIControlStateSelected];
        [self setBackgroundImage:[UIImage imageNamed:backImageNormalString] forState:UIControlStateNormal];
        [self setBackgroundImage:[UIImage imageNamed:backImageSelectedString] forState:UIControlStateSelected];
        [self setBackgroundColor:backGroundColor];
        [self addCallBackAction:block forControlEvents:controlEvents];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
}

- (void)addCallBackAction:(ButtonActionCallBack)action
         forControlEvents:(UIControlEvents)controlEvents
{
    objc_setAssociatedObject (self, @selector (addCallBackAction:forControlEvents:), action, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addTarget:self action:@selector (blockActionTouched:) forControlEvents:controlEvents];
}

- (void)addCallBackAction:(ButtonActionCallBack)action
{
    [self addCallBackAction:action forControlEvents:UIControlEventTouchUpInside];
}

- (void)blockActionTouched:(UIButton *)btn
{
    ButtonActionCallBack block = objc_getAssociatedObject (self, @selector (addCallBackAction:forControlEvents:));
    if (block) {
        block (btn);
    }
}

/*
-(void)setImageNormal:(UIImage *)imageNormal{
    _imageNormal = imageNormal;
    if (_bgImageView == nil) {
        _bgImageView = [[UIImageView alloc]initWithImage:imageNormal];
        if (_imageSize) {
            [self adjustImageSize];
        }else{
            _bgImageView.contentMode = UIViewContentModeCenter;
            _bgImageView.frame = self.bounds;
        }
        [self addSubview:_bgImageView];
    }
}

-(void)setImageSize:(CGFloat)imageSize{
    _imageSize = imageSize;
    [self adjustImageSize];
}

- (void)adjustImageSize {
    CGFloat centerX = self.bounds.size.width / 2;
    CGFloat centerY = self.bounds.size.height / 2;
    CGRect buttonBounds =
    CGRectMake(centerX - _imageSize / 2, centerY - _imageSize / 2, _imageSize,
               _imageSize);
    _bgImageView.contentMode = UIViewContentModeScaleAspectFit;
    _bgImageView.frame = buttonBounds;
}*/
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
