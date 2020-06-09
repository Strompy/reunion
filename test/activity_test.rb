require 'minitest/autorun'
require 'minitest/'
require './lib/activity'

class ActivityTest < Minitest::Test
end

For the `add_participant` method, the first argument represents the name of someone who participated in the activity, and the second argument represents how much they paid for the activity.

```ruby
pry(main)> require './lib/activity'
# => true

pry(main)> activity = Activity.new("Brunch")
# => #<Activity:0x007fe4ca1df568 ...>

pry(main)> activity.name
# => "Brunch"

pry(main)> activity.participants
# => {}

pry(main)> activity.add_participant("Maria", 20)

pry(main)> activity.participants
# => {"Maria" => 20}

pry(main)> activity.total_cost
# => 20

pry(main)> activity.add_participant("Luther", 40)

pry(main)> activity.participants
# => {"Maria" => 20, "Luther" => 40}

pry(main)> activity.total_cost
# => 60
