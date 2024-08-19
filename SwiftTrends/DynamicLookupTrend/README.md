# Usage.
It enables you to access child data attriutes from an parent container without referening to the child data structure.

Example:
```swift
 public struct Exercise {
        public let reps: Int
        public let name: String
        public let weight: Double
        public let rest: String
    }

    @dynamicMemberLookup
    struct Routine {
        let name: String
        let exercise: Exercise
        
        subscript<T>(dynamicMember keypath: KeyPath<Exercise, T>) -> T {
            return exercise[keyPath: keypath] ///
            /// PreattyNeat dicctionary like access
        }
    }

     let exercise = Exercise(reps: 1, name: "bench press", weight: 60, rest: "2 min")
     let routine = Routine(name: "chest", exercise: exercise)
        print(routine.reps)

```

You can achive the same by doing
```swift
 print(routine.exercise.reps)
````
Which is clearer from a reader point of view. Not sure what it is intended for buy we had to give a try NGL.
