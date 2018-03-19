//
//  Vectaury.h
//
//  Copyright © 2017 Adnow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <UIKit/UIKit.h>
#import <UserNotifications/UserNotifications.h>

/*!
 @header Vectaury
 Vectaury's SDK supports iOS 9.0+
 
 <h3>New on SDK 1.4 : </h3>
 <ul>
 <li> Setting.bundle : The user can opt-out Vectaury data sharing from the app settings</li>
 <li> New algorithm of location data collecting</li>
 <li> Opt-in banner display option</li>
 <li> Educational popup display option</li>
 <li> Link to settings banner display option</li>
 </ul>
 <br>
 <br>
 
 <h1>SDK 1.4</h1>

 <h2 id="installation">Installation</h2>
 <h3>Using CocoaPods</h3>
 <ul>
 <li>Add Vectaury dependance to Podfile
 <pre><code>pod "Vectaury"
 </code></pre>
 </li>
 <li>Add Vectaury Settings to Podfile (if you already have a Settings.bundle file, skip this step and follow <a href="#note">this instruction</a> )
 <pre><code>FileUtils.cp_r('Pods/Vectaury/Vectaury.framework/Settings.bundle', 'Settings.bundle', :remove_destination => true)
 </code></pre>
 </li>
 <li>In your shell, run
 <pre><code>pod install
 </code></pre>
 <li>Add the Settings.bundle file to your project and target the application (if you already have a Settings.bundle file, skip this step)</li>
 </ul>
 
 <h3>Linking the framework directly</h3>
 <ul>
 <li>Download the framework
 <ul>
 <li><a href="ios/Vectaury-ios-1.4.zip">Version 1.4</a>
 </li>
 </ul>
 </li>
 <li>Extract the zip and link the binary with the library.
 <img src="images/lib-ios.png" alt="lib-ios" style="width:100%;">
 </li>
 <li>
 Add the path of the framework in your target's build settings "framework search path"
 </li>
 <li>Add the Vectaury.framework/Settings.bundle file to your project and target the application (if you already have a Settings.bundle file, skip this step and follow <a href="#note">this instruction</a> )</li>
  </ul>
 
 <h3 id="note">Note :</h3>
 if you already have a Settings.bundle in your project, you just need to copy language folder and add in your root.plist file :
 <pre><code>
 <dict>
    <key>StringsTable</key>
    <string>Root</string>
    <key>PreferenceSpecifiers</key>
    <array>
        <dict>
            <key>FooterText</key>
            <string>Txt</string>
            <key>Type</key>
            <string>PSGroupSpecifier</string>
            <key>Title</key>
            <string>Privacy</string>
        </dict>
        <dict>
            <key>Type</key>
            <string>PSToggleSwitchSpecifier</string>
            <key>Title</key>
            <string>DataVectaury</string>
            <key>Key</key>
            <string>io.vectaury.userOptInOut</string>
            <key>DefaultValue</key>
            <true/>
        </dict>
    </array>
 </dict>
 </code>
 </pre>
 
 <h2 id="integration">Integration</h2>
 <div class="container">
 <h3>0 - Prerequisite</h3>
 <ul>
 <li>
 You need an API key. <a href="https://cdn.vectaury.io/static/sdk/index.html">You can request an API key here</a>.
 </li>
 <li>
 From iOS 10, set "NSLocationAlwaysUsageDescription" and "NSLocationWhenInUseUsageDescription" in the Info.plist file.
 </li>
 <li>
 From iOS 11, set "NSLocationAlwaysAndWhenInUseUsageDescription" and "NSLocationWhenInUseUsageDescription" in the Info.plist file.
 </li>
 </ul>
 <h3>1 - Init Vectaury SDK from the AppDelegate.m file</h3>
 <ul>
 <li>
 Init SDK with +initWithApiKey:withLaunchOptions:withPush: function.
 </li>
 </ul>
 </div>
 <h3>2 - Ask for Authorization</h3>
 <ul>
 <li>
 Ask the user to share their location data (popup) with the +requestAuthorization: function.
 </li>
 </ul>
 
 <h3>3 - Start Location tracking position</h3>
 <ul>
 <li>
 Start to collect location data with +startLocation function
 </li>
 </ul>
 
 @copyright Vectaury
 @updated 2017-11-09
 @meta http-equiv=”refresh” content=”0;https://vectaury.io"
 
 */

@interface Vectaury : NSObject
/*!
 * @discussion initialisation du sdk
 * @param key you need a API key. <a href="https://cdn.vectaury.io/static/sdk/index.html">Get a key here</a>
 * @param launchOptions launchOptions
 * @param pushIsEnabled enable the push notification
 */
+ (void)initWithApiKey:(NSString *)key withLaunchOptions:(NSDictionary *)launchOptions  withPush:(BOOL) pushIsEnabled;

/*!
@discussion make authorization to location
 <h3 id="repository">Request permission to use location services</h3>
 <ul>
 <li>
 Put this line where it makes the most sense for your app user experience. This will trigger a permission request popup. If you already asked thoses permissions elsewhere in your app, you don't need to call it (if you do, it will have no impact).
 
 </li>
 </ul>
 <h3 id="repository">Enable Background Mode</h3>
 You need to tick the box "Location updates" in the "Capabilities" of your target.
 <img src="images/background-ios-location.png" alt="background-ios" style="width:100%;">
 */

+ (void)requestAuthorization;


+ (void)secondRequestAuthorization;

/*!
 * @discussion start location of user (Important function)
 */
+ (void)startLocation;

/*!
 * @discussion Disable Vectaury (tracking + API calls)
 We strongly suggest you to put an opt-out feature in your app settings. You can easily opt-in or op out with the following class methods. Opting out will stop location data polling and corresponding API calls.
 */
+ (void)optOut;

/*!
 * @discussion Enable Vectaury (tracking & API calls), this function is only needed if you call optOut first
 */
+ (void)optIn;

/*!
 * @discussion Register the Remote Notification
 <h3 id="repository">Active Push</h3>
 <ul>
 <li> Register the Remote Notification in your AppDelegate.m
 
 </li>
 </ul>
 <ul>
 <li> For iOS 10+ a new package need to be imported </li>
 
 </ul>
 <pre><code><span class="gray">  #import &lt;UserNotifications/UserNotifications.h&gt;</span>
 </code></pre>
 
 <h3 id="repository">Enable Push Mode</h3>
 If you want to enable push mode you need to switch on "Push Notifications" in the "Capabilities" of your target.
 <img src="images/background-ios-push.png" alt="push-ios" style="width:100%;">
 * @param application application object
 * @param deviceToken device token for push
 */

+ (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken;

/*!
 * @discussion Change language of pop-up generate by the sdk
 @param lang Language, note: The String need to be formed, like "fr" for french and "en" for english
 */
+(void)setlanguage:(NSString *) lang;


#if DEBUG

+(void)showoptIn;

+(void)showeducational;

+(void)showlinkTosettings;

#endif
@end
