def print_in_box(str)
  puts '+-' + '-' * str.size + '-+'
  puts '|' + (' ' * (str.size + 2)) + '|'
  puts '| ' + str + ' |'
  puts '|' + (' ' * (str.size + 2)) + '|'
  puts '+-' + '-' * str.size + '-+'
end

print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+