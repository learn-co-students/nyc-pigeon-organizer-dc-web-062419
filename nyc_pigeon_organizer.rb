def nyc_pigeon_organizer(data)
  # write your code here!
  
  pigeon_list = {}
  
    data.each do |attributes, types|
      
      types.each do |adjective, name_array|
    	
    	name_array.each do |name|


          if pigeon_list[name].nil?
            
            	pigeon_list[name] = {"#{attributes}": ["#{adjective}"]}
          
          elsif 
          		pigeon_list[name][attributes].nil?

          		pigeon_list[name][attributes]=["#{adjective}"]

          elsif 
          		data[attributes][adjective].include?(name)
          	   pigeon_list[name][attributes] << "#{adjective}"
    	end
      end
    end
  end
  pigeon_list
end
