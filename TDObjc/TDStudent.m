//
//  TDStudent.m
//  KCObjc
//
//  Created by huahua on 2020/11/12.
//

#import "TDStudent.h"
#import <objc/runtime.h>

@implementation TDStudent

-(void)sayGoodBye{
    NSLog(@"%s",__func__);
}


+(BOOL)resolveInstanceMethod:(SEL)sel{
    if (sel == @selector(say666)) {
        NSLog(@"%@ 来了", NSStringFromSelector(sel));
        //获取sayGoodBye方法的imp
        IMP imp = class_getMethodImplementation(self, @selector(sayGoodBye));
        //获取sayGoodBye的实例方法
        Method sayMethod  = class_getInstanceMethod(self, @selector(sayGoodBye));
        //获取sayGoodBye的方法签名
        const char *type = method_getTypeEncoding(sayMethod);
        //将sel的实现指向sayGoodBye 并加入到方法列表
        return class_addMethod(self, sel, imp, type);
    }
    return [super resolveInstanceMethod:sel];
}
@end
