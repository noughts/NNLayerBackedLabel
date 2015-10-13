//
//  NNLayerBackedLabel.m
//  Pods
//
//  Created by noughts on 2015/10/13.
//
//

#import "NNLayerBackedLabel.h"

@implementation NNLayerBackedLabel{
	CATextLayer* _layer;
}

+(Class)layerClass{
	return [CATextLayer class];
}

-(void)awakeFromNib{
	NSInteger size = [UIFont systemFontSize];
	UIFont* font = [UIFont systemFontOfSize:size];
	
	_layer = (CATextLayer*)self.layer;
	_layer.contentsScale = [UIScreen mainScreen].scale;
	_layer.font = (__bridge CFTypeRef _Nullable)(font);
	_layer.fontSize = size;
	[_layer setAlignmentMode:kCAAlignmentCenter];
	[_layer setForegroundColor:[[UIColor blackColor] CGColor]];
}


-(void)setFontSize:(NSUInteger)fontSize{
	if( fontSize == _layer.fontSize ){
		return;
	}
	UIFont* font = [UIFont systemFontOfSize:fontSize];
	_layer.font = (__bridge CFTypeRef _Nullable)(font);
	_layer.fontSize = fontSize;
	[self invalidateIntrinsicContentSize];/// AutoLayoutのサイズ更新
}


-(void)setText:(NSString *)text{
	if( [text isEqualToString:_layer.string] ){
		return;
	}
	_layer.string = text;
	[self invalidateIntrinsicContentSize];/// AutoLayoutのサイズ更新
}


-(CGSize)intrinsicContentSize{
	UIFont* font = _layer.font;
	CGSize size = [_layer.string sizeWithAttributes:@{NSFontAttributeName:font}];
	return size;
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
