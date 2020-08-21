//
//  UIViewController+Login.m
//  Login_Project
//
//  Created by cc on 2020/8/21.
//

#import "UIViewController+Login.h"



@implementation UIViewController (Login)

//当前页面展示的控制器
+ (UIViewController *)currentViewController {
    id app = [NSClassFromString(@"UIApplication") valueForKey:@"sharedApplication"];
    UIViewController *viewController = [[[app delegate] window] rootViewController];
    return [self findBestViewController:viewController];
}

+ (UIViewController *)findBestViewController:(UIViewController *)vc
{
    if (vc.presentedViewController) {
        // Return presented view controller
        return [self findBestViewController:vc.presentedViewController];
        
    } else if ([vc isKindOfClass:[UISplitViewController class]]) {
        // Return right hand side
        UISplitViewController *svc = (UISplitViewController *)vc;
        if (svc.viewControllers.count > 0)
            return [self findBestViewController:svc.viewControllers.lastObject];
        else
            return vc;
        
    } else if ([vc isKindOfClass:[UINavigationController class]]) {
        // Return top view
        UINavigationController *svc = (UINavigationController *)vc;
        if (svc.viewControllers.count > 0)
            return [self findBestViewController:svc.topViewController];
        else
            return vc;
        
    } else if ([vc isKindOfClass:[UITabBarController class]]) {
        // Return visible view
        UITabBarController *svc = (UITabBarController *)vc;
        if (svc.viewControllers.count > 0)
            return [self findBestViewController:svc.selectedViewController];
        else
            return vc;
    }else if ([vc isKindOfClass:[UIAlertController class]]) {
        return [self p_handleAlertTopViewController:vc.presentingViewController] ;
        
    } else {
        // Unknown view controller type, return last child view controller
        return vc;
    }
}

//只给 上面的 UIAlertController调用
//获取 UIAlertController 下面一层的vc
+ (UIViewController *)p_handleAlertTopViewController:(UIViewController *)vc {
    if ([vc isKindOfClass:[UINavigationController class]]) {
        return [self p_handleAlertTopViewController:[(UINavigationController *)vc topViewController]];
    } else if ([vc isKindOfClass:[UITabBarController class]]) {
        return [self p_handleAlertTopViewController:[(UITabBarController *)vc selectedViewController]];
    } else if (vc.presentedViewController && ![vc.presentedViewController isKindOfClass:[UIAlertController class]]) {//这里要判断并且不是 UIAlertController
        return [self p_handleAlertTopViewController:vc.presentedViewController];
    }else {
        return vc;
    }
}

@end
