import XCTest
@testable import DynamicLookupTrend

final class DynamicLookupTrendTests: XCTestCase {
    
    struct SuperSet {
        public let superSetOnlyValue: String
    }

    @dynamicMemberLookup
    public struct Exercise {
        public let reps: Int
        public let name: String
        public let weight: Double
        public let rest: String
        public let superSet: SuperSet?
        
        subscript<T>(dynamicMember keypath: KeyPath<SuperSet?, T>) -> T {
            return superSet[keyPath: keypath]
        }
    }

    @dynamicMemberLookup
    struct Routine {
        let name: String
        let exercise: Exercise
        
        subscript<T>(dynamicMember keypath: KeyPath<Exercise, T>) -> T {
            return exercise[keyPath: keypath]
        }
    }

    func testExample() throws {
        let superSet = SuperSet(superSetOnlyValue: "value")
        let exercise = Exercise(reps: 1, name: "bench press", weight: 60, rest: "2 min", superSet: superSet)
        let routine = Routine(name: "chest", exercise: exercise)
        print(routine.reps)
//        print(routine.superSetOnlyValue)
        
        routine.exercise.reps

    }
}
