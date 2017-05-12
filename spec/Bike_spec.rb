require 'Bike'

describe Bike do

  it { is_expected.to respond_to :working? }

  it "Bike has a working instance variable" do
    expect(subject).to respond_to :working
  end

  # it "" do
  #
  # end


end
