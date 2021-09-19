# frozen_string_literal: true

# Parse person record files with columns separated by '%'
module People
  class PercentParser < BaseParser
    def parse_row(row)
      firstname, city, birthdate = row.split('%').map(&:strip)
      Person.new(firstname: firstname, city: city, birthdate: birthdate)
    end
  end
end
