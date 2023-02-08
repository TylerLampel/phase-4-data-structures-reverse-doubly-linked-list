# require_relative './node'

# class LinkedList
#   attr_accessor :head, :tail, :length

#   def initialize
#     @head = nil
#     @tail = nil
#     @length = 0
#   end

  # [ 1 <-> 2 <-> 3 <-> 4]
  # [ 4 <-> 2 <-> 3 <-> 1]
  # [ 4 <-> 3 <-> 2 <-> 1]

#   def reverse!
#     return @head if @length < 2
#     curr = @head
#     newHead = nil
#     i = 0
#     while(curr != nil)
#       curr.prev = curr.next
#       curr.next = newHead
#       newHead = curr
#       curr = curr.prev
#       i += 1
#         # prev = node.next
#         # node.next = node.prev
#         # node.prev = prev
#         # node = prev
#         # i += 1
#     end
#      return newHead
#   end
# end


require_relative './node'

class LinkedList
  attr_accessor :head, :tail, :length

  def initialize
    @head = nil
    @tail = nil
    @length = 0
  end

  def reverse!
    return @head if @length < 2

    current = @head 
    new_head = nil

    while(current != nil)
      new_head = current.prev_node
      current.prev_node = current.next_node 
      current.next_node = new_head
      current = current.prev_node 
    end
    new_head.prev_node
  end
end