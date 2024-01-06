import SwiftUI
import LicenseList

public struct AppInfoListView: View {
    @Environment(\.openURL) var openURL
    let appearance: AppInfoAppearance
    let info: AppInfo
    let licenseFileURL: URL?

    public init(appearance: AppInfoAppearance = AppInfoAppearance(), info: AppInfo, licenseFileURL: URL?) {
        self.appearance = appearance
        self.info = info
        self.licenseFileURL = licenseFileURL
    }

    public var body: some View {
        List {
            Section(header: Text("Support")) {
                if let id = info.appStoreID {
                    writeAppReview(id: id)
                }
                if let url = info.developerInfoURL {
                    knowDeveloper(url: url)
                }
            }

            Section(header: Text("About App")) {
                if let url = info.appURL {
                    shareApp(url: url)
                }
                if let url = info.termOfUseURL {
                    termsOfUse(url: url)
                }
                if let url = info.privacyPolicyURL {
                    privacyPolicy(url: url)
                }
                if let url = licenseFileURL {
                    license(url: url)
                }
                version
            }
        }
        .listStyle(.insetGrouped)
    }
}

private extension AppInfoListView {
    func termsOfUse(url: URL) -> some View {
        Button(action:{
            openURL(url)
        }) {
            HStack {
                Text(appearance.cellTitles.termsOfUse)
                Spacer()
            }
        }
        .foregroundColor(appearance.cellTextColor)
    }

    func privacyPolicy(url: URL) -> some View {
        Button(action:{
            openURL(url)
        }) {
            HStack {
                Text(appearance.cellTitles.privacyPolicy)
                Spacer()
            }
        }
        .foregroundColor(appearance.cellTextColor)
    }

    func license(url: URL) -> some View {
        NavigationLink {
            LicenseListView(fileURL: url)
                .foregroundColor(appearance.cellTextColor)
        } label: {
            Text(appearance.cellTitles.license)
                .foregroundColor(appearance.cellTextColor)
        }
        .navigationBarTitleDisplayMode(.inline)
    }

    func writeAppReview(id: String) -> some View {
        Button(action:{
            openURL(URL(string: "https://apps.apple.com/app/id\(id)?action=write-review")!)
        }) {
            HStack {
                Text(appearance.cellTitles.writeReview)
                Spacer()
            }
        }
        .foregroundColor(appearance.cellTextColor)
    }

    func shareApp(url: URL) -> some View {
        ShareLink(item: url) {
            HStack {
                Text(appearance.cellTitles.shareApp)
                Spacer()
            }
        }
        .foregroundColor(appearance.cellTextColor)
    }

    func knowDeveloper(url: URL) -> some View {
        Button(action:{
            openURL(url)
        }) {
            HStack {
                Text(appearance.cellTitles.knowDeveloper)
                Spacer()
            }
        }
        .foregroundColor(appearance.cellTextColor)
    }

    var version: some View {
        let version = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? ""
        let buildNumber = Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as? String ?? ""

        return HStack {
            Text(appearance.cellTitles.version)
                .foregroundColor(appearance.cellTextColor)
            Spacer()
            Text("\(version)(\(buildNumber))")
                .foregroundColor(appearance.versionTextColor)
        }
    }
}
