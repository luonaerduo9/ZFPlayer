//
//  DXBuyView.h
//  Pods
//
//  Created by Kris on 17/1/9.
//
//

#import <UIKit/UIKit.h>

@interface DXBuyView : UIView

/** 站位图片 */
@property (nonatomic, strong) UIImageView *placeholderImageView;
/** 购买按钮的点击 */
@property (nonatomic, strong) void(^buyBtnClickBlock)();

@end
