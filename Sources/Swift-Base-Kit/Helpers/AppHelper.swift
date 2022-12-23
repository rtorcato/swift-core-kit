//
//  AppHelper.swift
//  AppleCore
//
//  Created by Richard Torcato on 2022-09-06.
//

import Foundation
import SwiftUI

final class AppHelper {
    
    static let instance = AppHelper() // Singleton
    
    init() {
       
    }
    
    static var isMacOS: Bool {
        #if os(iOS)
        return true
        #else
        return false
        #endif
    }
    
    static var isDebug: Bool {
        #if DEBUG
            return true
        #else
            return false
        #endif
    }
    
    static var hasDynamicIsland: Bool {
       UIDevice.current.name == "iPhone 14 Pro" || UIDevice.current.name == "iPhone 14 Pro Max"
    }
    
    static var deviceName: String{
        return UIDevice.current.name
    }
   
    
    static var appVersion: String {
        (Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String) ?? "_error"
    }
    static var buildVersion: String {
        (Bundle.main.infoDictionary?["CFBundleVersion"] as? String) ?? "_error"
    }
    
    #if os(iOS)
    static func isUsingSplitView()->Bool{
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else{return false}
        return screen.windows.first?.frame.size != screen.screen.bounds.size
    }
    #endif
    
    #if os(iOS)
      static let deviceType: UIUserInterfaceIdiom = UIDevice.current.userInterfaceIdiom
    #endif
    
    // MacOS Data....
    static var screen: CGRect{
        #if os(iOS)
        return UIScreen.main.bounds
        #else
        return NSScreen.main!.visibleFrame
        #endif
    }
    
    // hides the tab bar default appearance
    #if os(iOS)
    static func hideTabBarAppearance() {
        UITabBar.appearance().isHidden = true
    }
    #endif
    
    #if canImport(UIKit)
    static func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    #endif
    
    func performHeavyTask() async {
        // Wait for 5 seconds
        try? await Task.sleep(nanoseconds: 5 * 1_000_000_000)
    }
}
