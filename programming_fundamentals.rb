trains = [
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]

def find_direction_by_number (number, trains)
  trains.each do |train|
    if train[:train] == number
      return train[:direction]
    end
  end
end


def find_frequency_by_number (number, trains)
  trains.each do |train|
    if train[:train] == number
      return train[:frequency_in_minutes]
    end
  end
end

# Save the direction of train 111 into a variable.
direction_111 = find_direction_by_number("111", trains)
puts direction_111

# Save the frequency of train 80B into a variable.
frequency_80B = find_frequency_by_number("80B", trains)
puts frequency_80B

# Save the direction of train 610 into a variable.
direction_610 = find_direction_by_number("610", trains)
puts direction_610

# Create an empty array. Iterate through each train and add the name of the train into the array if it travels north.

# Do the same thing for trains that travel east.
# You probably just ended up rewriting some of the same code. Move this repeated code into a method that accepts a direction and a list of trains as arguments, and returns a list of just the trains that go in that direction. Call this method once for north and once for east in order to DRY up your code.

def find_trains_by_direction (direction, trains)
  train_list = []
  trains.each do |train|
    if train[:direction] == direction
      train_list << train
    end
  end
  return train_list
end

trains_northbound = []
trains_eastbound = []

trains_northbound = find_trains_by_direction("north", trains)
trains_eastbound = find_trains_by_direction("east", trains)
puts("---------------")
puts trains_northbound
puts("---------------")
puts trains_eastbound

# Pick one train and add another key/value pair for the first_departure_time. For simplicity, assume the first train always leave on the hour. You can represent this hour as an integer: 6 for 6:00am, 12 for noon, 13 for 1:00pm, etc.
puts("---------------")
trains[0][:first_departure_time] = 6
puts trains[0]
