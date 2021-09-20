# frozen_string_literal: true

class PeopleRepository
  def self.sort_by_firstname(people)
    people.sort { |person1, person2| person1.firstname <=> person2.firstname }
  end
end
