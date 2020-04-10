# https://leetcode.com/problems/min-stack/

class Node
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

class MinStack
  attr_accessor :head, :min

  def initialize
    @head = nil
    @min = nil
  end

  def push(x)
    if @head.nil?
      @head = Node.new(x)
      @min = x
    else
      temp = Node.new(x)
      temp.next = @head
      @head = temp

      @min = @head.val if @head.val < @min
    end
  end

  def pop
    temp = @head
    @head = @head.next

    if @head.nil?
      @min = nil
      return
    end

    if temp.val == @min
      @min = @head.val

      loop do
        temp = temp.next
        break if temp.nil?

        @min = temp.val if temp.val < @min
      end
    end
  end

  def top
    @head.val
  end

  def get_min
    @min
  end
end
