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


var dayMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
var nameMonth = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

var i = dayMonth.count
while i > 0 {
    i -= 1
    print("\(dayMonth[i])" + " " + nameMonth[i])
}




