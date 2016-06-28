customer
id name  
1   bob 
2   fred

reviews
  content, customer_id, restaurant_id
  'it was good' 2        1
  'it wwas bad' 2        3
  'it wwas bad' 1        1

restaurants
id name cuisine 
1   sal's italian 
3   bucca   italian

book = Book.new
author = Author.new
book.author = author

author.books

class Author

  def books
    Book.all.select do |book|
      book.author == self
    end
  end
end


1. If we have a belongs to relationship, there must be a foreign_id on that table (eg. review belongs_to customer -> reviews.customer_id)

2. If we have a has many, there cannot be a foreign_id of that respective relation on that table

3. If it is a many to many relationship, then that means that neither table can have the foreign_id, and therefore we must have a third 'join' table



- Why databases, relational database
- Implementation
  - Building a db and tables (skeleton)

  - Manipulating data
  - Integrate with ruby/CRUD

  ORM
    - instance -> row
      <dog @name='fido', age=2>
    - class -> table


    - What are the question marks
    - Getting feedback on if we are doing it right?
    - syntax of the execute command
    

    - Problem: 
        - build a blog file in ruby, and our goal is to list out all of the posts using ruby
        - List of requirements
          - We need to connect to the database
          - We need a sql statement to query the databse
          - And then we need to convert to valid ruby

