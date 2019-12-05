// MARK: - Mocks generated from file: CuckooSample/NetworkClient.swift at 2019-12-05 06:48:45 +0000


import Cuckoo
@testable import CuckooSample

import UIKit


 class MockNetworkClient: NetworkClient, Cuckoo.ClassMock {
    
     typealias MocksType = NetworkClient
    
     typealias Stubbing = __StubbingProxy_NetworkClient
     typealias Verification = __VerificationProxy_NetworkClient

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: NetworkClient?

     func enableDefaultImplementation(_ stub: NetworkClient) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     override func get(urlString: String) -> String? {
        
    return cuckoo_manager.call("get(urlString: String) -> String?",
            parameters: (urlString),
            escapingParameters: (urlString),
            superclassCall:
                
                super.get(urlString: urlString)
                ,
            defaultCall: __defaultImplStub!.get(urlString: urlString))
        
    }
    

	 struct __StubbingProxy_NetworkClient: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func get<M1: Cuckoo.Matchable>(urlString: M1) -> Cuckoo.ClassStubFunction<(String), String?> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: urlString) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockNetworkClient.self, method: "get(urlString: String) -> String?", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_NetworkClient: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func get<M1: Cuckoo.Matchable>(urlString: M1) -> Cuckoo.__DoNotUse<(String), String?> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: urlString) { $0 }]
	        return cuckoo_manager.verify("get(urlString: String) -> String?", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class NetworkClientStub: NetworkClient {
    

    

    
     override func get(urlString: String) -> String?  {
        return DefaultValueRegistry.defaultValue(for: (String?).self)
    }
    
}

