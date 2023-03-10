import XCTest
@testable import YoutubeModel
import WebServiceURLMock

final class YoutubeModelTests: XCTestCase {
    lazy var decoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return decoder
    }()
    
    func testVideoDecode() throws {
        let data = try Bundle.module.data(forResource: "Video", withExtension: "json")
        let video = try decoder.decode(Video.self, from: data)
        XCTAssertEqual(video.etag, "SOQ7sWj86nwfBcPuQFzexCfVEQ4")
    }
    
    func testVidoesResponseDecode() throws {
        let data = try Bundle.module.data(forResource: "VideosResponse", withExtension: "json")
        let videos = try decoder.decode(Videos.self, from: data)
        XCTAssertEqual(videos.items.count, 20)
    }
    
    func testErrorResponseDecode() throws {
        let data = try Bundle.module.data(forResource: "ErrorResponse", withExtension: "json")
        let errorResponse = try decoder.decode(ErrorResponse.self, from: data)
        XCTAssertEqual(errorResponse.error.errors.count, 1)
    }
    
    func testResponseErrorDecoded() throws {
        let data = try Bundle.module.data(forResource: "ErrorResponse", withExtension: "json")
        let errorResponse = try decoder.decode([String: ResponseError].self, from: data)
        XCTAssertEqual(errorResponse["error"]?.errors.count, 1)
    }
}
