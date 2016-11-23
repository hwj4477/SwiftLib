//
//  NSURLRequestExtension.swiff
//
//  by hwj4477@gmail.com
//
//  last update 2016.06.27
//

import UIKit

extension URLRequest {
    
    // Get Parameter from NSURLRequest
    func getParam(_ key: String) -> String? {
        
        if let query = self.url?.query {
            
            let keyValue = query.components(separatedBy: "&")
            
            if keyValue.count > 0 {
                
                for param in keyValue {
                    
                    let paramValue = param.components(separatedBy: "=")
                    if paramValue.count > 1  && paramValue[0] == key {
                        
                        return paramValue[1]
                    }
                }
            }
        }
        
        return nil
    }
}
