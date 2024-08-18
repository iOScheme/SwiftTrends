import Foundation

public enum RemoteFeaturesKeys: String {
    case enableChat
    case enableHome
    case enableCart
    case enableLogging
    case refreshInterval
    case loggingLevel
    
    func defaultValue() -> Any {
        switch self {
        case .enableChat:
            return false
        case .enableHome:
            return false
        case .enableCart:
            return false
        case .enableLogging:
            return false
        case .refreshInterval:
            return 1000
        case .loggingLevel:
            return ""
        }
    }
}
