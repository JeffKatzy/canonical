I. Basic ORMS
Why ORMs
 - The goal
  ○ Not writing sql 
  ○ Relate to coerce, act, return 
  ○ Interface vs implementation

1. REST CRUD Operations
2. CRUD
  - insert
  - find
  - update
  - destroy
  - all
3. Extras
  - persisted
  - save
  - == 

II. Abstract ORMs
Abstraction
  • So that if the module is mixed into any pattern that module is just persistable

  1. Maintaining one column to my tbale, should only need to change one line of code
    ○ Looking here, a lot of things in here is just about my column names 
    ○ So then, if the column names are so important, then there should be a representation of this
    ○ So then I want to give this knowledge a name 
      § So then there is knoweldge in my code, but no name for it
  2. Also for abstraction
    ○ Author class will have different attributes
    ○ Class needs to be able to define it attributes, and class should use that 
  3. Table name



  • ATTRibutes = {
    ○ Id => "Integer Primary Key AUTOINCREMENT",
    ○ TITLE => "TEXT", 
    ○ Content => "TEXT"
    ○ }
  • So this is an introspection point
    ○ This is the one place where I will look to figure out what else my code needs to do
    ○ So now I need to use this as properties of the hash
