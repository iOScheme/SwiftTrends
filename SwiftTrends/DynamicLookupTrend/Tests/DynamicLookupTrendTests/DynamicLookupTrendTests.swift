import XCTest
@testable import DynamicLookupTrend

final class DynamicLookupTrendTests: XCTestCase {

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
            return exercise[keyPath: keypath]
        }
    }

    class Week {
        let routine: Routine
        
        init(routine: Routine) {
            self.routine = routine
            
        }
    }
    
    func testExample() throws {
        let exercise = Exercise(reps: 1, name: "bench press", weight: 60, rest: "2 min")
        let routine = Routine(name: "chest", exercise: exercise)
        print(routine.reps)
        
        routine.exercise.reps
    }
}
