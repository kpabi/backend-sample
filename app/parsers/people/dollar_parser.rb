# frozen_string_literal: true

# Parse person record files with columns separated by '$'
module People
  class DollarParser < BaseParser
    def parse_row(row)
      city, birthdate, lastname, firstname = row.split('$').map(&:strip)
      Person.new({ city: city, firstname: firstname, lastname: lastname, birthdate: birthdate })
    end
  end
end
