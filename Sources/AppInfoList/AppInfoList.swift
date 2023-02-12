import SwiftUI
//import LicenseList

public struct AppInfoListView: View {
    @Environment(\.openURL) var openURL
    let appearance: AppInfoAppearance
    let info: AppInfo

    public init(appearance: AppInfoAppearance, info: AppInfo) {
        self.appearance = appearance
        self.info = info
    }

    public var body: some View {
        List {
            Section(header: Text("サポート")) {
                if appearance.showCells.isShowingWriteReview {
                    writeAppReview
                }
                if appearance.showCells.isShowingKnowDeveloper {
                    knowDeveloper
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

private extension AppInfoListView {
    var termsOfUse: some View {
        Button(action:{
            openURL(info.termOfUseURL)
        }) {
            HStack {
                Text(appearance.cellTitles.termsOfUse)
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
                Text(appearance.cellTitles.privacyPolicy)
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
                Text(appearance.cellTitles.writeReview)
                Spacer()
            }
        }
        .foregroundColor(appearance.cellTextColor)
    }

    var shareApp: some View {
        ShareLink(item: info.appURL) {
            HStack {
                Text(appearance.cellTitles.shareApp)
                Spacer()
            }
        }
        .foregroundColor(appearance.cellTextColor)
    }

    var knowDeveloper: some View {
        Button(action:{
            openURL(info.developerInfoURL)
        }) {
            HStack {
                Text(appearance.cellTitles.knowDeveloper)
                Spacer()
            }
        }
        .foregroundColor(appearance.cellTextColor)
    }

    var version: some View {
        HStack {
            Text(appearance.cellTitles.version)
                .foregroundColor(appearance.cellTextColor)
            Spacer()
            Text(Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "")
                .foregroundColor(appearance.versionTextColor)
        }
    }
}
