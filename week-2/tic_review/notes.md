1. Process 
  consider perspective 
  A. 
    - choose the players perspective 
    - start with a feature 
      - consider the tech problems involved
    - next feature
      - driving implementation
    - win draw
  B. 
    - game perspective
    - board is static 
    - player does not change either
    - from here object modeling
    - game procedure 
  - checked user flow
  C. 
  Has does tic tac toe work?
    - object modeling
    - player class 
    - board
  - requirements of each model
  - methods needed
  - how do objects talk to one another

  - when is it over?
    check winning conditions
  - consider validations?

  1. Feature specification
    1. Signup 
      - enter a name
      - does the user exist
      - if user does not exist, create a new user
    2. Start a game
      - take user
      - choose piece
      - take board, that's blank
    3. Make move 

    4. When game is over 
    5. Person 
      - record

  2. Object modeling 
    a. methods in each model/object
    b. how do they relate to one another
      - belongs to
      - has many
    person -> has many games
    game belongs to person

    player vs person
      1. Person as subclass as player
        - class Person < Player
        end 


2. Domain modeling
3. Setup
4. Composition

# Goals of objects
  # 1. Cohesiveness
  # 2. separation of concerns
    #  - wheel, motor
  # Composition
    - one object that is a component of the other object
      - eg. wheel is a component of a car, or a truck
  # Loosely coupled 
  # Highly cohesive
#  tic tac toe
  # person
  # player