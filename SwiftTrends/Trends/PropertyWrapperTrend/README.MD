# Usage

The purpose of this spm is to easly read an `RemoteConfig(Firebase, Growthbook.. etc)` flag using the new **@properyWrapper** API.
In order to achive this i mocked some RemoteConfig data in `MockRemoteFeatures` class.
Then i use the enum RemoteConfigKey to store the values as a dicctionary of [String: Any].

MockRemoteFeatures has a single function that will retreive the value based on the given key if it exists.
RemoteConfigKey can give will give you a default value for each key.
To access a remoteKey example:
```swift
 @RemoteConfig(for: .loggingLevel)
    private var loggingLevel: String
```
Important note that the type defined here has to be the same type as te default vaule othwise it will crash.
                                                                                                    
 The way i understand at this moment that it works is:
 `@RemoteConfig(for: .loggingLevel)` its like an init with a fancier syntanx you could write `let remoteConfig = RemoteConfig<Bool>(for: .enableCart) ` wich would give you the same exact result.  
 Maybe there is more elaborate work that can be done but in the end all you are doing is encapsulating funccionality in a type. WoW.. insane ... \clap                                                                                              
                       
