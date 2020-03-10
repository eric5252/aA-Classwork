require "byebug"
class PolyTreeNode
    attr_accessor :parent, :children, :value

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def inspect
        value.inspect
    end
    def parent=(parentnode)   
        if !@parent.nil?
            self.parent.children.delete(self)
        end
        if parentnode.nil? 
            @parent = nil
        else
                debugger
            @parent = parentnode
            
            if !parentnode.children.include?(self)
                parentnode.children << self   

            end
        end
        
    end

    def add_child(childnode) 
        childnode.parent = self
    end

    def remove_child(childnode)
        raise "error" if childnode.parent != self

        childnode.parent = nil
    end

    def dfs(target) 
         debugger
        return self if self.value == target

            self.children.each do |child|
                search_result = child.dfs(target)
                return search_result if !search_result.nil?
            end
        nil
    end

    def bfs(target)
        queue = []
        queue.push(self)
        until queue.empty?
            node = queue.shift
            return node if node.value == target
            node.children.each do |child|
                queue.push(child)
            end
        end
        nil
    end


end
