- Why databases, relational database
- Implementation
  - Building a db and tables (skeleton)
  - Manipulating data
  - Integrate with ruby/CRUD
    - Problem: 
        - build a blog file in ruby, and our goal is to list out all of the posts using ruby
        - List of requirements
          - We need to connect to the database
          - We need a sql statement to query the databse
          - And then we need to convert to valid ruby

Now it's time to create our ORM.  
I. Get Setup
  In your console, write 
  1. gem install sqlite3
  2. Run ruby sql_manager
  3. Book.create_table
    - See what that just did there...we called a method using ruby and it executed sql.  Pretty nifty eh?
  4. sqlite3 literature.db < insert_data.sql
    - do this to insert the data
  5. You can see if this worked by running
    Book.db.execute('select * from books;')
  - See that...that command will allow you to directly write in some sql...now you do the rest
II. Work some magic
  - Let's start by writing out the CRUD operatirons.
  - Crud stands for Create, Read, Update, and Destroy.  
  - I'll do the read one, and you can do the rest...
    You can see it in the find method.
  - Place a couple prys in the method, and walk through what it is doing.
  - Try out the method by calling, Book.find(), and use an id of an entry you saw when doing select * from books in step 5.

  Ok, time for you to fill in the rest of the methods.
  Notice that insert and update should return the updated object that has been persisted in the database.
  
  If you look at the methods called in the comments under the book class, that procedure should all work.  I should be able to change some attributes of an instance, and then persist these instances in the database.



      
