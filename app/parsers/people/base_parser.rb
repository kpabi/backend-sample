# frozen_string_literal: true

# Abstract class for parsing files with person records
module People
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
