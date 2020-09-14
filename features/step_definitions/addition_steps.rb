Given('i have two numbers {int} and {int}') do |int, int2|
  @num1= int
  @num2 = int2
end

When('i click on Add button') do
  calc = Addition.new
  @output = calc.add(@num1, @num2)
end

Then('the output should be {int}') do |int|
  log(@output)
  if @output  == int.to_i
    log("test passed")
  else
    fail 'Test Failed'
  end
end