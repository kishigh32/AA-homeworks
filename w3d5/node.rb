require_relative "queue"
class Node

    attr_reader :children, :value

    def initialize(value, children = [])
        @value = value
        @children = children
    end

    def bfs(target)
        queue = MyQueue.new
        queue.enqueue(self)

        until queue.empty?
            curr_node = queue.dequeue
            return curr_node if curr_node.value == target

            curr_node.children.each do |child|
                queue.enqueue(child)
            end
        end
        nil
    end
end