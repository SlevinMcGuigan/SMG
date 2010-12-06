require 'test/unit'
require 'lib/book_in_stock'

class TcBookInStock < Test::Unit::TestCase
  def test_isbn_is_initialized_correctly
    book = BookInStock.new("1234",23)
    assert_equal("1234",book.isbn)
  end
  def test_price_is_initialized_correctly
    book = BookInStock.new("1234",23)
    assert_equal(23,book.price)
  end
  def test_price_may_not_be_initialized_with_a_string_value
    assert_raise( TypeError ) do
      BookInStock.new("TypeError expected","abcd")
    end
  end
  def test_price_may_not_be_initialized_with_zero_arguments
    assert_raise( ArgumentError) do
      BookInStock.new()
    end
  end
  def test_price_may_not_be_initialized_with_one_argument
    assert_raise( ArgumentError ) do
      BookInStock.new("ArgumentError expected")
    end
  end
  def test_price_may_not_be_initialized_with_three_arguments
    assert_raise( ArgumentError ) do
      BookInStock.new("ArgumentError expected",1234,"blub")
    end
  end

  def test_price_can_be_changed
    book = BookInStock.new("1234",23)
    book.price = book.price + 10
    assert_equal(33,book.price)
  end
  def test_isbn_can_not_be_changed
    book = BookInStock.new("1234",23)
    assert_raise( NoMethodError ) do
      book.isbn = "2345"
    end
  end
  
  def test_to_s_prints_enriched_information
    book = BookInStock.new("1234",23)
    assert_equal("ISBN: '1234', price: '23.00'",book.to_s)
  end
end