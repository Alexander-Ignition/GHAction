import XCTest
import Logging
import LoggingGitHubActions
@testable import GHAction

final class GHActionTests: XCTestCase {
    func testExample() {

        LoggingSystem.bootstrap { label in
            if ProcessInfo.processInfo.environment["GITHUB_ACTIONS"] == "true" {
                return GitHubActionsLogHandler.standardOutput(label: label)
            } else {
                return StreamLogHandler.standardOutput(label: label)
            }
        }

        XCTAssertEqual(GHAction().text, "Hello, World!")

        let logger = Logger(label: "com.example.MyApp")
        logger.trace("trace")
        logger.debug("debug")
        logger.info("info")
        logger.notice("notice")
        logger.warning("warning")
        logger.error("Something went wrong")
        logger.critical("critical")
    }
}
