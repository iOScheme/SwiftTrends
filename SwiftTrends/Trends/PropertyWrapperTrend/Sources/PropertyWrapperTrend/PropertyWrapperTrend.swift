import Foundation

@propertyWrapper
public struct RemoteConfig<T: Any> {
    public var wrappedValue: T {
        get {
            let defaultValue = remoteConfigKey.defaultValue() as! T
            return remoteFeaturesData.getValue(for: remoteConfigKey) ?? defaultValue
        }
    }
    private let remoteFeaturesData = MockRemoteFeatures()
    private let remoteConfigKey: RemoteFeaturesKeys
    
    public init(for key: RemoteFeaturesKeys) {
        self.remoteConfigKey = key
    }
}

// let remoteConfig = RemoteConfig<Bool>(for: .enableCart)
