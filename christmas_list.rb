puts "Bienvenue"
answer = nil
gift_list = [
  { name: "jeans", bought: false },
  { name: "tee-shirt", bought: false },
  { name: "bike", bought: false },
  { name: "hat", bought: true }
  ]

until answer == "quit"
  puts "Which action [list|add|delete|mark|quit]?"
  answer = gets.chomp
  case answer

  when "list"
    display_list(gift_list)
  when "add"
    puts "What item you want to add?"
    added_item = gets.chomp
    gift_list << added_item
  when "delete"
    display_list(gift_list)
    puts "Please enter the index of the item to delete: "
    removed_item_index = gets.chomp.to_i - 1
    removed_item = gift_list.delete_at(index)
     puts "#{removed_item} has been removed from your gift list."
  when "mark"
    display_list(gift_list)
    puts "Please enter the index of the article you bought"
    bought_article_index = gets.chomp.to_i - 1
    gift_list[index][:bought] = true
      puts "#{gift_list[index][:name]} has been marked as bought."
  when "quit"
    puts "Goodbye"
  else puts "I don't understand try again"
  end

end
