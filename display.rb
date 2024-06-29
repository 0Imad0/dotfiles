
def display_list(list)
  list.each_with_index do |gift, index|
    if gift[:bought]
      puts "#{index + 1} [X] - #{gift[:name]}"
    else
      puts "#{index + 1} [ ] - #{gift[:name]}"
    end
  end
end