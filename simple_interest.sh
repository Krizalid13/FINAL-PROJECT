
import random

dealer_cards = []
player_cards =[]

while len(dealer_cards) != 2:
    dealer_cards.append(random.randint(1, 11))
    if len(dealer_cards) == 2:
        print("La banque a X &", dealer_cards[1])
        
while len(player_cards) != 2:
    player_cards.append(random.randint(1, 11))
    if len(player_cards) == 2:
        print("Vous avez  ", player_cards)
        
        
action_taken = str(input("Surrender? o/n: "))
if action_taken == "o":
    print("La banque gagne, vous perdez la moitié de votre mise.")
else:
    while sum(player_cards) < 21:
        action_taken = str(input("Carte ou Reste ou Double?"))
        if action_taken == "Carte":
            if sum(dealer_cards) < 16:
                dealer_cards.append(random.randint(1, 11))  
            player_cards.append(random.randint(1, 11))
            print("Vous avez un total de " + str(sum(player_cards)) + " avec ces cartes", player_cards)
        
        elif action_taken == "Reste":
            if sum(dealer_cards) < 16:
                dealer_cards.append(random.randint(1, 11))  
            print("La banque a un total de " + str(sum(dealer_cards)) + " avec", dealer_cards)
            print("Vous avez un total de " + str(sum(player_cards)) + " avec", player_cards)
            break
        
        elif action_taken == "Double":
            player_cards.append(random.randint(1, 11))
            if sum(dealer_cards) < 16:
                dealer_cards.append(random.randint(1, 11))  
            print("La banque a un total de " + str(sum(dealer_cards)) + " avec", dealer_cards)
            print("Vous doublez. Vous avez un total de " + str(sum(player_cards)) + " avec", player_cards)
            break     
         
        
if sum(dealer_cards) == 21:
    print("La banque a 21 et gagne!")
elif sum(dealer_cards) > 21:
    print("La banque saute!")        
    
if sum(dealer_cards) > sum(player_cards):
    print("La banque gagne")
        
if sum(player_cards) > 21 :
    print("Vous sautez. La banque gagne")
        
if sum(dealer_cards) > 21 & sum(dealer_cards) > sum(player_cards):
    print("La Banque saute, vous gagnez")
    
if sum(dealer_cards) < sum(player_cards) & sum(player_cards) < 22:
    print("Vous gagnez!")
        
if sum(player_cards) == 21:
    print("Black Jack! Vous gagnez!")
    
if sum(dealer_cards) == sum(player_cards):
    print("Egalite"
