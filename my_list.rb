require_relative 'enumerable'

class MyList
  include MyEnumerable

  def initialize(*args)
    @args = args
  end

  def each(&block)
    @args.each do |arg|
      block.call(arg)
    end
  end
end

# Create our list

list = MyList.new(1, 2, 3, 4)

puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })
puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })
puts(list.filter(&:even?))
