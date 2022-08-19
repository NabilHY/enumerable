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


