//
//  File.swift
//  
//
//  Created by mikaurakawa on 2023/02/12.
//

import Foundation
import SwiftUI

public struct AppInfoAppearance {
    /// セルのテキストの色
    let cellTextColor: Color
    /// バージョンのテキストの色
    let versionTextColor: Color
    /// セルを表示するかどうか
    let showCells: ShowCells

    init(cellTextColor: Color = .black, versionTextColor: Color = .black, showCells: ShowCells = ShowCells()) {
        self.cellTextColor = cellTextColor
        self.versionTextColor = versionTextColor
        self.showCells = showCells
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
    let isShowingKnowApp: Bool
    /// ライセンスを表示するか
    let isShowingLicense: Bool
    /// バージョンを表示するか
    let isShowingVersion: Bool

    init(isShowingTermsOfUse: Bool = true, isShowingPrivacyPolicy: Bool = true, isShowingWriteReview: Bool = true, isShowingShareApp: Bool = true, isShowingKnowApp: Bool = true, isShowingLicense: Bool = true, isShowingVersion: Bool = true) {
        self.isShowingTermsOfUse = isShowingTermsOfUse
        self.isShowingPrivacyPolicy = isShowingPrivacyPolicy
        self.isShowingWriteReview = isShowingWriteReview
        self.isShowingShareApp = isShowingShareApp
        self.isShowingKnowApp = isShowingKnowApp
        self.isShowingLicense = isShowingLicense
        self.isShowingVersion = isShowingVersion
    }
}

