require 'piggy_bank'

describe PiggyBank do
    it "Instances of PiggyBank" do
        expect(subject).to be_an_instance_of PiggyBank
    end

    it "Instances respond to the add method" do
        expect(subject).to respond_to(:add).with(0..1).arguments
    end

    it "Instances of PiggyBank accepts money" do
        expect(subject.add(10)).to eq([10])
    end

    it "Instances of PiggyBank stores money" do
        subject.add(10)
        expect(subject.add(10)).to eq([10, 10])
    end

    it "Responds to shake method" do
        expect(subject).to respond_to :shake
    end

    context "Testing .shake" do
		it "Clinks when money exists" do
			subject.add(1)
			expect(subject.shake).to eq "Clink!"
		end
		it "Does nothing when there's no money present" do
			subject = PiggyBank.new
			expect(subject.shake).not_to eq "Click!"	
		end
    end
    
    it "Responds to break method" do
        expect(subject).to respond_to :break
    end

    it "Returns sum when broken" do
        subject.add(10)
        subject.add(5)
        expect(subject.break).to eq(15)
    end
end