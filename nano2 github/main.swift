//

//  main.swift

//  Nano challenge 1

//

//  Created by wafa ali on 22/05/1443 AH.

//



import Foundation

enum serviceName{
    
    
    case Pepperoni_pizza
    case Chicken_Pizza
    case Veggie_Pizza
    case Margherita_Pizza
    
}


let servicesWithPrice :[serviceName:Int] = [serviceName.Pepperoni_pizza: 100, serviceName.Chicken_Pizza:200 , serviceName.Veggie_Pizza: 300, serviceName.Margherita_Pizza: 30]

var userOrder : [Int] = []



let services =

"""

1- Pepperoni pizza

2- Chicken pizza

3- Veggie Pizza

4- Margherita Pizza

      

"""







var userInput = ""



repeat{

print("----------------------------")

print("WELCOME To PIZZA YUM")

print("----------------------------")

print("1. VIEW THE Menu")

print("2. View Your order & price")

print("3.  display the total price")
    
print("4. Exit")
    
print("----------------------------")

print("Select Your Choice")

print("----------------------------")







if let userChoice = readLine(){

userInput = userChoice

switch userInput{

case "1" :

print(services)

print("hi")

        

case "2" :

readuserOrder()
                

       

case "3" :

calculatePrice(Array:userOrder)



        

 case "4" :

print("See you soon")

default :

print("defult action goes here")

        

    }

    
}



}

while userInput != ""


func readuserOrder(){
    var userService = ""
    
    
    
repeat{

print("Enter Your Choice number: ")

userService = readLine()!

switch userService {

case "1" :
    if let price = servicesWithPrice[.Pepperoni_pizza]{
        userOrder.append(price)}

print(userOrder)
  

case "2" :

    userOrder.append(servicesWithPrice[.Chicken_Pizza]!)



case "3" :

    userOrder.append(servicesWithPrice[.Veggie_Pizza]!)

case "4" :

    userOrder.append(servicesWithPrice[.Margherita_Pizza]!)

default:

print("Invalid input")

    }

print ("Do you want to order more?(Y or N)")

        

userService = readLine()!

        

    

} while userService != "N"
}
        
        
        
        
        
        

func calculatePrice(Array:[Int]){
    
    
    
    var totalprice = 0

    for price in Array {

    totalprice = totalprice + price

            

        }

    print("Total price\(totalprice)")
    
    
}
