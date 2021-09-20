# frozen_string_literal: true

module People
  # Abstract class for parsing files with person records
  class BaseParser
    attr_reader :raw_data

    # - params:
    #   - raw_data: `String` person records separate by new lines
    def initialize(raw_data)
      @raw_data = raw_data
    end

    # - returns: Array of ::Person
    def parse
      people = []
      @rows = raw_data.split("\n")
      @rows[1..].each do |row|
        row = row.strip
        next unless row.length > 0
        person = parse_row(row)
        people << person
      end
      people
    end

    # - returns: ::Person model
    def parse_row
      raise NotImplementedError, 'call method has not been implemented'
    end
  end
end
