require 'Bike'

describe Bike do
  it { is_expected.to respond_to :working? }

  it 'Bike has a working instance variable' do
    expect(subject).to respond_to :working
  end

  it 'breaks' do
    subject.breaks
    expect(subject.working?).to eq false
  end
end
