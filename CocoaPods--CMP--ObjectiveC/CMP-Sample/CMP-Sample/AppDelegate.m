//
//  AppDelegate.m
//  CMP-Sample
//
//  Created by Pernic on 30/07/2018.
//  Copyright © 2018 Vectaury. All rights reserved.
//

#import "AppDelegate.h"
#import <VectauryCMP/VectauryCMP.h>


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSString *apiKey = @"xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx";
    NSString *lang = @"fr";
    UIImage *logo = [UIImage imageNamed:@"logo.jpg"];
    UIColor *color = [[UIColor alloc]initWithRed:200/255.0 green:100/255.0 blue:50/255.0 alpha:1];
    NSString *subjectToGDPR = @"1";
    NSIndexSet *vendorUsed = [[NSIndexSet alloc]initWithIndex:368];
    NSString *privacyPolicy = @"https://www.vectaury.io/en/personal-data";
    NSString *title = @"Le respect de votre vie privée est notre priorité.";
    NSString *content = @"Afin d'améliorer notre application et vous adresser du contenu et/ou des offres commerciales personnalisées, nos partenaires et nous-mêmes collectons vos données personnelles comme vos données de navigation ou votre position géographique. Cela nous permet également de vous offrir un accès gratuit à notre service et nous nous engageons à diffuser des publicités dont les formats sont non intrusifs. \n\nEn acceptant, vous consentez à ce que nos partenaires et nous-même puissions collecter et traiter vos données personnelles à des fins d'analyse et de publicité. \n\nVous pouvez changer vos paramètres de confidentialité à tout moment depuis les réglages de l’application.";
    
    
    CMPConfiguration *conf = [[CMPConfiguration alloc]initWithObjcApiKey:apiKey language:lang logo:logo primaryColor:color subjectToGDPR:subjectToGDPR filter:vendorUsed privacyPolicy:privacyPolicy title:title content:content];
    
    [VectauryCMP initWithConf:conf];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
