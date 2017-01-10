//
//  DXCertificateView.m
//  Pods
//
//  Created by Kris on 17/1/9.
//
//

#import "DXCertificateView.h"
#import "ZFPlayer.h"

@implementation DXCertificateView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = [UIColor blackColor];
        
        //添加站位图
        [self addSubview:self.placeholderImageView];
        [self.placeholderImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(UIEdgeInsetsZero);
        }];
        
        //添加认证按钮
        UIButton *certificateBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [certificateBtn setImage:ZFPlayerImage(@"DXVideo_certificate") forState:UIControlStateNormal];
        [certificateBtn sizeToFit];
        
        [self addSubview:certificateBtn];
        [certificateBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.center.equalTo(self);
            make.centerX.equalTo(self);
            make.centerY.equalTo(self).offset(-certificateBtn.bounds.size.height / 2);
        }];
        
        [certificateBtn addTarget:self action:@selector(certificateBtnClick) forControlEvents:UIControlEventTouchUpInside];
        
        //添加文字描述
        UILabel *label = [[UILabel alloc] init];
        label.text = @"观看此视频需要进行医生资质认证";
        label.font = [UIFont systemFontOfSize:13.0];
        label.textColor = [UIColor whiteColor];
        [self addSubview:label];
        
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(certificateBtn);
            make.top.equalTo(certificateBtn.mas_bottom).offset(20);
        }];
    }
    return self;
}

- (void)certificateBtnClick {
    if (self.certificateBtnClickBlock) {
        self.certificateBtnClickBlock();
    }
}

- (UIImageView *)placeholderImageView {
    if (_placeholderImageView == nil) {
        _placeholderImageView = [[UIImageView alloc] init];
    }
    return _placeholderImageView;
}

@end
