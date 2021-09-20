# frozen_string_literal: true
require 'spec_helper'

RSpec.describe People::DollarParser do
  let(:people_file_content) do
    %q{city $ birthdate $ last_name $ first_name
      LA $ 30-4-1974 $ Nolan $ Rhiannon
      NYC $ 5-1-1962 $ Bruen $ Rigoberto
    }
  end
  subject { People::DollarParser.new(people_file_content) }
  describe '#parse' do
    before do 
      @people = subject.parse
    end
    it 'should return the right number of rows' do
      expect(@people.count).to eq(2)
    end
  end
end
