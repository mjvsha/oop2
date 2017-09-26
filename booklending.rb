class Book

@@on_shelf = [] #an array of books that are available to be borrowed
@@on_loan = [] #an array of books that are out on loan

def initialize(name, author, isbn)
  @title = name
  @author = author
  @isbn = isbn

end

def title
@title
end



def due_date
  @due_date
end

def due_date(reset)
@due_date = reset
end



def borrow
  if self.lent_out? == true
    return false
  else
    Book.current_due_date

    puts "You have checked out #{self.title}. Your book will be due #{Book.current_due_date}"
    #move the book from the shelf to the on loan array
    @@on_shelf.delete(self)
      @@on_loan << self

      return true

  end

end



def return_to_library

  if self.lent_out? == false
    return false

  else
    #move book from books on loan
    return_book = @@on_loan.delete(self)

      @@on_shelf << return_book

    #set book's due date to nil
        self.due_date(nil)

    return true

  end

end



def lent_out?
  #this is an instnce method therefore it is acting on the state of one book
  #COME BACK TO THIS !!!!!

    @@on_shelf.each do |book|
      if
        self == book
          return false
      end

    end

    return true

end



def self.create(name, author, isbn)
  #create a book
  new_book = Book.new(name, author, isbn)
  #throw book on shelf
    @@on_shelf << new_book
    return new_book

end



def self.current_due_date

  @due_date = Time.now + 1.814e+6

end

=begin
def self.overdue_books

end
=end
def self.browse

  random_num = Random.rand(@@on_shelf.length)
    @@on_shelf[random_num]

end

def self.available

  @@on_shelf

end

def self.borrowed
  #this is a class method that will tell me about the whole lot of books tht are currently being lent out

  @@on_loan

end





end



puts harry_potter = Book.create("Harry Potter", "JK Rowling", "1000")

puts "-----"
puts lord_rings = Book.create("Lord of the Rings", "Tolkien", "2000")
puts malcolm = Book.create("The Autobiography of Malcolm X", "Alex Haley", "3000")
puts hunger_games = Book.create("The Hunger Games", "Suzzane Collins", "4000")

puts "-----------------------"

puts Book.available
puts Book.browse.inspect

puts harry_potter.lent_out?
puts harry_potter.borrow
puts "??????"
puts harry_potter.lent_out? #should return true
puts harry_potter.borrow #should return false
puts "------**--------"

puts Book.available.inspect
puts Book.borrowed.inspect
puts harry_potter.return_to_library
puts harry_potter.lent_out?
puts Book.available.inspect
puts Book.borrowed.inspect



puts "!!!!!!!!!!!!!!!!"
puts harry_potter.due_date
