//
//  WYAImageView.m
//  WYAUIKit_Example
//
//  Created by 李世航 on 2018/11/7.
//  Copyright © 2018 1228506851@qq.com. All rights reserved.
//

#import "WYAImageView.h"

@implementation WYAImageView

- (instancetype)initWithFrame:(CGRect)frame
                    ImageName:(NSString * _Nullable)imageName
{
    self = [super initWithFrame:frame];
    if (self) {
        [self imageViewWithFrame:frame ImageName:imageName ImageContentMode:UIViewContentModeScaleAspectFill];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
                    ImageName:(NSString * _Nullable)imageName
             ImageContentMode:(UIViewContentMode)imageContentMode
{
    self = [super initWithFrame:frame];
    if (self) {
        [self imageViewWithFrame:frame ImageName:imageName ImageContentMode:imageContentMode];
    }
    return self;
}

-(void)imageViewWithFrame:(CGRect)frame
                ImageName:(NSString * _Nullable)imageName
         ImageContentMode:(UIViewContentMode)imageContentMode
{
    self.frame = frame;
    self.image = [UIImage imageNamed:imageName];
    self.contentMode = imageContentMode;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
