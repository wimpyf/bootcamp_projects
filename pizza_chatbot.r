print("Welcome to Papa's Pizza :)")
print("Please let us know your name?")
cus_name <- readLines("stdin", n=1)
print(paste("Hello,", cus_name))


#question 01
pizza_order <- list("Hawaiian", "Veggie", "Seafood Cocktail", "Pepperoni", "Deluxe")
a_pizza <- list(399, 499, 599, 459, 529)
while(1){
print("What the pizza would you like to order?")
print("[1] Hawaiian (399 THB) [2] Veggie (499 THB) [3] Seafood Cocktail (599 THB) [4] Pepperoni (459 THB) [5] Deluxe (529 THB)")
  m_order <- readLines("stdin", n=1)
  if(m_order == "1"){
    print("Pizza: Hawaiian")
    break
  } else if(m_order == "2"){
    print("Pizza: Veggie")
    break
  } else if(m_order == "3"){
    print("Pizza: Seafood Cocktail")
    break
  } else if(m_order == "4"){
    print("Pizza: Pepperoni")
    break
  } else if(m_order == "5"){
    print("Pizza: Deluxe")
    break
  } else {
    print("Please the pizza topping")
  }
}

#question 02
crust_order <- list("Pan", "Crispy Thin", "Cheese&Sausage")
a_crust <- list(0, 50, 100)
  while(1){
    print("What crust type of pizza would you like? \n")
    print("Press [1] Pan (+0 THB) [2] Crispy Thin (+50 THB) [3] Cheese&Sausage (+100 THB)")
    crust <- readLines("stdin", n=1)
    if(crust == "1"){
      print("Crust: Pan")
      break
    } else if(crust == "2"){
      print("Crust: Crispy Thin")
      break
    } else if(crust == "3"){
      print("Crust: Cheese&Sausage")
      break
    } else{
      print("Please select crust type of pizza.")
    }
  }

#question 03
size_order <- list("Small", "Medium", "Large")
a_size <- list(0, 50, 100)
    while(1){
      print("What size of pizza would you like?")
      print("Press [1] Small (+0 THB) [2] Medium (+50 THB) [3] Large (+100 THB)")
      size <- readLines("stdin", n=1)
      if(size == "1"){
        print("Size: S")
        break
      } else if(size == "2"){
        print("Size: M")
        break
      } else if(size == "3"){
        print("Size: L")
        break
      } else {
        print("Please select size of pizza.")
      }
    }

#quesion 04
print("How many pizza(s) would you like to order?")
num_order <- readLines("stdin", n=1)
print(paste(num_order, "pizza(s)"))


while(1){
  print("Would you like to get some drink?")
  print("Press [1] Yes [2] No")
  quan_dk <- readLines("stdin", n=1)
  if(quan_dk == "1"){
    print("Get some drink")
    break
  } else if(quan_dk == "2"){
    print("Nothing for me")
    break
  } else{
    print("Please try again.")
  }
}
      
  
#question 05
drinks_order <- list("Cola", "Sparking", "Craft Beer")
a_drinks <- list(89, 59, 299)
  while(quan_dk == "1"){
  print("What would you like to drink?")
  print("Press [1] Cola (89 THB), [2] Sparking (59 THB), [3] Craft Beer (299 THB)")
  t_dk <- readLines("stdin", n=1)
    if(t_dk == "1"){
      print("Drinks: Cola")
      break
    } else if(t_dk == "2"){
      print("Drinks: Sparking")
      break
    } else if(t_dk == "3"){
      print("Drinks: Craft Beer")
      break
    } else{
      print("Please select drinks")
    }
  }


    
if(quan_dk == "1"){
  print(paste("How many", drinks_order[as.numeric(t_dk)], "would you like to order?"))
  num_dk <- readLines("stdin", n=1)
}


    
#confirm order
if(quan_dk == "2"){
  print(paste(".........................."))
  cat("               SUMMARY \n")
  print(paste("Customer Name: ", cus_name ))
  print(paste("Pizza: ", pizza_order[as.numeric(m_order)] ))
  print(paste("Quantity: ", num_order ))
  print(paste("Size: ", size_order[as.numeric(size)] ))
  print(paste("Crust: ", crust_order[as.numeric(crust)] ))
  price1 <- as.numeric(num_order)*(as.numeric(a_pizza)[as.numeric(m_order)]+as.numeric(a_size)[as.numeric(size)]+as.numeric(a_crust)[as.numeric(crust)])
  print(paste("Amount: ", price1, "THB"))
  print(paste(".........................."))
} else{
  print(paste(".........................."))
  cat("               SUMMARY \n")
  print(paste("Customer Name: ", cus_name ))
  print(paste("Pizza: ", pizza_order[as.numeric(m_order)] ))
  print(paste("Quantity of pizza: ", num_order ))
  print(paste("Size: ", size_order[as.numeric(size)] ))
  print(paste("Crust: ", crust_order[as.numeric(crust)] ))
  print(paste("Quantity of drinks: ", num_dk, drinks_order[as.numeric(t_dk)], "can(s)"))
  price2 <- as.numeric(num_order)*(as.numeric(a_pizza)[as.numeric(m_order)]+as.numeric(a_size)[as.numeric(size)]+as.numeric(a_crust)[as.numeric(crust)])+(as.numeric(num_dk)*as.numeric(a_drinks)[as.numeric(t_dk)])
  print(paste("Amount: ", price2, "THB"))
  print(paste(".........................."))
}

print("Please let mo know your address.")
cus_add <- readLines("stdin", n=1)
print("Please let mo know your phone number.")    
cus_phone <- readLines("stdin", n=1)
print("..........................")
cat("Confirm your address and phon number \n")
print(paste("Name: ", cus_name))
print(paste("Address: ", cus_add))
print(paste("Phone Number: ", cus_phone))
print("..........................")
cat("         Thank you \n", "     Have a nice meal. \n")
