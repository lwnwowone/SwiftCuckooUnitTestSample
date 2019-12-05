import XCTest
import Cuckoo
@testable import CuckooSample

class CuckooSampleTests: XCTestCase {
    
    let userService = UserService()

    func testGetTokenBeforeRequesting() {
        let token = userService.getUserToken()
        
        XCTAssertTrue("" == token)
    }
    
    func testGetTokenAfterRequesting() {
        //create mock client
        let mockNetworkClient = MockNetworkClient();
        //stubbing function "get"
        stub(mockNetworkClient) { stub in
            when(stub.get(urlString: anyString())).thenReturn("mock_token")
        }
        //inject mock client to under testing objet
        userService.networkClient = mockNetworkClient;
        
        //test case
        XCTAssertTrue(userService.login(username: "alanc", password: "123456"))
        let token = userService.getUserToken()
        XCTAssertTrue("mock_token" == token)
    }

}
