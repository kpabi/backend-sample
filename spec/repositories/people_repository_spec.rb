# frozen_string_literal: true

require 'spec_helper'

RSpec.describe PeopleRepository do
  let(:params) do
    [
      {
        firstname: 'John',
        lastname: 'Doen',
        birthdate: '1-1-2001',
        city: 'Atlanta'
      },
      {
        firstname: 'Jane',
        lastname: 'Doen',
        birthdate: '1-1-2001',
        city: 'Atlanta'
      },
      
    ]
  end
  before(:each) do 
    @people = params.map{|person_params|Person.new(person_params)}
  end
  describe '#sort_by_firstname' do
    it 'should sort array of Persons by firstname' do
      sorted_people = PeopleRepository.sort_by_firstname(@people)
      expect(sorted_people.first).to eq(@people.last)
      expect(sorted_people.last).to eq(@people.first)
    end
  end
end
