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

	var input:String

	while(true){
		
		
		//Read in name
		print("Enter a name:")
		input = readLine()!
		
		//Save name
		var enteredName = input
		
		//Read in age
		print("Enter an age:")
		input = readLine()!
		
		//Parse and save age 
		var enteredAge:Int { 
		
			if let a = Int(input){ 
			
				return a 
			
			} else { 
			
				return 0 
			
			}
		
		}
		
		//Read in gender
		print("Enter m for male, f for female, x for other:")
		input = readLine()!
		
		//Parse gender
		var enteredGender:Gender {
			
			switch input[input.startIndex] {
			
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
		
		//Read in gpa
		print("Enter a GPA:")
		input = readLine()!
		
		//Parse gpa
		var enteredGPA:Double {
		
			if let a = Double(input){ 
			
				return a 
			
			} else { 
			
				return 0 
			
			}
		
		}
	
		//Make a student
		let student = (Student().setName(enteredName).setAge(enteredAge).setGender(enteredGender) as! Student).setGPA(enteredGPA)
		
		//Print a student
		print(student)
	
	}
	
}