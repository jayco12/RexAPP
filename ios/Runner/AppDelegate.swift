import UIKit
import Flutter
import GoogleMaps  

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
      <!-- TODO: Add your Google Maps API key here -->
        <meta-data android:name="com.google.android.geo.API_KEY"
               android:value="AIzaSyDFODHdzbPT3Yxj7I-gu4FH0xNYcSH3eSY"/>

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
