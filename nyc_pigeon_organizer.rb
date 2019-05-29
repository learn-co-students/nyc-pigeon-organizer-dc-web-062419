def nyc_pigeon_organizer(data)
  hash = {}


  data.each do |trait, attributes|
    attributes.each do |details, names|
      names.each do |name|
        hash[name] ||= {}
        hash[name][trait] ||= []
        hash[name][trait] << details.to_s


      end 
    end 
  end 
  return hash
end