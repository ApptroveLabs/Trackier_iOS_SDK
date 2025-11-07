import XCTest
@testable import trackier_ios_sdk

final class TrackierSDKTests: XCTestCase {
    func testSDKVersion() {
        // Test that SDK version constant is accessible
        XCTAssertFalse(Constants.SDK_VERSION.isEmpty)
        XCTAssertEqual(Constants.SDK_VERSION, "1.6.75")
    }
    
    func testTrackierEventCreation() {
        // Test event creation
        let event = TrackierEvent(id: "test_event")
        XCTAssertEqual(event.id, "test_event")
    }
    
    func testSDKConfigCreation() {
        // Test config creation
        let config = TrackierSDKConfig(appToken: "test-token", env: TrackierSDKConfig.ENV_DEVELOPMENT)
        XCTAssertEqual(config.appToken, "test-token")
        XCTAssertEqual(config.env, TrackierSDKConfig.ENV_DEVELOPMENT)
    }
}

