class MyQueue
 
    def initialize
        @line = []
    end

    def enqueue(el)
        line.unshift(el)
        self
    end

    def dequeue
        line.pop
    end

    def size
        line.size
    end
    
    def show
        line.dup
    end
    
    def empty?
        line.empty?
    end

    private
    attr_reader :line

end