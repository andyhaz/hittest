//
//  myView.m
//  hitTest
//
//  Created by andrew hazlett on 9/9/16.
//  Copyright © 2016 andrew hazlett. All rights reserved.
//

#import "myView.h"

@interface myView (){
    NSBezierPath *box;
}

@end

@implementation myView

-(void)mouseDown:(NSEvent *)event  {
    NSPoint tvarMousePointInWindow = [event locationInWindow];
    NSPoint tvarMousePointInView   = [self convertPoint:tvarMousePointInWindow fromView:nil];

    NSLog(@"%hhd",[box containsPoint:tvarMousePointInView]);
}


- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    [self drawSquareBackgroundSolidColor];
    // Drawing code here.
}

-(void)drawSquareBackgroundSolidColor {
    //  NSLog(@"myMutaryOfPoints:%@",myMutaryOfPoints);
        int locX = 150;
        int locY = 150;
        NSLog(@"myMutaryOfPoints X:%d y:%d",locX,locY);
        box = [NSBezierPath bezierPathWithRect:NSMakeRect(locX,locY, 10, 10)];
        [[NSColor whiteColor] set];
        [box fill];
        [[NSColor blackColor] set];
        [box setLineWidth:2.0];
        [box stroke];
}

@end
