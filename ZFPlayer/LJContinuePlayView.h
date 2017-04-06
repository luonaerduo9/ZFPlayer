//
//  LJContinuePlayView.h
//  Pods
//
//  Created by Aono on 2017/3/31.
//
//

#import <UIKit/UIKit.h>

@interface LJContinuePlayView : UIView

/** 站位图片 */
@property (nonatomic, strong) UIImageView *placeholderImageView;
/** 购买按钮的点击 */
@property (nonatomic, strong) void(^continuePlayBtnClickBlock)();

@end
