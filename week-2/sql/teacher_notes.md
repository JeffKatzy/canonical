- style
  what to capitalize
    SELECT * FROM users
- order of execution
  - 
- group by and aggregates, how do they relate?
  - vs order by, 

- what can be accessed by another table
  - when can i access attributes from another table


1. Domain modeling and joins
 - has many belongs to 
 - joins
 Books, authors, and genres.
 A book just has one author.
 An author can write many books.
 An author's genres, are defined by the genre of each book that he has written.

 a. consider belongs_to and has many relations
 b. start with the belongs to relationship
  - in a belongs to relationship, the foreign id must be on the table

  students
  id | name | hometown| classroom_id
  1     jeff  philly      1
  
  select * from classrooms where classrooms.name = 'ruby'


  classrooms

  id | name         | subject
  1     ruby          programming
  2     fiction       english


Author - has many books
Book belongs to an author
Book has many Genres
Genre has many books


Books 
 id | title            | author_id | 
  1    harry potter      102         
  2    sorcerer's stone  102         
  3    huck finn         103         

books_genres
id | book_id | genre_id
1      1          1
2      1          2
3      3          1
4      3          2

select authors.name from books inner join book_genres on book_genres.book_id = books.id inner join authors on books.author_id = authors.id where genre_id = 1
Genres
id | name
1    fiction
2    fantasy

select * from genres inner join books on books.genre_id = genres.id;

Author
id | name       | hometown | 
102  jk rowling    london
103   mark twain   south

belongs to 
select * from authors where id = 102

has many 
select * from books where author_id = 102; 



2. Domain modeling 
  - has many through 
3. Domaing modeling again 
 aggregrates

 Joining tables
  - how does a join/sql work and make queries
  - inner join 
  - outer join
III. Post lecture

- Complex data model
  - Bar wants to keep track of the customers that bring in the most revenue, and the bartenders that bring in the most revenue.  It also wants to keep track of the cost of each drink - which will be calculated by adding each drink's ingredients. 
  As a bonus, also consider how we would structure the tables if we want to keep track of what orders are on what receipt.
  How do we model these tables?

  - has many through
  - aggregate functions 
    - sum, count
    - group by 
    - order by and having
