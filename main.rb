require_relative 'LinkedList.rb'
require_relative 'Node.rb'

list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('bear')
list.append('eagle')

puts list
puts list.size
puts list.head
puts list.tail
puts list.contains?('dog')
puts list.contains?('snake')
#list.pop
puts list
