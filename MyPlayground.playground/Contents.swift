
func sayHello(to person: String = "You") {
    print("Hello \(person)", separator: "/", terminator: ".")
}

sayHello(to: "Dave")
sayHello()

//Reference type
class MaSuperClasse {

    var name = ""

    func sayHello() {
        print(name)
    }
}

//Value type
struct MaStruct {

    var name = ""

    func sayHello() {
        print(name)
    }
}

class MaClasse: MaSuperClasse {

}

protocol MonProtocol { // Idem interface dans autres langages

}

enum AppStatus {
    case notOwned
    case notInstalled
    case installed
}

let classInstance = MaSuperClasse()
classInstance.name = "Class"

let anotherClassInstance = classInstance
anotherClassInstance.name = "OtherClass"

classInstance.sayHello()
anotherClassInstance.sayHello()

var structInstance = MaStruct()
structInstance.name = "Struct"

var anotherStructInstance = structInstance
anotherStructInstance.name = "OtherStruct"

structInstance.sayHello()
anotherStructInstance.sayHello()


var optionalInt: Optional<Int> = nil

print((optionalInt ?? 4) * 2)

if let myValue = optionalInt {
    print(myValue * 2)
}

guard let myValue = optionalInt else {
    fatalError()
}

myValue

let magnitude: UInt? = optionalInt?.magnitude
