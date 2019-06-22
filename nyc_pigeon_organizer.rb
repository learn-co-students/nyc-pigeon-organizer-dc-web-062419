def nyc_pigeon_organizer(data)
  pigeons = {}
  data.each do |key, value|
    value.each do |k,v|
      v.each do |name|
        if !pigeons.has_key?(name)
          pigeons[name] = {}
    end
    
        if !pigeons[name].has_key?(key)
          pigeons[name][key] = []
        end

        if !pigeons[name][key].include?(k)
          pigeons[name][key] << k.to_s
        end
      end
    end
  end
  pigeons
end
 