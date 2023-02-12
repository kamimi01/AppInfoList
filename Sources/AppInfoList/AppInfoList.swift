import SwiftUI
//import LicenseList

public struct AppInfoListView {
    @Environment(\.openURL) var openURL
    public let appearance: AppInfoAppearance
    public let info: AppInfo

    public init(appearance: AppInfoAppearance, info: AppInfo) {
        self.appearance = appearance
        self.info = info
    }

    public var body: some View {
        NavigationView {
            List {
                Section(header: Text("サポート")) {
                    if appearance.showCells.isShowingWriteReview {
                        writeAppReview
                    }
                    if appearance.showCells.isShowingKnowApp {
                        knowApp
                    }
                }

                Section(header: Text("アプリについて")) {
                    if appearance.showCells.isShowingShareApp {
                        shareApp
                    }
                    if appearance.showCells.isShowingTermsOfUse {
                        termsOfUse
                    }
                    if appearance.showCells.isShowingPrivacyPolicy {
                        privacyPolicy
                    }
//                    if appearance.showCells.isShowingLicense {
//                        license
//                    }
                    if appearance.showCells.isShowingVersion {
                        version
                    }
                }
            }
            .listStyle(.insetGrouped)
        }
    }
}

private extension AppInfoListView {
    var termsOfUse: some View {
        Button(action:{
            openURL(info.termOfUseURL)
        }) {
            HStack {
                Text("利用規約")
                Spacer()
            }
        }
        .foregroundColor(appearance.cellTextColor)
    }

    var privacyPolicy: some View {
        Button(action:{
            openURL(info.privacyPolicyURL)
        }) {
            HStack {
                Text("プライバシーポリシー")
                Spacer()
            }
        }
        .foregroundColor(appearance.cellTextColor)
    }

//    var license: some View {
//        let fileURL = Bundle.main.url(forResource: "license-list", withExtension: "plist")!
//        return NavigationLink("ライセンス") {
//            LicenseListView(fileURL: fileURL)
//                .navigationTitle("ライセンス")
//                .navigationBarTitleDisplayMode(.inline)
//        }
//    }

    var writeAppReview: some View {
        Button(action:{
            openURL(URL(string: "https://apps.apple.com/app/id\(info.appStoreID)?action=write-review")!)
        }) {
            HStack {
                Text("レビューを書く")
                Spacer()
            }
        }
        .foregroundColor(appearance.cellTextColor)
    }

    var shareApp: some View {
        ShareLink(item: info.appURL) {
            HStack {
                Text("アプリを共有する")
                Spacer()
            }
        }
        .foregroundColor(appearance.cellTextColor)
    }

    var knowApp: some View {
        Button(action:{
            openURL(info.developerInfoURL)
        }) {
            HStack {
                Text("開発者について知る")
                Spacer()
            }
        }
        .foregroundColor(appearance.cellTextColor)
    }

    var version: some View {
        HStack {
            Text("バージョン")
                .foregroundColor(appearance.cellTextColor)
            Spacer()
            Text(Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "")
                .foregroundColor(appearance.versionTextColor)
        }
    }
}
