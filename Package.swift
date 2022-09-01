// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WhiteLabel - Utils",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "WhiteLabel - Utils",
            targets: ["WhiteLabel - Utils"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/devicekit/DeviceKit", from: "4.6.1"),
        .package(url: "https://github.com/b7anka/SwiftLocation", from: "5.1.1"),
        .package(url: "https://github.com/malcommac/SwiftDate.git", from: "6.3.1"),
        .package(url: "https://github.com/Daltron/NotificationBanner", from: "3.1.0"),
        .package(url: "https://github.com/rwbutler/Hyperconnectivity", from: "1.1.1"),
        .package(url: "https://github.com/marmelroy/PhoneNumberKit", from: "3.4.4"),
        .package(url: "https://github.com/danielgindi/Charts.git", from: "3.6.0"),
        .package(url: "https://github.com/evgenyneu/Cosmos.git", from: "23.0.0"),
        .package(url: "https://github.com/Mobilinked/MbSwiftUIFirstResponder", branch: "main"),
        .package(url: "https://github.com/JWAutumn/ACarousel", branch: "main"),
        .package(url: "https://github.com/kizitonwose/CountryPickerView.git", from: "3.3.0"),
        .package(url: "https://github.com/onevcat/Kingfisher.git", from: "7.3.1"),
        .package(url: "https://github.com/airbnb/lottie-ios.git", from: "3.4.1"),
        .package(url: "https://github.com/yonat/MultiSlider", from: "1.12.3")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "WhiteLabel - Utils", dependencies: [
                .product(name: "DeviceKit", package: "DeviceKit"),
                .product(name: "SwiftLocation", package: "SwiftLocation"),
                .product(name: "SwiftDate", package: "SwiftDate"),
                .product(name: "NotificationBannerSwift", package: "NotificationBanner"),
                .product(name: "Hyperconnectivity", package: "Hyperconnectivity"),
                .product(name: "PhoneNumberKit", package: "PhoneNumberKit"),
                .product(name: "Charts", package: "Charts"),
                .product(name: "Cosmos", package: "Cosmos"),
                .product(name: "MbSwiftUIFirstResponder", package: "MbSwiftUIFirstResponder"),
                .product(name: "ACarousel", package: "ACarousel"),
                .product(name: "CountryPickerView", package: "CountryPickerView"),
                .product(name: "Kingfisher", package: "Kingfisher"),
                .product(name: "Lottie", package: "lottie-ios"),
                .product(name: "MultiSlider", package: "MultiSlider")
                                                      ], path: "./Sources"),
    ]
)
