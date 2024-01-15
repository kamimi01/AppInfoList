//
//  File.swift
//  
//
//  Created by mikaurakawa on 2023/02/12.
//

import Foundation
import SwiftUI

/// アプリについてのリストの見た目を定義する
public struct AppInfoAppearance {
    /// セルのテキストの色
    let cellTextColor: Color
    /// バージョンのテキストの色
    let versionTextColor: Color
    /// セルに表示するテキスト
    let cellTitles: CellTitles

    public init(cellTextColor: Color = .black, versionTextColor: Color = .black, cellTitles: CellTitles = CellTitles()) {
        self.cellTextColor = cellTextColor
        self.versionTextColor = versionTextColor
        self.cellTitles = cellTitles
    }
}

/// セルに表示するテキスト
public struct CellTitles {
    /// 利用規約のタイトル
    let termsOfUse: String
    /// プライバシポリシーのタイトル
    let privacyPolicy: String
    /// レビューを書くのタイトル
    let writeReview: String
    /// アプリを共有するのタイトル
    let shareApp: String
    /// 開発者について知るのタイトル
    let knowDeveloper: String
    /// ライセンスのタイトル
    let license: String
    /// バージョンのタイトル
    let version: String

    public init(
        termsOfUse: String = String(localized: "Terms of Use"),
        privacyPolicy: String = String(localized: "Privacy Policy"),
        writeReview: String = String(localized: "Write Review"),
        shareApp: String = String(localized: "Share App"),
        knowDeveloper: String = String(localized: "Know Developer"),
        license: String = String(localized: "License"),
        version: String = String(localized: "Version")
    ) {
        self.termsOfUse = termsOfUse
        self.privacyPolicy = privacyPolicy
        self.writeReview = writeReview
        self.shareApp = shareApp
        self.knowDeveloper = knowDeveloper
        self.license = license
        self.version = version
    }
}
