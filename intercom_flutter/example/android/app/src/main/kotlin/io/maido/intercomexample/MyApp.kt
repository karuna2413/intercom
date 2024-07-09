package io.maido.intercomexample

import android.app.Application
import io.maido.intercom.IntercomFlutterPlugin

class MyApp : Application() {
  override fun onCreate() {
    super.onCreate()

    // Initialize the Intercom SDK here also as Android requires to initialize it in the onCreate of
    // the application.
    IntercomFlutterPlugin.initSdk(this, appId = "po0169nf", androidApiKey = "android_sdk-2761e59802bedd3baa9ca3a1aaa031b9f2ff61a9")


  }
}
