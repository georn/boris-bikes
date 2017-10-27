require 'DockingStation'

describe DockingStation do
	let(:bike) { double(:bike) }

	it { is_expected.to respond_to :release_bike }

describe '#release_bike' do
	it 'releases a bike' do
		bike = double(:bike, working?: true, working: true)
		subject.dock(bike)
		expect(subject.release_bike).to eq bike
	end
end

	it 'Docks a bike' do
		bike = double(:bike)
		expect(subject.dock(bike)).to eq subject.bikes_array
	end

	it 'has a bike' do
		expect(subject).to respond_to :bikes_array
	end

	it 'bike is a Bike' do
		bike = double(:bike, working?: true, working: true)
		subject.dock(bike)
		expect(subject.release_bike).to eq bike
	end

	it 'raises error if bike unavailable' do
		expect { subject.release_bike }.to raise_error('No bikes available')
	end

	describe '#dock' do
		it 'Raises error if dock is at capacity' do
			DockingStation::DEFAULT_CAPACITY.times { subject.dock double(:bike) }
			expect{ subject.dock(double(:bike)) }.to raise_error('Dock is at capacity')
		end
	end

	it 'accepts capacity parameter' do
		station = DockingStation.new(50)
		expect(station.capacity).to eq station.capacity
	end

	it 'default capacity equals 20' do
		expect(subject.capacity).to eq 20
	end

	it 'knows that the bike is broken' do
		bike = double(:bike, working: false)
		subject.dock(bike)
		expect(subject.bikes_array[0].working).to eq false
	end

	it 'raises an error upon release if all are broken' do
		bike = double(:bike, working: false)
		subject.dock(bike)
		expect { subject.release_bike }.to raise_error('All bikes broken')
	end

	it 'accepts broken bikes and working bikes' do
		bike = double(:bike, breaks: bike)
		expect(subject.dock(bike)).to eq subject.bikes_array
		expect(subject.dock(bike.breaks)).to eq subject.bikes_array
	end
end
