require "pry"

def nyc_pigeon_organizer(pigeon_data)
  pigeon_list = {}
  pigeon_data.each do |attribute, options|
    options.each do |option, pigeons|
      #binding.pry
      pigeons.each do |pigeon|
        #binding.pry
        pigeon_list[pigeon] ||= {}
        pigeon_list[pigeon][attribute] ||= []
        pigeon_list[pigeon][attribute] << option.to_s
        #binding.pry
      end
    end
  end
  pigeon_list
end
