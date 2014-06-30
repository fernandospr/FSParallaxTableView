//
//  FSParallaxTableViewCell.m
//  FSParallaxTableView
//
//  Created by Fernando Sproviero on 30/06/14.
//  Copyright (c) 2014 FS. All rights reserved.
//

#import "FSParallaxTableViewCell.h"

@implementation FSParallaxTableViewCell

- (CGFloat)imageOverflowHeight
{
    return self.cellImageView.image.size.height - self.cellImageView.frame.size.height;
}

- (void)setImageOffset:(CGPoint)imageOffset
{
    CGRect frame = self.cellImageView.frame;
    frame.origin = imageOffset;
    self.cellImageView.frame = frame;
}

@end
