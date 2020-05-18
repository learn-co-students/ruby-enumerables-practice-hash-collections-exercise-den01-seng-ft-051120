# your code goes here

require 'pry'


def begins_with_r(array)
  array.all? { |element| element.start_with?("r")}
end

def contain_a(array)
  array.select { |element| element.include?('a')}
end

def first_wa(array)
  array.find { |element| element.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.select { |element| element.is_a?(String)}
end


def count_elements(hashes)

  hashes.reduce([]) do |counts_array, hash|
    
    count_hash = counts_array.find do |counted_hash|
      counted_hash[:name] == hash[:name]
    end
    
    if count_hash 
      count_hash[:count] += 1 
    else 
      new_count_hash = {
        name: hash[:name],
        count: 1 
      }
  
      counts_array << new_count_hash
    end
    counts_array
  end
end


def merge_data(data_1, data_2)
  output = []
  
  data_1.each_with_index do |element, index|
    new_hash = {}
    
    data_1[index].each do |key, value|
      new_hash[key] = value
    end
    
    data_2[index].each do |key, value|
      new_hash[key] = value
    end
    
    output << new_hash
  end
  output
end

def find_cool hashes
  hashes.select {|hash|  hash[:temperature] == "cool"}
end


def organize_campuses campuses 
  campuses_by_location = {}
  campuses.each do |name, location_hash|
    location = location_hash[:location]
    if campuses_by_location.has_key?(location)
      campuses_by_location[location]<< name
    else 
      campuses_by_location[location] = [name]
    end
  end
  campuses_by_location
end


