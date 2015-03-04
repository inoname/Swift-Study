//
//  Bird.m
//  OC与Swift混编
//
//  Created by kouliang on 15/3/2.
//  Copyright (c) 2015年 kouliang. All rights reserved.
//

#import "Bird.h"

#import "oc与swift混编-Swift.h"

@implementation Bird
-(void)fly{
    NSLog(@"---fly");
    
    ViewController *vc=[ViewController new];
    [vc sayHello];
}
+(void)fly{
    NSLog(@"+++fly");
    [ViewController sayHello];
}
@end
