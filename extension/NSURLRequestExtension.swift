//
//  NSURLRequestExtension.swiff
//
//  by hwj4477@gmail.com
//
//  last update 2016.06.27
//

extension NSURLRequest {
    
    // Get Parameter from NSURLRequest
    func getParam(key: String) -> String? {
    
        if let query = self.URL?.query {
            
            let keyValue = query.componentsSeparatedByString("&")
            
            if keyValue.count > 0 {
                
                for param in keyValue {
                    
                    let paramValue = param.componentsSeparatedByString("=")
                    if paramValue.count > 1  && paramValue[0] == key {
                        
                        return paramValue[1]
                    }
                }
            }
        }
    
        return nil
    }
}
