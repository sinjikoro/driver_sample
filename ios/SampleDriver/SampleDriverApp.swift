//
//  SampleDriverApp.swift
//  SampleDriver
//
//  Created by 長崎 晋士 on 2023/04/18.
//

import SwiftUI
import Flutter

@main
struct SampleDriverApp: App {
    @StateObject var flutterDependencies = FlutterDependencies()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(flutterDependencies)
        }
    }
}

class FlutterDependencies: ObservableObject {
  let flutterEngine = FlutterEngine(name: "my flutter engine")
  init(){
    flutterEngine.run()
  }
}
