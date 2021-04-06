import Foundation

public final class LOG {
    
    // MARK: - Con(De)structor
    private init() { }
    
    // MARK: - Properties
    public static let shared: LOG = LOG()
    
    #if DEBUG
    private var isDebug: Bool = true
    #else
    private var isDebug: Bool = false
    #endif
    
    public var isDetailLog: Bool = true
    
    private enum NibLogType {
        case debug
        case info
        case warn
        case error
        case tag(String)
        
        var prefix: String {
            switch self {
            case .debug: return "🟢"
            case .info:  return "🔵"
            case .warn:  return "🟡"
            case .error: return "🔴"
            case .tag:   return ""
            }
        }
        
        var code: String {
            switch self {
            case .debug: return "DEBUG"
            case .info:  return "INFO"
            case .warn:  return "WARN"
            case .error: return "ERROR"
            case .tag(let tagName): return tagName
            }
        }
    }
    
    private var messageDetailFormat: String = "%@[%@][%@ %@ -> line: %@]: "
    private var messageNormalFormat: String = "%@[%@]: "
    
    public static func DEBUG( _ message: Any, _ file: String = #file, _ line: Int = #line, _ function: String  = #function) {
        printLog(type: .debug, message: message, file: file, line: line, function: function)
    }

    public static func INFO( _ message: Any, _ file: String = #file, _ line: Int = #line, _ function: String  = #function) {
        printLog(type: .info, message: message, file: file, line: line, function: function)
    }
    
    public static func WARN( _ message: Any, _ file: String = #file, _ line: Int = #line, _ function: String  = #function) {
        printLog(type: .warn, message: message, file: file, line: line, function: function)
    }
    
    public static func ERROR( _ message: Any, _ file: String = #file, _ line: Int = #line, _ function: String  = #function) {
        printLog(type: .error, message: message, file: file, line: line, function: function)
    }
    
    public static func TAG(tag: String, _ message: Any, _ file: String = #file, _ line: Int = #line, _ function: String  = #function) {
        printLog(type: .tag(tag), message: message, tag: tag, file: file, line: line, function: function)
    }
    
    private static func printLog(type: NibLogType, message: Any, tag: String = "", file: String, line: Int, function: String) {
        guard shared.isDebug else { return }
        let _file: String = file.components(separatedBy: "/").last ?? file
        let _function: String = function.isEmpty ? "" : "/ \(function)"
        let _line: String = "\(line)"
        
        let log = shared.isDetailLog ?
            String(format: shared.messageDetailFormat, type.prefix, type.code, _file, _function, _line) :
            String(format: shared.messageNormalFormat, type.prefix, type.code)
        print("\(log)\(message)")
    }
}
