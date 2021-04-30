import Foundation
import XercesSwift

class MyXMLParseConsumer: XMLParseConsumer {
    
    override init() {
        super.init()
    }
    
    override func startElement(name: String) {
        print("start element: \(name)")
    }
    
}

if CommandLine.arguments.count != 2 {
    print("ERROR: need exactly one argument = path XML file to parse")
}
else {
    let parseConsumer = MyXMLParseConsumer()
    let parser = XercesParser(withParseConsumer: parseConsumer)
    let returnCode = parser.parse(fromPath: CommandLine.arguments[1])
    print("return code: \(returnCode)")
}
