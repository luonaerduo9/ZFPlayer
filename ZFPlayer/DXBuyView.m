//
//  DXBuyView.m
//  Pods
//
//  Created by Kris on 17/1/9.
//
//

#import "DXBuyView.h"
#import "ZFPlayer.h"

@implementation DXBuyView

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
        UIButton *buyBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [buyBtn setImage:ZFPlayerImage(@"DXVideo_buy") forState:UIControlStateNormal];
        [buyBtn sizeToFit];
        
        [self addSubview:buyBtn];
        [buyBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.center.equalTo(self);
            make.centerX.equalTo(self);
            make.centerY.equalTo(self).offset(-buyBtn.bounds.size.height / 2);
        }];
        
        [buyBtn addTarget:self action:@selector(buyBtnClick) forControlEvents:UIControlEventTouchUpInside];
        
        //添加文字描述
        UILabel *label = [[UILabel alloc] init];
        label.text = @"此视频采用以上付费方式进行观看";
        label.font = [UIFont systemFontOfSize:13.0];
        label.textColor = [UIColor whiteColor];
        [self addSubview:label];
        
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(buyBtn);
            make.top.equalTo(buyBtn.mas_bottom).offset(20);
        }];
    }
    return self;
}

- (void)buyBtnClick {
    if (self.buyBtnClickBlock) {
        self.buyBtnClickBlock();
    }
}

- (UIImageView *)placeholderImageView {
    if (_placeholderImageView == nil) {
        _placeholderImageView = [[UIImageView alloc] init];
    }
    return _placeholderImageView;
}

@end
