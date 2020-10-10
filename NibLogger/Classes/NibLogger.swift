import Foundation

public final class NibLogger {
    // MARK: - Con(De)structor
    private init() { }
    
    // MARK: - Properties
    private static let shared: NibLogger = NibLogger()
    
    #if DEBUG
    private var isDebug: Bool = true
    #else
    private var isDebug: Bool = false
    #endif
    
    private enum NibLogType {
        case debug
        case info
        case warn
        case error
        case tag
        
        var prefix: String {
            switch self {
            case .debug: return "🟢"
            case .info:  return "🔵"
            case .warn:  return "🟡"
            case .error: return "🔴"
            case .tag:   return ""
            }
        }
        
        func getCode(tag: String = "") -> String {
            switch self {
            case .debug: return "DEBUG"
            case .info:  return "INFO"
            case .warn:  return "WARN"
            case .error: return "ERROR"
            case .tag:   return tag
            }
        }
    }
    
    private var messageFormat: String = "%@[%@][%@ -> line: %@]: %@"
    
    public static func DEBUG( _ message: String, _ file: String = #file, _ line: Int = #line) {
        printLog(type: .debug, message: message, file: file, line: line)
    }

    public static func INFO( _ message: String, _ file: String = #file, _ line: Int = #line) {
        printLog(type: .info, message: message, file: file, line: line)
    }
    
    public static func WARN( _ message: String, _ file: String = #file, _ line: Int = #line) {
        printLog(type: .warn, message: message, file: file, line: line)
    }
    
    public static func ERROR( _ message: String, _ file: String = #file, _ line: Int = #line) {
        printLog(type: .error, message: message, file: file, line: line)
    }
    
    public static func TAG(tag: String, _ message: String, _ file: String = #file, _ line: Int = #line) {
        printLog(type: .tag, message: message, tag: tag, file: file, line: line)
    }
    
    private static func printLog(type: NibLogType, message: String, tag: String = "", file: String, line: Int) {
        guard shared.isDebug else { return }
        let _file: String = file.components(separatedBy: "/").last ?? file
        let _line: String = "\(line)"
        let log = String(format: shared.messageFormat, type.prefix, type.getCode(tag: tag), _file, _line, message)
        print(log)
    }
}
