//
//  FSParallaxTableViewCell.h
//  FSParallaxTableView
//
//  Created by Fernando Sproviero on 30/06/14.
//  Copyright (c) 2014 FS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FSParallaxTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *cellImageView;
@property (weak, nonatomic) IBOutlet UILabel *cellLabel;

- (CGFloat)imageOverflowHeight;

- (void)setImageOffset:(CGPoint)imageOffset;

@end
