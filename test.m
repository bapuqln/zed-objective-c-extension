#import <Foundation/Foundation.h>

@interface MyClass : NSObject
- (void)someMethod;
@end

@interface MyClass (MyCategory)
- (void)categoryMethod;
@end

@implementation MyClass
- (void)someMethod {
  NSLog(@"Hello, World!");
}
@end

@implementation MyClass (MyCategory)
- (void)categoryMethod {
  NSLog(@"Hello from category!");
}
@end

@protocol MyProtocol
- (void)requiredMethod;
@optional
- (void)optionalMethod;
@end

int main(int argc, const char *argv[]) {
  @autoreleasepool {
    MyClass *obj = [[MyClass alloc] init];
    [obj someMethod];
    [obj categoryMethod];
  }
  return 0;
}
