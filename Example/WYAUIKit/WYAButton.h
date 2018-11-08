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

typedef void (^ButtonActionCallBack) (UIButton * button);

IB_DESIGNABLE
@interface WYAButton : UIButton

//@property (nonatomic) IBInspectable  WYAButtonType btnType;
//@property (nonatomic) IBInspectable  UIImage * imageNormal;
//@property (nonatomic) IBInspectable  UIImage * imageRotated;
//@property (nonatomic) IBInspectable  CGFloat imageSize;

@property (nonatomic, copy)   ButtonActionCallBack callBack;

@end

NS_ASSUME_NONNULL_END
