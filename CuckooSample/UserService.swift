import UIKit

class UserService: NSObject {
    
    let apiHost = "http://15.213.11.39:9527"
    let loginEndpoint = "login"

    var networkClient = NetworkClient() //It must be "var" for testing, or we cannot replace it with the mock instance!
    
    var token = ""
    
    func login(username: String, password: String) -> Bool {
        let loginURLString = apiHost + loginEndpoint + "?username=" + username + "&password=" + password

        if let httpResponse = networkClient.get(urlString: loginURLString) {
            token = httpResponse
            return true
        }
        
        return false
    }
    
    func getUserToken() -> String {
        return token
    }
    
}
