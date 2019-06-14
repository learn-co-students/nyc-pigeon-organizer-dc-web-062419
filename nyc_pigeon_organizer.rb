require "pry"

def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data. each do |attribute, attribute_hash|
    attribute_hash. each do |trait, name_array|
      name_array.each do |name|
        new_hash[name] = {:color => [], :gender => [], :lives => []}
    end
  end
end
  data[:color].each do |color, name_array|
    name_array.each do |name|
      if new_hash.keys.include?(name)
        new_hash[name][:color] << color.to_s
      end
    end
  end
  data[:gender].each do |gender, name_array|
    name_array.each do |name|
      if new_hash.keys.include?(name)
        new_hash[name][:gender] << gender.to_s
      end
    end
  end

  data[:lives].each do |location, name_array|
    name_array.each do |name|
      if new_hash.keys.include?(name)
        new_hash[name][:lives] << location.to_s
        end
      end
    end
    return new_hash
end