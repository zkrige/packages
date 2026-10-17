// swift-tools-version: 5.9

// Copyright 2013 The Flutter Authors
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import PackageDescription

let package = Package(
  name: "google_sign_in_ios",
  platforms: [
    .iOS("15.0"),
    .macOS("12.0"),
  ],
  products: [
    .library(name: "google-sign-in-ios", targets: ["google_sign_in_ios"])
  ],
  dependencies: [
    .package(
      url: "https://github.com/google/GoogleSignIn-iOS.git",
      revision: "4ce331c226c24cfee688b31e9c3731cc5c5e2862")
  ],
  targets: [
    .target(
      name: "google_sign_in_ios",
      dependencies: [
        .product(name: "GoogleSignIn", package: "GoogleSignIn-iOS")
      ],
      resources: [
        .process("Resources")
      ]
    )
  ]
)
