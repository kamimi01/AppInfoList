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
    /// セルを表示するかどうか
    let showCells: ShowCells
    /// セルに表示するテキスト
    let cellTitles: CellTitles

    public init(cellTextColor: Color = .black, versionTextColor: Color = .black, showCells: ShowCells = ShowCells(), cellTitles: CellTitles = CellTitles()) {
        self.cellTextColor = cellTextColor
        self.versionTextColor = versionTextColor
        self.showCells = showCells
        self.cellTitles = cellTitles
    }
}

/// セルを表示するかどうか
public struct ShowCells {
    /// 利用規約を表示するか
    let isShowingTermsOfUse: Bool
    /// プライバシーポリシーを表示するか
    let isShowingPrivacyPolicy: Bool
    /// レビューを書くを表示するか
    let isShowingWriteReview: Bool
    /// アプリを共有するを表示するか
    let isShowingShareApp: Bool
    /// 開発者について知るを表示するか
    let isShowingKnowDeveloper: Bool
    /// ライセンスを表示するか
    let isShowingLicense: Bool
    /// バージョンを表示するか
    let isShowingVersion: Bool

    public init(isShowingTermsOfUse: Bool = true, isShowingPrivacyPolicy: Bool = true, isShowingWriteReview: Bool = true, isShowingShareApp: Bool = true, isShowingKnowApp: Bool = true, isShowingLicense: Bool = true, isShowingVersion: Bool = true) {
        self.isShowingTermsOfUse = isShowingTermsOfUse
        self.isShowingPrivacyPolicy = isShowingPrivacyPolicy
        self.isShowingWriteReview = isShowingWriteReview
        self.isShowingShareApp = isShowingShareApp
        self.isShowingKnowDeveloper = isShowingKnowApp
        self.isShowingLicense = isShowingLicense
        self.isShowingVersion = isShowingVersion
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
