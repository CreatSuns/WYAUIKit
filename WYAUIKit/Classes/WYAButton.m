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
@property (nonatomic, strong) UIImage * contentNormalImage;
@property (nonatomic, strong) UIImage * contentSelectedImage;
@end

@implementation WYAButton

- (instancetype)initWithFrame:(CGRect)frame
                        Title:(NSString * _Nullable)title
                   TitleColor:(UIColor * _Nullable)titleColor
                    TitleFont:(CGFloat)titleFont
{
    self = [super initWithFrame:frame];	
    if (self) {
        [self buttonWithFrame:frame TitleNormal:title TitleSelected:nil TitleHighlighted:nil TitleNormalColor:[UIColor blueColor] TitleSelectedColor:nil TitleHighLightedColor:nil TitleFont:titleFont ImageNormalString:nil ImageSelectedString:nil BackImageNormalString:nil BackImageSelectedString:nil BackGroundColor:nil ButtonContentType:WYAButtonContentTypeSystem BorderWidth:0 BorderColor:nil CornerRadius:0];
        _contentType = WYAButtonContentTypeSystem;
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
                  TitleNormal:(NSString * _Nullable)titleNormal
             TitleHighlighted:(NSString *_Nullable)titleHightLighted
             TitleNormalColor:(UIColor *_Nullable)titleNormalColor
        TitleHighLightedColor:(UIColor *_Nullable)titleHighLightedColor
                    TitleFont:(CGFloat)titleFont
{
    self = [super initWithFrame:frame];
    if (self) {
        [self buttonWithFrame:frame TitleNormal:titleNormal TitleSelected:nil TitleHighlighted:titleHightLighted TitleNormalColor:titleNormalColor TitleSelectedColor:nil TitleHighLightedColor:titleHighLightedColor TitleFont:titleFont ImageNormalString:nil ImageSelectedString:nil BackImageNormalString:nil BackImageSelectedString:nil BackGroundColor:nil ButtonContentType:WYAButtonContentTypeSystem BorderWidth:0 BorderColor:nil CornerRadius:0];
        _contentType = WYAButtonContentTypeSystem;
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
                  TitleNormal:(NSString * _Nullable)titleNormal
                TitleSelected:(NSString * _Nullable)titleSelected
             TitleNormalColor:(UIColor *_Nullable)titleNormalColor
           TitleSelectedColor:(UIColor *_Nullable)titleSelectedColor
                    TitleFont:(CGFloat)titleFont
{
    self = [super initWithFrame:frame];
    if (self) {
        [self buttonWithFrame:frame TitleNormal:titleNormal TitleSelected:titleSelected TitleHighlighted:nil TitleNormalColor:titleNormalColor TitleSelectedColor:titleSelectedColor TitleHighLightedColor:nil TitleFont:titleFont ImageNormalString:nil ImageSelectedString:nil BackImageNormalString:nil BackImageSelectedString:nil BackGroundColor:nil ButtonContentType:WYAButtonContentTypeSystem BorderWidth:0 BorderColor:nil CornerRadius:0];
        _contentType = WYAButtonContentTypeSystem;
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
                  TitleNormal:(NSString * _Nullable)titleNormal
             TitleNormalColor:(UIColor *_Nullable)titleNormalColor
                    TitleFont:(CGFloat)titleFont
            ImageNormalString:(NSString *_Nullable)imageNormalString
            ButtonContentType:(WYAButtonContentType)contentType
{
    self = [super initWithFrame:frame];
    if (self) {
        [self buttonWithFrame:frame TitleNormal:titleNormal TitleSelected:nil TitleHighlighted:nil TitleNormalColor:titleNormalColor TitleSelectedColor:nil TitleHighLightedColor:nil TitleFont:titleFont ImageNormalString:imageNormalString ImageSelectedString:nil BackImageNormalString:nil BackImageSelectedString:nil BackGroundColor:nil ButtonContentType:contentType BorderWidth:0 BorderColor:nil CornerRadius:0];
        _contentType = contentType;
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
                  TitleNormal:(NSString * _Nullable)titleNormal
             TitleNormalColor:(UIColor *_Nullable)titleNormalColor
                    TitleFont:(CGFloat)titleFont
                  BorderWidth:(CGFloat)borderWidth
                  BorderColor:(UIColor *)borderColor
                 CornerRadius:(CGFloat)cornerRadius
{
    self = [super initWithFrame:frame];
    if (self) {
        [self buttonWithFrame:frame TitleNormal:titleNormal TitleSelected:nil TitleHighlighted:nil TitleNormalColor:titleNormalColor TitleSelectedColor:nil TitleHighLightedColor:nil TitleFont:titleFont ImageNormalString:nil ImageSelectedString:nil BackImageNormalString:nil BackImageSelectedString:nil BackGroundColor:nil ButtonContentType:WYAButtonContentTypeSystem BorderWidth:borderWidth BorderColor:borderColor CornerRadius:cornerRadius];
        _contentType = WYAButtonContentTypeSystem;
    }
    return self;
}

- (void)buttonWithFrame:(CGRect)frame
            TitleNormal:(NSString * _Nullable)titleNormal
          TitleSelected:(NSString * _Nullable)titleSelected
       TitleHighlighted:(NSString *_Nullable)titleHightLighted
       TitleNormalColor:(UIColor *_Nullable)titleNormalColor
     TitleSelectedColor:(UIColor *_Nullable)titleSelectedColor
  TitleHighLightedColor:(UIColor *_Nullable)titleHighLightedColor
              TitleFont:(CGFloat)titleFont
      ImageNormalString:(NSString *_Nullable)imageNormalString
    ImageSelectedString:(NSString *_Nullable)imageSelectedString
  BackImageNormalString:(NSString *_Nullable)backImageNormalString
BackImageSelectedString:(NSString *_Nullable)backImageSelectedString
        BackGroundColor:(UIColor *_Nullable)backGroundColor
      ButtonContentType:(WYAButtonContentType)contentType
            BorderWidth:(CGFloat)borderWidth
            BorderColor:(UIColor *)borderColor
           CornerRadius:(CGFloat)cornerRadius
{
    
    self.frame = frame;
    [self setTitle:titleNormal forState:UIControlStateNormal];
    [self setTitle:titleSelected forState:UIControlStateSelected];
    [self setTitle:titleHightLighted forState:UIControlStateHighlighted];
    [self setTitleColor:titleNormalColor forState:UIControlStateNormal];
    [self setTitleColor:titleSelectedColor forState:UIControlStateSelected];
    [self setTitleColor:titleHighLightedColor forState:UIControlStateHighlighted];
    self.titleLabel.font = FONT(titleFont);
    _contentNormalImage = [UIImage imageNamed:imageNormalString];
    _contentSelectedImage = [UIImage imageNamed:imageSelectedString];
    [self setImage:_contentNormalImage forState:UIControlStateNormal];
    [self setImage:_contentSelectedImage forState:UIControlStateSelected];
    [self setBackgroundImage:[UIImage imageNamed:backImageNormalString] forState:UIControlStateNormal];
    [self setBackgroundImage:[UIImage imageNamed:backImageSelectedString] forState:UIControlStateSelected];
    [self setBackgroundColor:backGroundColor];
    self.layer.borderWidth = borderWidth;
    self.layer.borderColor = borderColor.CGColor;
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
    _contentType = contentType;
    switch (contentType) {
        case WYAButtonContentTypeImageLeft:
            self.titleLabel.textAlignment = NSTextAlignmentLeft;
            break;
        case WYAButtonContentTypeImageRight:
            self.titleLabel.textAlignment = NSTextAlignmentRight;
            break;
        case WYAButtonContentTypeImageTop:
            self.titleLabel.textAlignment = NSTextAlignmentCenter;
            break;
        case WYAButtonContentTypeImageBottom:
            self.titleLabel.textAlignment = NSTextAlignmentCenter;
            break;
        default:
            break;
    }
    [self layoutSubviews];
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
#pragma mark Super method
- (CGRect)backgroundRectForBounds:(CGRect)bounds{
    return [super backgroundRectForBounds:bounds];
}

- (CGRect)contentRectForBounds:(CGRect)bounds{
    return [super contentRectForBounds:bounds];
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect{
    CGRect rect;
    CGFloat padding = 3; //间距
    switch (_contentType) {
        case WYAButtonContentTypeSystem:
            return [super titleRectForContentRect:contentRect];
            break;
            
        case WYAButtonContentTypeImageLeft:
        {
            rect = CGRectMake(_contentNormalImage.size.width+padding, 0, contentRect.size.width-_contentNormalImage.size.width-padding, contentRect.size.height);
        }
            break;
        case WYAButtonContentTypeImageRight:
        {
            rect = CGRectMake(0, 0, contentRect.size.width-_contentNormalImage.size.width-padding, contentRect.size.height);
        }
            break;
        case WYAButtonContentTypeImageTop:
        {
            rect = CGRectMake(0, _contentNormalImage.size.height+padding, contentRect.size.width, contentRect.size.height-_contentNormalImage.size.height-padding);
        }
            break;
        case WYAButtonContentTypeImageBottom:
        {
            rect = CGRectMake(0, 0, contentRect.size.width, contentRect.size.height-_contentNormalImage.size.height-padding);
        }
            break;
        default:
            break;
    }
    return rect;
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect{
    CGRect rect;
//    CGFloat padding = 3; //间距
    switch (_contentType) {
        case WYAButtonContentTypeSystem:
            return [super imageRectForContentRect:contentRect];
            break;
            
        case WYAButtonContentTypeImageLeft:
        {
            rect = CGRectMake(0, (contentRect.size.height-_contentNormalImage.size.height)/2, _contentNormalImage.size.width, _contentNormalImage.size.height);
        }
            break;
        case WYAButtonContentTypeImageRight:
        {
            rect = CGRectMake(contentRect.size.width-_contentNormalImage.size.width, (contentRect.size.height-_contentNormalImage.size.height)/2, _contentNormalImage.size.width, _contentNormalImage.size.height);
        }
            break;
        case WYAButtonContentTypeImageTop:
        {
            rect = CGRectMake((contentRect.size.width-_contentNormalImage.size.width)/2, 0, _contentNormalImage.size.width, _contentNormalImage.size.height);
        }
            break;
        case WYAButtonContentTypeImageBottom:
        {
            rect = CGRectMake((contentRect.size.width-_contentNormalImage.size.width)/2, contentRect.size.height-_contentNormalImage.size.height, _contentNormalImage.size.width, _contentNormalImage.size.height);
        }
            break;
        default:
            break;
    }
    return rect;
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
