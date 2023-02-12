//
//  File.swift
//  
//
//  Created by mikaurakawa on 2023/02/12.
//

import Foundation

public struct AppInfo {
    /// 利用規約のリンク
    let termOfUseURL: URL
    /// プライバシーポリシーのリンク
    let privacyPolicyURL: URL
    /// アプリのリンク
    let appURL: URL
    /// 開発者のリンク
    let developerInfoURL: URL
    /// App Store の ID
    let appStoreID: String

    init(termOfUseURL: URL, privacyPolicyURL: URL, appURL: URL, developerInfoURL: URL, appStoreID: String) {
        self.termOfUseURL = termOfUseURL
        self.privacyPolicyURL = privacyPolicyURL
        self.appURL = appURL
        self.developerInfoURL = developerInfoURL
        self.appStoreID = appStoreID
    }
}
