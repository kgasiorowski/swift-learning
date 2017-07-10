//Gender enum
enum Gender: String {

	case male = "male"
	case female = "female"
	case other = "other"
	case error = "error"
	
}

//Person class
class Person : CustomStringConvertible {

	var name :String?
	var gender :Gender?
	var age :Int?
	
	var description :String { return "This person is called \(name!) with age \(age!) and gender \(gender!)" }
	
	init() {}
	
	init(withName _name:String?, andGender _gender:Gender?, andAge _age:Int) {
		
		name = _name
		gender = _gender
		age = _age
	
	}
	
	func setName(_ _name :String) -> Person{ 
	
		name = _name
		return self
	
	}
	
	func setAge(_ _age:Int) -> Person{
	
		age = _age
		return self
	
	}
	
	func setGender(_ _gender:Gender) -> Person{
	
		gender = _gender
		return self
	
	}
	
}

//Student class
class Student : Person {

	var GPA :Double?
	
	override var description :String { return "This student is called \(name!) with age \(age!) with gender \(gender!) and with GPA \(GPA!)" }
	
	func setGPA(_ _GPA:Double) -> Student {
	
		GPA = _GPA
		return self
	
	}
	
}



//Main code
do{

	while(true){
		
		print("Enter a name:\n>")
		var enteredName:String {
		
			if let name = readLine() {
			
				return name
			
			} else {
			
				return ""
			
			}
		
		}
		
		print("Enter an age:\n>")
		var enteredAge:Int { 
		
			if let age = Int(readLine()!) {
			
				return age
			
			} else {
			
				return 0
			
			}
		
		}
		
		print("Enter m for male, f for female, x for other:\n>")
		var enteredGender:Gender {
		
			if let input = readLine() {
			
				let charInput:Character = input[input.startIndex]
				
				switch charInput {
				
					case "m":
						return Gender.male
					case "f":
						return Gender.female
					case "x":
						return Gender.other
					default:
						return Gender.error
				
				}
			
			
			}
		
			return Gender.error
		
		} 
		
		print("Enter a GPA:\n>")
		var enteredGPA:Double {
		
			if let gpa = Double(readLine()!) {
			
				return gpa
			
			} else {
			
				return 0
		
			}
		
		}
	
		let student = (Student().setName(enteredName).setAge(enteredAge).setGender(enteredGender) as! Student).setGPA(enteredGPA)
		print(student)
	
	}
	
}