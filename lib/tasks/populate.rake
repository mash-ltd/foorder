task :populate_restaurants do
  buffalo_burger = Restaurant.find_or_create_by_name_and_address_and_phone('Buffalo Burger', 'Masaken Sheraton', '19914')
    
  if buffalo_burger.save
    puts 'Buffalo Burger added successfully'
  else
    puts '*Failed* to add Buffalo Burger'
  end

  ###################################################################################################################################################################
  burger_king = Restaurant.find_or_create_by_name_and_address_and_phone('Burger King', 'inside Sun City', '16977')
    
  if burger_king.save
    puts 'Burger King added successfully'
  else
    puts '*Failed* to add Burger King'
  end
  ###################################################################################################################################################################
  cook_door = Restaurant.find_or_create_by_name_and_address_and_phone('Cook Door', '14 El Taawoneyat Bldgs., El Nasr St., Masaken Sheraton', '16999')
    
  if cook_door.save
    puts 'Cook Door added successfully'
  else
    puts '*Failed* to add Cook Door'
  end
  ###################################################################################################################################################################
  dairy_queen = Restaurant.find_or_create_by_name_and_address_and_phone('Dairy Queen', 'inside Sun City', '16169')
    
  if dairy_queen.save
    puts 'Dairy Queen added successfully'
  else
    puts '*Failed* to add Dairy Queen'
  end
  ###################################################################################################################################################################
  el_dahan = Restaurant.find_or_create_by_name_and_address_and_phone('El-Dahan', 'inside Sun City', '16194')
    
  if el_dahan.save
    puts 'El-Dahan added successfully'
  else
    puts '*Failed* to add El-Dahan'
  end
  ###################################################################################################################################################################
  hardees = Restaurant.find_or_create_by_name_and_address_and_phone('Hardee\'s', 'inside Sun City', '19066')
    
  if hardees.save
    puts 'Hardee\'s added successfully'
  else
    puts '*Failed* to add Hardee\'s'
  end
  ###################################################################################################################################################################
  kfc = Restaurant.find_or_create_by_name_and_address_and_phone('KFC', 'inside Sun City', '19019')
    
  if kfc.save
    puts 'KFC added successfully'
  else
    puts '*Failed* to add KFC'
  end
  ###################################################################################################################################################################
  mcdonalds = Restaurant.find_or_create_by_name_and_address_and_phone('McDonald\'s', 'inside Sun City', '19991')
    
  if mcdonalds.save
    puts 'McDonald\'s added successfully'
  else
    puts '*Failed* to add McDonald\'s'
  end
  ###################################################################################################################################################################
  momen = Restaurant.find_or_create_by_name_and_address_and_phone('Mo\'men', 'inside Sun City', '16600')
    
  if momen.save
    puts 'Mo\'men added successfully'
  else
    puts '*Failed* to add Mo\'men'
  end
  ###################################################################################################################################################################
  pizza_hut = Restaurant.find_or_create_by_name_and_address_and_phone('Pizza Hut', '41 Abdel Hamid Badawy St.', '19000')
    
  if pizza_hut.save
    puts 'Pizza Hut added successfully'
  else
    puts '*Failed* to add Pizza Hut'
  end
  ###################################################################################################################################################################
  prego = Restaurant.find_or_create_by_name_and_address_and_phone('Prego', '23 Saqr Qoraish Buildings', '16121')
    
  if prego.save
    puts 'Prego added successfully'
  else
    puts '*Failed* to add Prego'
  end
  ###################################################################################################################################################################
  roastery = Restaurant.find_or_create_by_name_and_address_and_phone('Roastery', '5 Samir Mokhtar St. (Off Nabil EL Wakkad St.), Ard El Golf', '19941')
    
  if roastery.save
    puts 'Roastery added successfully'
  else
    puts '*Failed* to add Roastery'
  end
  ###################################################################################################################################################################
  roma_pizza = Restaurant.find_or_create_by_name_and_address_and_phone('Roma Pizza 2 Go', '41 Abdel Hamid Badawy St.', '19000')
    
  if roma_pizza.save
    puts 'Roma Pizza 2 Go added successfully'
  else
    puts '*Failed* to add Roma Pizza 2 Go'
  end
  ###################################################################################################################################################################
  shawerma_reem = Restaurant.find_or_create_by_name_and_address_and_phone('Shawerma Al-Reem', '76 Abdel Aziz Fahmy St., Saint Fatima', '16068')
    
  if shawerma_reem.save
    puts 'Shawerma Al-Reem added successfully'
  else
    puts '*Failed* to add Shawerma Al-Reem'
  end
  ###################################################################################################################################################################
  wild_burger = Restaurant.find_or_create_by_name_and_address_and_phone('Wild Burger', '2 Misr Lel Taamir Buildings, Anqara Street, 2nd Zone', '22685862')
    
  if wild_burger.save
    puts 'Wild Burger added successfully'
  else
    puts '*Failed* to add Wild Burger'
  end
  ###################################################################################################################################################################
  ya_mal_el_sham = Restaurant.find_or_create_by_name_and_address_and_phone('Ya Mal El-Sham', '5 Samir Mokhtar St. (Off Nabil EL Wakkad St.), Ard El Golf', '19941')
    
  if ya_mal_el_sham.save
    puts 'Ya Mal El-Sham added successfully'
  else
    puts '*Failed* to add Ya Mal El-Sham'
  end
  ###################################################################################################################################################################



  #########
  # Items #
  ###################################################################################################################################################################

end