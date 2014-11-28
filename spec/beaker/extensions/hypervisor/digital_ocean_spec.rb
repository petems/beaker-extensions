require 'spec_helper'

RSpec.describe Beaker::Extensions::DigitalOcean do

  let( :options ) { make_opts }
  let( :digital_ocean ) { Beaker::Extensions::DigitalOcean.new('digital_ocean', options ) }

  it '#work_in_progress' do
    expect(digital_ocean.work_in_progress).to be_nil
  end

end