require 'bigdecimal'

class BookInStock
  attr_reader :isbn
  attr_accessor :price
  def initialize(isbn, price)
    @isbn = isbn
    @price = BigDecimal.new('0') + price
  end
  def to_s
    "ISDN: '#{isbn}', price: '%.2f'" % price
  end
end