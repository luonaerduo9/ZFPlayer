//
//  LJContinuePlayView.m
//  Pods
//
//  Created by Aono on 2017/3/31.
//
//

#import "LJContinuePlayView.h"
#import "ZFPlayer.h"

@implementation LJContinuePlayView

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
        
        //添加文字描述
        UILabel *label = [[UILabel alloc] init];
        label.text = @"您正在使用非wifi网络,播放将产生流量";
        label.font = [UIFont systemFontOfSize:12];
        label.textColor = RGBA(254, 254, 254, 1);
        [self addSubview:label];
        
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.centerY.equalTo(self).offset(-18);
        }];
        
        //添加认证按钮
        UIButton *continueBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [continueBtn setTitle:@"继续播放" forState:UIControlStateNormal];
        [continueBtn setTitleColor:RGBA(204, 0, 1, 1) forState:UIControlStateNormal];
        continueBtn.titleLabel.font =  [UIFont systemFontOfSize: 14.0];
        [continueBtn sizeToFit];
        
        [self addSubview:continueBtn];
        [continueBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            //            make.center.equalTo(self);
            make.centerX.equalTo(self);
            make.top.equalTo(label.mas_bottom).offset(14);
        }];
        
        [continueBtn addTarget:self action:@selector(continuePlayBtnClick) forControlEvents:UIControlEventTouchUpInside];
        
        
    }
    return self;
}

- (void)continuePlayBtnClick {
    if (self.continuePlayBtnClickBlock) {
        self.continuePlayBtnClickBlock();
    }
}

- (UIImageView *)placeholderImageView {
    if (_placeholderImageView == nil) {
        _placeholderImageView = [[UIImageView alloc] init];
    }
    return _placeholderImageView;
}


@end
