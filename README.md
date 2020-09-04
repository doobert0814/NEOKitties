# NEOKitties

## A game where users can create, take care of, and breed cats. Two cats can be bred and produce a new cat, with a random mix of the parents cats traits. Cats can only be breed once per week and have to be at lease two weeks old in order to breed. 




## USER Stories

*Users can create 1 new cat every 24 hours

*can find a list of all the cats the user has created. 

*Refine a list to view the cats by name, age, breed, color, catchphrase.

*can feed cats to keep them alive. Cats need to fed once per day or they die.

*user can decide to adopt out a cat, deleting them from the users db.

----------------------------------------------------------------------------------------------




## Models 

User:: 
        -has_many kitties
        -has_many food through kitties
        
        DB holding all users

Kitties::

        -belongs_to user
        -belongs_to food
        
        DB holding all kitties


Food::

        -belongs_to kitties
        
         DB Keeping track of if a cat has been fed (by boolean), and when(via Time.now)


Adoption::

        -has_many kitties
        
        DB holding all of the kitties available for adoption
     
------------------------------------------------------------------


## GEMS

activerecord
sqlite3
rake
tty prompt
tty progressbar
lolcat
pry
        

-----------------------------------------------------------------

## Stretch Goal

*add graphic

*class for color

*class for coat

*Graveyard for cats that have died

*allow cats to breed via comparing if they are related, and age of cat. 






        




