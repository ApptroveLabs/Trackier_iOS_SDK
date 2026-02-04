//
//  ApptroveSDKTests.swift
//  ApptroveSDKTests
//
//  Updated by Satyam Jha on 04/02/26.
//

import XCTest
@testable import ApptroveSDK

final class ApptroveSDKTests: XCTestCase {
    func testSDKVersion() {
        // Test that SDK version constant is accessible
        XCTAssertFalse(Constants.SDK_VERSION.isEmpty)
        XCTAssertEqual(Constants.SDK_VERSION, "2.0.1")
    }
    
    func testAppTroveEventCreation() {
        // Test event creation
        let event = AppTroveEvent(id: "test_event")
        XCTAssertEqual(event.id, "test_event")
    }
    
    func testSDKConfigCreation() {
        // Test config creation
        let config = AppTroveSDKConfig(appToken: "test-token", env: AppTroveSDKConfig.ENV_DEVELOPMENT)
        XCTAssertEqual(config.appToken, "test-token")
        XCTAssertEqual(config.env, AppTroveSDKConfig.ENV_DEVELOPMENT)
    }
}

