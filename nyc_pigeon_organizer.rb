require 'pry'                                              #require pry 
 
def nyc_pigeon_organizer(data) 
  
  fin_data = data.each_with_object({}) do |(k, v), f_arr|  #each_with_object transforms hash to hash k=color,v=color value,f_arr is empty
    v.each do |color, names|                              #for each color hash use the k,v combo = color,names
      names.each do |name|                               #for each name value do
        if !f_arr[name]                                 #if f_arr doesnt have that name
          f_arr[name] = {}                             #then add it as a new hash 
        end
        if !f_arr[name][k]                            #if f_arr doesnt have the name => color then 
          !f_arr[name][k] = []                        #add an array to collect color descriptor (if it doesnt already)
        end
        f_arr[name][k].push(color.to_s)               #push the color value into that array as a string 
     end 
    end 
  end 
end 
















