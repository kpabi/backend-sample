# frozen_string_literal: true

module People
  # Parse person record files with columns separated by '%'
  class PercentParser < BaseParser
    def parse_row(row)
      firstname, city, birthdate = row.split('%').map(&:strip)
      Person.new(firstname: firstname, city: city, birthdate: birthdate)
    end
  end
end
