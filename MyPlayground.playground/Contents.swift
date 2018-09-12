/*
let a = 3
let b = 4.5
let c = 3.455
let d = Int(Double(a) + Double(b) + c)


print("First argument = \(a), \nSecond argument = \(b), \nThird argument = \(c), \nSum = \(d)")
*/

//Tuples
/*
let SimpleTuple = (podtyag:4, otjim:40, prised:50)
print("Максимально я подтягиваюсь \(SimpleTuple.podtyag) раза \nМаксимально я отжимаюсь \(SimpleTuple.1) раз \nМаксимально я приседаю \(SimpleTuple.prised) раз")
*/

//Опциальные типы
/*
let a = "10"
let b = Int(a)!
if Int(b) < 20{
    print("it is less than 20! \nAdd \(20-b)!")
} else{
    print("more")
}
*/



//Базовые операторы
/*
enum Month : Int {
    case January, February, March, April, May, June, July, August, September, October, November, December
}

var day = 22
var month : Month = .May
var counter = 24*60*60

var array = [0, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
var sum = 0
for i in 0...month.rawValue {
    sum += array[i]
}
day = day + sum
var quartal = 0

switch month {
case .January, .February, .March:
    quartal = 1
case .April, .May, .June:
    quartal = 2
case .July, .August, .September:
    quartal = 3
case .October, .November, .December:
    quartal = 4
}

print("C начала года до моего др прошло \(day*counter) секунд \nЯ родлися в \(quartal)-ом квартале")
*/

//Arrays
/*
var dayMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
var nameMonth = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

var i = dayMonth.count
while i > 0 {
    i -= 1
    print("\(dayMonth[i])" + " " + nameMonth[i])
}
*/

//Dictionaries

/*
var dict = ["John Black" : 10, "Katrin Snow" : 8, "Eddy Maxwell" : 6, "Ned Ford" : 12, "Barry White" : 4]

dict.updateValue(9, forKey: "Katrin Snow")
dict["Eddy Maxwell"] = 9

dict["Jinny Doley"] = 10
dict["Max Tron"] = 3

dict.removeValue(forKey: "Barry White")

dict

var sum = 0
for i in Array(dict.values){
    sum += i
    
}
print(sum)
print(sum/dict.values.count)

print("\n")

var monthDict = ["January": 31, "February": 28 , "March": 31, "April": 30, "May": 31, "June": 30, "July": 31, "August": 31, "September": 30, "October": 31, "November": 30, "December": 31]
for (key, value) in monthDict{
    print("\(key)" + " " + "\(value)")
}

print("\n")

for key in Array(monthDict.keys){
    print("\(key)" + " " + "\(monthDict[key]!)")
}

print("\n")

var chessLetters = ["a", "b", "c", "d", "e", "f", "g", "h"]
var chessNumbers = [1, 2, 3, 4, 5, 6, 7, 8]
var chessDict = [String:Bool]()

for (index, letter) in chessLetters.enumerated() {
    
    for (index2, number) in chessNumbers.enumerated() {
        
        if (index % 2 == 0 && index2 % 2 == 0) || (index % 2 != 0 && index2 % 2 != 0) {
            chessDict = [letter + "\(number)" : false]
        } else {
            chessDict = [letter + "\(number)" : true]
        }
        
        for (key, value) in  chessDict {
            print(key + " - " + "\(value)")
        }
    }
}

*/

// Switch

var str = "Lorem ipsum dolor sit amet 12, voluptatem fermentum id vivamus 53 potenti consectetuer, odio justo neque molestie, facilisis ligula luctus eget 4 tempora feugiat, ac 10000 ultrices ut lacinia lacus suscipit. Velit gravida amet sed aliquet consequat pulvinar, euismod mattis ut pharetra mauris. Eu maecenas. Erat parturient mollis ac integer amet quisque, nec in nulla, aute nonummy risus quis consectetuer, lorem sit sem ante wisi elementum! Expedita maecenas dignissim tristique maxime nunc.Malesuada 3457437 3 dignissim potenti? Minim nunc 2314 tempor eget nullam nulla risus, odio aliquam a? Mauris fames mi ipsum vitae a purus, rutrum imperdiet fusce vestibulum enim 12 ipsum mauris, integer nec 678768 dolor lobortis viverra taciti, pulvinar sed vestibulum 780670 habitant sed torquent mus, purus diam integer! In sem, 3457 non dui egestas 1234547 nulla ultricies varius 37458 ipsum, diamlorem vel tempus libero libero erat. Eget habitant hendrerit nunc, quisque aenean at eget, interdum 675679 nostrum tellus, felis felis mattis nec, quis 6780768 scelerisque lectus. Diam quis 78068 mi augue a amet, tortor netus, vitae inceptos posuere vitae ullamcorper? Wisi 2341 aliquam ipsum sit ante viverra, pellentesque ipsum maecenas dui mi, justo et aliquet 12341235 vel dui, tristique malesuada cursus nibh et, pretium aenean condimentum a luctus fusce. Justo ornare aliquam commodo, tempor mauris!"

var vowel = 0
var consonant = 0
var punMarks = 0
var numbers = 0

for i in str {
    switch i {
    case "A", "a", "E", "e", "Y", "y", "U", "u", "I", "i", "O", "o":
        vowel += 1
    case "Q", "q", "W", "w", "R", "r", "T", "t", "P", "p", "S", "s", "D", "d", "F", "f", "G", "g", "H", "h", "J", "j", "K", "k", "L", "l", "Z", "z", "X", "x", "C", "c", "V", "v", "B", "b", "N", "n","M", "m":
        consonant += 1
    case ".", ",", "!", "?":
        punMarks += 1
    case "1", "2", "3", "4", "5", "6", "7", "8", "9", "0":
        numbers += 1
    default:
        break
    }
}
print("This text consists of \(vowel) vowels, \(consonant) consonants, \(punMarks) punctual marks and \(numbers) numbers")


var age = 148
var status = String()
switch age {
case 0...3: status = "Infancy"
case 4...6: status = "Early Childhood"
case 7...9: status = "Middle Childhood"
case 10...11: status = "Late Childhood"
case 12...20: status = "Adolescence"
case 20...35: status = "Early Adulthood"
case 36...50: status = "Midlife"
case 50...80: status = "Mature Adulthood"
case 80...146: status = "Late Adulthood"
case 147...Int.max: status = "Immortality"
default:
    break
}
print(status)


var firstName = "John"
var secondName = "Snow"
var fatherName = "Rhaegarovich"

switch firstName.first {
case "A", "O":
    print("Hello, \(firstName)")
case _ where fatherName.first == "V" || fatherName.first == "D":
    print("Hello, \(firstName) \(fatherName)")
case _ where secondName.first == "E" || secondName.first == "Z":
    print("Hello, \(secondName)")
default:
    print("Hello, \(firstName) \(fatherName) \(secondName)")
}





