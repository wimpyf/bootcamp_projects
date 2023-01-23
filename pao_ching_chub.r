cat("Welcome to Pao Ying Chub Game \n")
cat(".......Enter your name....... \n")
name <- readLines("stdin", n=1)
print(paste("Hello,", name))
print("Pleased to meet you  :)")

cat("This is the rule: \n", "1. Stone wins over scissors because a stone is stronger than scissors \n" , "2. Scissors wins over paper because scissors cut paper. \n", "3. Paper wins over stone because paper wraps a stone. \n", "Use hand to show your weapons. The game was played by at least 2 persons. \n", ".......Let's get started!....... \n", "          
                                \n")

#player
u_weapons <- list("Stone", "Scissors", "Paper")
win <- 0
lose <- 0
draw <- 0
u_play <- 1
while(u_play){
    while(1){
    print("What's your weapon?")
    print("[1] Stone [2] Scissors [3] Paper")
    u_choose <- readLines("stdin", n=1)
        if(u_choose == "1"){
            print("You: Stone")
            break
        } else if(u_choose == "2"){
            print("You: Scissors")
            break
        } else if(u_choose == "3"){
            print("You: Paper")
            break
        } else{
            print("Please select your weapon.")
        }
    }

#bot
   bot <- list("Stone", "Scissors", "Paper")
    b_choose <- sample(bot, 1)
    print(paste("Bot: ", b_choose))
    if(u_weapons[as.numeric(u_choose)] == "Stone"){
        if(b_choose == "Scissors"){
            win <- win +1
            print("Win")
        } else if(b_choose == "Paper"){
            lose <- lose + 1
            print("Lose")
        } else{
            draw <- draw + 1
            print("Draw")
        }
    } else if(u_weapons[as.numeric(u_choose)] == "Scissors"){
        if(b_choose == "Paper"){
            win <- win + 1
            print("Win")
        } else if(b_choose == "Stone"){
            lose <- lose + 1
            print("Lose")
        } else{
            draw <- draw + 1
            print("Draw")
        }
    } else {
        if(b_choose == "Stone"){
            win <- win + 1
            print("Win")
        } else if(b_choose == "Scissors"){
             lose <- lose + 1
            print("Lose")
        } else{
        draw <- draw + 1
        print("Draw")
        }
    }

    print("Would you like to play more?")
    print("[1] Play [2] Quit")
    u_ans <- readLines("stdin", n=1)
    if(u_ans == "1"){
        print("I would like to play again.")
    } else if(u_ans == "2"){
        print("I woludn't like to play again.")
      break
    } else {
        print("Please select the choice.")
    }
}

print(paste("Played: ", win+lose+draw))
print(paste("Win: ", win))
print(paste("Lose: ", lose))
print(paste("Draw: ", draw))
