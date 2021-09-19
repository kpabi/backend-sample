# frozen_string_literal: true

class PeopleController
  def initialize(params)
    @params = params
    @people = []
  end

  def normalize
    people.push(*People::DollarParser.new(params[:dollar_format]).parse)
    people.push(*People::PercentParser.new(params[:percent_format]).parse)

    people.map(&:to_s)
  end

  private

  attr_reader :params, :people

end
