require 'pry'
require "sqlite3"
def db
  @db ||= SQLite3::Database.new "literature.db"
end


# CRUD
def create(title, page_count, genre, price)
  sql_statement = <<-SQL
    INSERT INTO books (title, page_count, genre, price) 
      VALUES (?, ?, ?, ?)
  SQL
  
  db.execute(sql_statement, title, page_count, genre, price)
end


def show(book_id)
  sql_statement = <<-SQL
    SELECT * FROM books WHERE id = ?;
  SQL
  db.execute(sql_statement, book_id)
end



def index
  sql_statement = <<-SQL
    SELECT * FROM books;
  SQL
  db.execute(sql_statement)
end

def update(title, id)
  sql_statement = <<-SQL
    UPDATE books SET title = ? WHERE id = ?;
  SQL
  db.execute(sql_statement, title, id)
end

def destroy(id)
  sql_statement = <<-SQL
    DELETE from books WHERE id = ?;
  SQL
  db.execute(sql_statement, id)
end

binding.pry

puts 'hola'



