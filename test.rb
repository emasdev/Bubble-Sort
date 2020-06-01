def hello
  puts 'begining'
  yield
  puts 'end'
end

hello do
  puts 'This is gonna trigger yield'
end
