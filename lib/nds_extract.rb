require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
   result = {}
    db = nds
  
    db.size.times do |odex|     #odex: outter index
      director_data = db[odex]    #must be a hash, not an array!
      key = db[odex][:name]       #assign director names
      result[key] = gross_for_director(director_data)   #build the hash
    end #OUTTER lop  
   result  
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)    
      gross_sales = 0         #Set gross sales for each element of the db array
      director_data[:movies].size.times do |index|         #loop based on the size of the inner arrays for each director
          gross_sales += director_data[:movies][index][:worldwide_gross]     #compute gross sales
      end #INNER loop
      gross_sales
end
