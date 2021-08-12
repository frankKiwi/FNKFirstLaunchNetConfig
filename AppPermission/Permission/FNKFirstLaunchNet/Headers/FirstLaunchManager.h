//
//  FirstLaunchManager.h
//  Permission
//
//  Created by LWW on 2021/8/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FirstLaunchManager : NSObject


/***  网络环境描述 */

@property (nonatomic,copy)NSString*netStatusDesc;

/***  网络环境是否可用 */

@property (nonatomic,assign)BOOL netStatuAbility;

/***  继续开始网络监听 */

+ (void)startNetMonitor;

/***  停止网络监听 */

+ (void)stopNetMonitor;


/***  单例 */

+(FirstLaunchManager*)Handler;


/***  初始化配置 */

- (void)LaunchApplicationBlock:(void(^)(void))block;


/***  完成网络初始化 */

+ (void)finishLaunch;

/***  重置初始化 */

+ (void)restLaunch;


@end

NS_ASSUME_NONNULL_END
