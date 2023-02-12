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

    public init(termsOfUse: String = "利用規約", privacyPolicy: String = "プライバシーポリシー", writeReview: String = "レビューを書く", shareApp: String = "アプリを共有する", knowDeveloper: String = "開発者について知る", license: String = "ライセンス", version: String = "バージョン") {
        self.termsOfUse = termsOfUse
        self.privacyPolicy = privacyPolicy
        self.writeReview = writeReview
        self.shareApp = shareApp
        self.knowDeveloper = knowDeveloper
        self.license = license
        self.version = version
    }
}
