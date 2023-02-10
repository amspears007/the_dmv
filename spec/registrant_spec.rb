require 'spec_helper'

RSpec.describe Registrant do
  it 'exists' do
  registrant_1 = Registrant.new('Bruce', 18, true )
  registrant_2 = Registrant.new('Penny', 15 )
  # require 'pry'; binding.pry

  expect(registrant_1).to be_an_instance_of(Registrant)
  end

  it 'registrant_1 can verify name, age, and permit' do
    registrant_1 = Registrant.new('Bruce', 18, true )
    registrant_2 = Registrant.new('Penny', 15 )

    expect(registrant_1.name).to eq('Bruce')
    expect(registrant_1.age).to eq(18)
    expect(registrant_1.permit?).to eq(true)
  end

  it 'can call a hash of license data' do
    registrant_1 = Registrant.new('Bruce', 18, true )
    registrant_2 = Registrant.new('Penny', 15 )
    # require 'pry'; binding.pry

    expected = {:written=>false, :license=>false, :renewed=>false}

    expect(registrant_1.license_data).to eq(expected)
  end

  it 'registrant_2 has an age, name, and license data' do
    registrant_1 = Registrant.new('Bruce', 18, true )
    registrant_2 = Registrant.new('Penny', 15 )

    expect(registrant_2.name).to eq("Penny")
    expect(registrant_2.age).to eq(15)

    expected = {:written=>false, :license=>false, :renewed=>false}
    expect(registrant_2.license_data).to eq(expected)
  end

  it 'starts with no permit, but can earn one' do
    registrant_1 = Registrant.new('Bruce', 18, true )
    registrant_2 = Registrant.new('Penny', 15 )

    expect(registrant_2.permit?).to eq(false)

    registrant_2.earn_permit

    expect(registrant_2.permit?).to eq(true)
  end
end