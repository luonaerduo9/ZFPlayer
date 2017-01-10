//
//  DXCertificateView.h
//  Pods
//
//  Created by Kris on 17/1/9.
//
//

#import <UIKit/UIKit.h>

@interface DXCertificateView : UIView

/** 站位图片 */
@property (nonatomic, strong) UIImageView *placeholderImageView;

/** 点击认证按钮 */
@property (nonatomic, strong) void(^certificateBtnClickBlock)();

@end
