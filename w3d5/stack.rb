class Stack

    
    def initialize
        @store = []
    end
    
    def push(el)
        store << el
        self
    end
    
    def pop
        store.pop
    end
    
    def peek
        store[-1]
    end
    
    def size
        store.length
    end
    
    def empty?
        size == 0
    end
    
    def inspect  
        "#<Stack:#{self.object_id}>"  
    end

    private
    attr_reader :store
end