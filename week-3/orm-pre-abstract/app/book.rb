require 'pry'
require "sqlite3"

class Book
  attr_accessor :title, :page_count, :genre, :price
  attr_reader :id

  ATTRIBUTES = {
    id: "INTEGER Primary Key AUTOINCREMENT",
    title: "TEXT",
    page_count: "INTEGER", 
    genre: "TEXT",
    price: "Integer"
  }

  def self.public_attributes
    ATTRIBUTES.keys.reject do |key|
      key == :id
    end
  end

  def values
    self.class.public_attributes.map do |symbol|
      self.send(symbol)
    end
  end
  
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

  def self.all
    sql = <<-SQL
      SELECT * FROM books;
    SQL

    rows = self.db.execute(sql)
    rows.map do |row|
      Book.book_from_row(row)
    end
  end

  def save
    if persisted?
      update
    else
      insert
    end
  end

  def ==(other_object)
    self.id == other_object.id
  end


  def destroy
    sql_statement = <<-SQL
      DELETE from books WHERE id = ?;
    SQL
    self.class.db.execute(sql_statement, self.id)
  end

  def persisted?
    !!self.id
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

  private 

# ATTRIBUTES = {
  #   id: "INTEGER Primary Key AUTOINCREMENT",
  #   title: "TEXT",
  #   page_count: "INTEGER", 
  #   genre: "TEXT",
  #   price: "Integer"
  # }

  def insert
    insert_string = self.class.public_attributes.map do |key|
      key.to_s
    end.join(", ")
    # ['id', title', page_count, 'genre', 'price']
    # 
    question_marks = self.class.public_attributes.map do |attr|
      "?"
    end.join(", ")
    sql = <<-SQL
      INSERT INTO books (#{insert_string}) VALUES
        (#{question_marks})
    SQL
    
    self.class.db.execute(sql, *values)
    # values = ['huck finn', 300, 'scary']
  end

  def update
    # 1. Get all of the public attrbutes
    # ['title', 'page_count']

    # 2. ['title = ?', 'page_count = ?']
    # 3. turn the array in to a string
    sql_statement = <<-SQL
        UPDATE books SET title = ?, page_count = ?, genre = ?, price = ? WHERE id = ?;
    SQL
    # *['book', 300]
    self.class.db.execute(sql_statement, *values)
  end
end




