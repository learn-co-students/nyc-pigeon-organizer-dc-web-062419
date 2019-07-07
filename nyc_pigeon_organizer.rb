require 'pry'

def nyc_pigeon_organizer(data)
  pidgeon_hash = {}
  data.each do |cate, cate_hash|
    cate_hash.each do |attribute, array|
      array.each do |name|
        pidgeon_hash[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
  data[:color].each do |color, array|
    array.each do |name|
      if pidgeon_hash.keys.include?(name)
        pidgeon_hash[name][:color] << color.to_s
    end
  end
end
data[:gender].each do |gender, array|
  array.each do |name|
    if pidgeon_hash.keys.include?(name)
      pidgeon_hash[name][:gender] << gender.to_s
    end
  end
end
data[:lives].each do |location, array|
  array.each do |name|
    if pidgeon_hash.keys.include?(name)
      pidgeon_hash[name][:lives] << location
    end
  end
end
pidgeon_hash
# binding.pry
end