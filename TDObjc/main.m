//
//  main.m
//  KCObjc
//
//  Created by TD on 2020/7/24.
//

#import <Foundation/Foundation.h>
#import "TDPerson.h"
#import "TDStudent.h"
#import <objc/runtime.h>


// cache_t
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        TDPerson * person  = [TDPerson alloc];
        TDStudent * student = [TDStudent alloc];
//        [student sayGoodBye];
        [student say666];
//        [person sayHello];
//        [person sayCode];
//        [person sayMaster];
//
//        //测试一下
//        [person sayNB];
//        [p sayNB];
    }
    return 0;
}
