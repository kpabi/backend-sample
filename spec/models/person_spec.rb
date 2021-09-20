# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Person do
  let(:params) do
    {
      firstname: 'Agent',
      lastname: '47',
      birthdate: '1-1-2001',
      city: 'Atlanta'
    }
  end
  before(:each) do
    @person = Person.new(params)
  end
  describe '#initialize' do
    it 'sets the right firstname' do
      expect(@person.firstname).to be(params[:firstname])
    end
  end

  describe '#to_s' do
    it 'formats person record' do
      expect(@person.to_s).to eq("#{params[:firstname]}, Atlanta, 1/1/2001")
    end
    context 'when city is a shortname' do
      before do
        @person = Person.new(params.merge(city: 'NYC'))
      end
      it 'returns person string with full city name' do
        expect(@person.to_s).to eq("#{params[:firstname]}, New York City, 1/1/2001")
      end
    end
  end
end
