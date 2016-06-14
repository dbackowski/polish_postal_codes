require 'polish_postal_codes'

describe PolishPostalCodes::Info do
  subject { PolishPostalCodes::Info }

  describe '#get' do
    context '41-400' do
      it 'returns postal code information' do
        expect(subject.get('41-400')).to eq(city: "Mysłowice",
                                            community: "Mysłowice",
                                            county: "Mysłowice",
                                            province: "śląskie")
      end
    end

    context '43-600' do
      it 'returns postal code information' do
        expect(subject.get('43-600')).to eq(city: "Jaworzno",
                                            community: "Jaworzno",
                                            county: "Jaworzno",
                                            province: "śląskie")
      end
    end

    context '31-008' do
      it 'returns postal code information' do
        expect(subject.get('31-008')).to eq(city: "Kraków",
                                            community: "Kraków",
                                            county: "Kraków",
                                            province: "małopolskie")
      end
    end

    context '43-609' do
      it 'returns nil' do
        expect(subject.get('41-609')).to be_nil
      end
    end
  end
end
