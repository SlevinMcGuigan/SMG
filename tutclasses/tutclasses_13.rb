class BookInStock
  attr_reader   :isbn
  attr_accessor :price
  def initialize(isbn, price)
    @isbn  = isbn
    @price = Float(price)
  end
  def to_s
    "ISBN: #{@isbn}, price: #{@price}, price_in_cents: #{price_in_cents}"
  end
  def price_in_cents
    Integer(price*100 + 0.5)
  end
  def price_in_cents=(cents)
    @price = cents / 100.0
  end
end

b1 = BookInStock.new("isbn1", 3)
puts b1

b2 = BookInStock.new("isbn2", 3.14)
puts b2

b3 = BookInStock.new("isbn3", "5.67")
puts b3

puts "#######"

discountBook = BookInStock.new("discountISBN", 6)
puts discountBook
discountBook.price = discountBook.price * 0.75
puts "New Price: #{discountBook.price}"
puts discountBook

puts "####### ######"
puts discountBook.price_in_cents
discountBook.price_in_cents = 2345
puts discountBook