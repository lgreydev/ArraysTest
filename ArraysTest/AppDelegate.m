//
//  AppDelegate.m
//  ArraysTest
//
//  Created by Sergey Lukaschuk on 2023-10-05.
//

#import "AppDelegate.h"
#import "SLObject.h"
#import "SLChild.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    /*
    
//    NSArray* array = [[NSArray alloc] initWithObjects:@"String 1", @"String 2", @"String 3", nil];
//    NSArray* array = [NSArray arrayWithObjects:@"String 1", @"String 2", @"String 3", nil];
    NSArray* array = @[@"String 1", @"String 2", @"String 3"];
    
    // Increasing
 
    for (int i = 0; i < [array count]; i++) {
        NSLog(@"%@",  [array objectAtIndex:i]);
        NSLog(@"index i = %d", i);
    }
    
    // Decreasing
    for (int i = [array count] - 1.0; i >= 0; i--) {
        NSLog(@"%@",  [array objectAtIndex:i]);
        NSLog(@"index i = %d", i);
    }
    
    
    for (NSString* string in array) {
        NSLog(@"%@, index = %lu",  string, [array indexOfObject:string]);
//        NSLog(@"index = %lu", [array indexOfObject:string]);
    }
     */
    
    SLObject* obj1 = [[SLObject alloc] init];
    SLObject* obj2 = [[SLObject alloc] init];
    SLChild* obj3 = [[SLChild alloc] init];
    
    obj1.name = @"Object 1";
    obj2.name = @"Object 2";
    [obj3 setName:@"Object 3"];
    
    obj3.lastName = @"Jordon";
    
    NSArray* array = [NSArray arrayWithObjects:obj1, obj2, obj3, nil];
    
    for (SLObject* obj in array) {
        NSLog(@"name = %@", obj.name);
        [obj action];
        
        if ([obj isKindOfClass:[SLChild class]]) {
            SLChild* child = (SLChild*)obj;
            NSLog(@"Last name = %@", child.lastName);
        }
    }
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
