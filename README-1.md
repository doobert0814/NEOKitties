# NEOKitties

## A game where users can create, take care of, and breed cats(stretch goal). Two cats can be bred and produce a new cat, with a random mix of the parents cats traits. Cats can only be breed once per week and have to be at lease two weeks old in order to breed. 




## USER Stories

*Users can create 1 new cat (every 24 hours(stretch)(create)

*can find a list of all the cats the user has created. (read)

*Refine a list to view the cats by name, age, breed, color, catchphrase.(read)

*can feed cats to keep them alive. (Cats need to fed once per day or they die.(stretch)(update)

*user can decide to adopt out a cat, deleting them from the kitties table.(delete)

*user can play with cat updating the cats status to happy(update)

------------------------------------------------------------------


## Models 

User:: 
        -has_many kitties
        -has_many toys through kitties
        
        DB holding all users

Kitties::

        -belongs_to user
        -belongs_to toys
        
        DB holding all kitties 
                -happiness level(stretch)


Toys::

        -has_many kitties
        -has_many users through kitties
        
         DB Keeping track of if a cat has/ played with a toy (boolean), what type of a toy (stick, mouse), (#happiness level(stretch)


<!-- Adoption::???

        -has_many users through kitties
        
        DB holding all of the kitties available for adoption -->
     
------------------------------------------------------------------

## RAKE TASKS

reload!
pry

------------------------------------------------------------------

## GEMS
sinatra
activerecord
sqlite3
rake
tty prompt
tty progressbar
lolcat
pry
rspec
colorize 
faker?
require_all?

-----------------------------------------------------------------

## METHODS

### command_line_interface

Sign up

Create kitties

exit

update 

find_by

play_with

adopt_out

### Kitties

#isAlive?
        -A boolean value for if the kitty has been fed

playsWithToy?
        -A boolean value for if the kitty is playing with a toy

#play_with_kitty
        -play with particular kitty, with a particular toy

#talk
        -asks kitty for its catchphrase

#feed 
        -feeds a particular cat

#happiness (stretch?)
        -happiness level of kitty

### User

create.new
        -create a new user

#find_by
        -find cat attribute(color, breed, coat, catchphrase)

.all 
        -find all cats owned by user

#adopt_kitty_out
        -deletes kitty from user

### Toys

#type
        -type of toy (stick, string, mouse)

#playing_with?
        - if a particlular toy is currently in use

#gives_joy(stretch)
        -how much it raises kitties happiness level

------------------------------------------------------------------

## Stretch Goal

*add graphic

*class for color

*class for coat

*Graveyard for cats that have died

*allow cats to breed via comparing if they are related, and age of cat. 

*happiness level from toy