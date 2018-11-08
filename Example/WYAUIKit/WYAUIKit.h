//
//  WYAUIKit.h
//  WYAUIKit
//
//  Created by 李世航 on 2018/11/7.
//  Copyright © 2018 1228506851@qq.com. All rights reserved.
//

#ifndef WYAUIKit_h
#define WYAUIKit_h

/**
 *字体大小
 */
#define FONT(s) [UIFont systemFontOfSize:(s*SizeAdapter)]
//粗体
#define FONTS(s) [UIFont boldSystemFontOfSize:(s*SizeAdapter)]
// **********************物理尺寸 以及比例 *************************
// 以iPhone6为基准尺寸
#define SizeAdapter ScreenWidth/375
//获取设备的物理高度
#define ScreenWidth [UIScreen mainScreen].bounds.size.width
//获取设备的物理宽度
#define ScreenHeight [UIScreen mainScreen].bounds.size.height
//获取设备的物理宽高
#define ScreenBounds [UIScreen mainScreen].bounds

#endif /* WYAUIKit_h */
