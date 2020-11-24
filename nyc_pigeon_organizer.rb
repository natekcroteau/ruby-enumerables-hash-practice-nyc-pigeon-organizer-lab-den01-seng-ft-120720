require 'pry'  #require pry 
 
def nyc_pigeon_organizer(data) 
  
  findata = data.each_with_object({}) do |(k, v), f_arr| #each_with_object transforms hash to hash k=color,v=color value,f_arr is empty
    v.each do |color, names|                            #for each color hash
      names.each do |name|                      
        if !f_arr[name]                         
          f_arr[name] = {}                      
        end
        if !f_arr[name][k]                      
          !f_arr[name][k] = [] 
        end
        f_arr[name][k].push(color.to_s)   
     end 
    end 
  end 
end 






















#require 'pry'

#def nyc_pigeon_organizer(data)
#  findata = data.each_with_object({}) do |(k, v), f_arr|  #k=color w/ v being the color value hash, f_arr is the empty hash 
                                                      #binding.pry used here first to define the above
 #   v.each do |color, names|                      #for every v itterate for the k,v combo within that larger hash
                                         #binding.pry here to determine color=purple and names=the names, what we are looking for!!!
#      names.each do |name|               #target the now inner-looped value of name  
 #       if !f_arr[name]                    #and if it is not in f_arr[the current itterated name]
  #        f_arr[name] = {}                   #then create a hash for it
                                                #binding.pry here verifies that the f_arr created a new hash for the first name itterated 
   #     end
    #    if !f_arr[name][k]                      #if the current color(k) doesnt exist then
     #     f_arr[name][k] = []                   #create a new array for that in the form of an array 
      #  end
       # findata[name][k].push(color.to_s)       #and fill in the colors for each itteration with each name 
    
     #end 
    #end 
  #end 
  
#end 