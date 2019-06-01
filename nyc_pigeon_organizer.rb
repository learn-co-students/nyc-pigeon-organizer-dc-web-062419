def nyc_pigeon_organizer(pigeon_data)
  name_array, pigeon_list = [], {}
  pigeon_data.each do |k,v|
    v.each do |v,data|
      name_array << data
    end
  end
  name_array.flatten.uniq.each do |name|
    pigeon_list[name] = {color:[], gender:[], lives:[]}
  end
  pigeon_list.each do |name, set|
    set.each do |type, values|
      pigeon_data[type].each do |k,v|
        if v.any?(name)
          values << k.to_s
        end
      end
    end
  end
  pigeon_list
end
