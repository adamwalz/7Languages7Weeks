#----------------------------------------------------------------------------
#          FILE:  tree.rb
#   DESCRIPTION:  Seven Languages in Seven Weeks - Ruby - Day 2 Exercises
#        AUTHOR:  Adam Walz <adam@adamwalz.net>
#       VERSION:  1.0.0
#
# The Tree class was interesting,
# but it did not allow you to specify a new tree
# with a clean user interface.
# Let the initializer accept a nested structure of hashes.
# You should be able to specify a tree like this:
# {'grandpa' => { 'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {} } } }.
#----------------------------------------------------------------------------

class Tree
  attr_accessor :children, :node_name

  def initialize(tree={})
    @node_name = tree.first[0]
    @children = tree.first[1].map do |child, grandchildren|
      Tree.new(child => grandchildren)
    end
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end

end

easy_tree = Tree.new({'grandpa' => { 'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {} } } })

puts "Visiting a node"
easy_tree.visit {|node| puts node.node_name}
puts

puts "visiting entire tree"
easy_tree.visit_all {|node| puts node.node_name}
