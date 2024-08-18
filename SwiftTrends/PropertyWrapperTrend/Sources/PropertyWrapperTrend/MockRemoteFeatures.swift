import Foundation

internal final class MockRemoteFeatures {
    private var features: [String :Any] = [:]
    
    init () {
        features[RemoteFeaturesKeys.enableCart.rawValue] = true
        features[RemoteFeaturesKeys.enableHome.rawValue] = true
        features[RemoteFeaturesKeys.enableChat.rawValue] = false
        features[RemoteFeaturesKeys.enableLogging.rawValue] = false
        features[RemoteFeaturesKeys.refreshInterval.rawValue] = 3600
        
    }
    
    func getValue<T>(for key: RemoteFeaturesKeys) -> T? {
        features[key.rawValue] as? T
    }
}
