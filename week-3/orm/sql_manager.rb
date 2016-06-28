require 'pry'
require "sqlite3"


class Book
  attr_accessor :title, :page_count, :genre, :price
  attr_reader :id

  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS books (
        id INTEGER PRIMARY KEY,
        title TEXT,
        page_count INTEGER,
        genre TEXT,
        price INTEGER
      )
    SQL

    db.execute(sql)
  end

  def initialize(attributes = {})
    @id = attributes[:id]
    @title = attributes[:title]
    @page_count = attributes[:page_count]
    @genre = attributes[:genre]
    @price = attributes[:price]
  end

  def self.db
    @@db ||= SQLite3::Database.new "literature.db"
  end


  def destroy
    
  end

  def insert
    binding.pry
    sql = <<-SQL 
      INSERT INTO books (title, page_count, genre, price)
      VALUES (#{self.title}, #{self.page_count}, #{self.genre}, #{self.price})
    SQL
    
    self.class.db.execute(sql)
  end

  def update
    # should update the object it is called on
  end

  def self.all
    # should return an array of book objects, representing all of the 
    # book objects in the db
  end

  def self.find(id)
    sql = <<-SQL
      SELECT * FROM books WHERE id = ?;
    SQL

    row = self.db.execute(sql, id)
    self.book_from_row(row.first)
  end

  def self.book_from_row(row)
    Book.new(id: row[0], title: row[1], page_count: row[2], genre: row[3], price: row[4])
  end
end



Pry.start


