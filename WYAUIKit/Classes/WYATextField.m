//
//  WYATextField.m
//  WYAUIKit_Example
//
//  Created by 李世航 on 2018/11/6.
//  Copyright © 2018 1228506851@qq.com. All rights reserved.
//

#import "WYATextField.h"
#import "WYAUIKit.h"
@implementation WYATextField

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self textFieldWithFrame:CGRectZero Text:nil TextColor:nil TextFont:15 PlaceHolder:nil PlaceHolderFont:0 PlaceHolderColor:nil LeftView:nil LeftViewModel:0 RightView:nil RightViewModel:0 ShowClearButton:0 ClearButoonModel:0];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self textFieldWithFrame:frame Text:nil TextColor:nil TextFont:15 PlaceHolder:nil PlaceHolderFont:0 PlaceHolderColor:nil LeftView:nil LeftViewModel:0 RightView:nil RightViewModel:0 ShowClearButton:0 ClearButoonModel:0];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
                         Text:(NSString *)text
                    TextColor:(UIColor *)textColor
                     TextFont:(CGFloat)textFont
                  PlaceHolder:(NSString *)placeHolder
              PlaceHolderFont:(CGFloat)placeHolderFont
             PlaceHolderColor:(UIColor *)placeHolderColor
{
    self = [super initWithFrame:frame];
    if (self) {
        [self textFieldWithFrame:frame Text:text TextColor:textColor TextFont:textFont PlaceHolder:placeHolder PlaceHolderFont:placeHolderFont PlaceHolderColor:placeHolderColor LeftView:nil LeftViewModel:0 RightView:nil RightViewModel:0 ShowClearButton:0 ClearButoonModel:0];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
                         Text:(NSString *)text
                    TextColor:(UIColor *)textColor
                     TextFont:(CGFloat)textFont
                  PlaceHolder:(NSString *)placeHolder
              PlaceHolderFont:(CGFloat)placeHolderFont
             PlaceHolderColor:(UIColor *)placeHolderColor
                     LeftView:(UIView *)leftView
                LeftViewModel:(UITextFieldViewMode)leftViewModel
{
    self = [super initWithFrame:frame];
    if (self) {
        [self textFieldWithFrame:frame Text:text TextColor:textColor TextFont:textFont PlaceHolder:placeHolder PlaceHolderFont:placeHolderFont PlaceHolderColor:placeHolderColor LeftView:leftView LeftViewModel:leftViewModel RightView:nil RightViewModel:0 ShowClearButton:0 ClearButoonModel:0];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
                         Text:(NSString *)text
                    TextColor:(UIColor *)textColor
                     TextFont:(CGFloat)textFont
                  PlaceHolder:(NSString *)placeHolder
              PlaceHolderFont:(CGFloat)placeHolderFont
             PlaceHolderColor:(UIColor *)placeHolderColor
              ShowClearButton:(BOOL)showClearButton
             ClearButoonModel:(UITextFieldViewMode)clearButtonModel
{
    self = [super initWithFrame:frame];
    if (self) {
        [self textFieldWithFrame:frame Text:text TextColor:textColor TextFont:textFont PlaceHolder:placeHolder PlaceHolderFont:placeHolderFont PlaceHolderColor:placeHolderColor LeftView:nil LeftViewModel:0 RightView:nil RightViewModel:0 ShowClearButton:showClearButton ClearButoonModel:clearButtonModel];
    }
    return self;
}

-(void)textFieldWithFrame:(CGRect)frame
                     Text:(NSString *)text
                TextColor:(UIColor *)textColor
                 TextFont:(CGFloat)textFont
              PlaceHolder:(NSString *)placeHolder
          PlaceHolderFont:(CGFloat)placeHolderFont
         PlaceHolderColor:(UIColor *)placeHolderColor
                 LeftView:(UIView *)leftView
            LeftViewModel:(UITextFieldViewMode)leftViewModel
                RightView:(UIView *)rightView
           RightViewModel:(UITextFieldViewMode)rightViewModel
          ShowClearButton:(BOOL)showClearButton
         ClearButoonModel:(UITextFieldViewMode)clearButtonModel
{
    self.frame = frame;
    self.text = text;
    self.textColor = textColor;
    self.font = FONT(textFont);
    self.placeholder = placeHolder;
    [self setValue:placeHolderColor forKeyPath:@"_placeholderLabel.textColor"];
    [self setValue:FONT(placeHolderFont) forKeyPath:@"_placeholderLabel.font"];
    self.leftView = leftView;
    self.leftViewMode = leftViewModel;
    self.rightView = rightView;
    self.rightViewMode = rightViewModel;
    self.clearsOnBeginEditing = showClearButton;
    self.clearButtonMode = clearButtonModel;
}

#pragma mark Setter
-(void)setNeedBottomLine:(BOOL)needBottomLine{
    _needBottomLine = needBottomLine;
    [self setNeedsDisplay];
}

#pragma mark Super Method
- (CGRect)borderRectForBounds:(CGRect)bounds{
    return [super borderRectForBounds:bounds];
}

- (CGRect)textRectForBounds:(CGRect)bounds{
    return [super textRectForBounds:bounds];
}
- (CGRect)placeholderRectForBounds:(CGRect)bounds{
    return [super placeholderRectForBounds:bounds];
}
- (CGRect)editingRectForBounds:(CGRect)bounds{
    return [super editingRectForBounds:bounds];
}
- (CGRect)clearButtonRectForBounds:(CGRect)bounds{
    return [super clearButtonRectForBounds:bounds];
}
- (CGRect)leftViewRectForBounds:(CGRect)bounds{
    return [super leftViewRectForBounds:bounds];
}
- (CGRect)rightViewRectForBounds:(CGRect)bounds{
    return [super rightViewRectForBounds:bounds];
}

- (void)drawTextInRect:(CGRect)rect{
    [super drawTextInRect:rect];
}
- (void)drawPlaceholderInRect:(CGRect)rect{
    [super drawPlaceholderInRect:rect];
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    if (self.needBottomLine) {
        NSLog(@"划线");
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextSetLineCap(context, kCGLineCapRound);
        CGContextSetLineWidth(context, 1);  //线宽
        CGContextSetAllowsAntialiasing(context, true);
        CGContextSetRGBStrokeColor(context, 231.0 / 255.0, 231.0 / 255.0, 231.0 / 255.0, 1.0);  //线的颜色
        CGContextBeginPath(context);
        
        CGContextMoveToPoint(context, 0, self.frame.size.height);  //起点坐标
        CGContextAddLineToPoint(context, self.frame.size.width, self.frame.size.height);   //终点坐标
        
        CGContextStrokePath(context);
        
    }
}


@end
