# frozen_string_literal: true

require 'date'

class Person
  attr_reader :firstname

  @@cities = { 'NYC' => 'New York City', 'LA' => 'Los Angeles' }

  def initialize(firstname:, lastname: nil, birthdate: nil, city: nil)
    @firstname = firstname
    @lastname = lastname
    @birthdate = Date.parse(birthdate) if birthdate
    @city = city
  end

  def to_s
    "#{firstname}, #{full_city_name}, #{formatted_birthdate}"
  end
  private
  attr_reader :lastname, :city, :birthdate

  def formatted_birthdate
    birthdate.strftime('%-m/%-d/%Y')
  end

  def full_city_name
    @@cities[city] || city
  end
end
