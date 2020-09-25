//
//  main.m
//  KCObjc
//
//  Created by Cooci on 2020/7/24.
//

#import <Foundation/Foundation.h>
#import "TDPerson.h"
#import <objc/runtime.h>


// cache_t
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        TDPerson *p  = [TDPerson alloc];
        Class pClass = [TDPerson class];
        [p sayHello];
        [p sayCode];
        [p sayMaster];
        
        //测试一下
        [p sayNB];
//        [p sayNB];


        NSLog(@"%@",pClass);
    }
    return 0;
}
