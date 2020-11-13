# Write your code here.
def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(array)
    array.collect {|name| badge_maker(name)}
end

def assign_rooms(array)
    newArray = []
    array.each_with_index {|name, index|   
        newArray << "Hello, #{name}! You'll be assigned to room #{index + 1}!"
    }
    newArray 
end 

def printer(array)
    badges = batch_badge_creator(array)
    rooms = assign_rooms(array)
    counter = 0
    while counter < badges.size do
        puts badges[counter]
        puts rooms[counter]
        counter += 1
    end 
end