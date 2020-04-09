
describe 'Roman numeral converter' do
    before do
        @roman = Roman.new
    end

    # syntax for instance variables 
    
context ('Base numbers') do
    it('Will return I for one') do
        expect(@roman.converter (1)).to eq('I')
    end

    it('Will return V for five') do
        expect(@roman.converter(5)).to eq('V')
    end

    it('Will return X for ten') do
        expect(@roman.converter(10)).to eq('X')
    end

    it('Will return L for fifty') do
        expect(@roman.converter(50)).to eq('L')
    end

    it('Will return C for one hundred') do
        expect(@roman.converter(100)).to eq('C')
    end

    it('WIll return D for five hundred') do
        expect(@roman.converter(500)).to eq('D')
    end

    it('Will return M for one thousand') do
        expect(@roman.converter(1000)).to eq('M')
    end
end 

context ('Converting additions') do
    it('Will return II for two') do
        expect(@roman.converter(2)).to eq('II')
    end
    
    it('Will return III for three') do
        expect(@roman.converter(3)).to eq('III')
    end

    it('Will return XI for eleven') do
        expect(@roman.converter(11)).to eq('XI')
    end

    it('WIll return XC for ninety') do
        expect(@roman.converter(90)).to eq('XC')
    end

    it('Will return CCC for three hundred') do
        expect(@roman.converter(300)).to eq('CCC')
    end
end

context ('Converting subtractions') do
    it('Will return IV for four') do
        expect(@roman.converter(4)).to eq('IV')
    end

    it('Will return IX for nine') do
        expect(@roman.converter(9)).to eq('IX')
    end

    it('Will return CD for four hundred') do
        expect(@roman.converter(400)).to eq('CD')
    end

    it('WIll return CM for nine hundred') do
        expect(@roman.converter(900)).to eq('CM')
    end
end
end


class Roman

    SYMBOLS = [
        
        ['M', 1000],
        ['CM', 900],
        ['D', 500],
        ['CD', 400],
        ['C', 100],
        ['XC', 90],
        ['L', 50],
        ['X', 10],
        ['IX', 9],
        ['V', 5], 
        ['IV', 4],
        ['I', 1]
    ]

    def converter(num)
        result = ''

        SYMBOLS.each do |roman, arabic|
            while num >= arabic
                result += roman
                num -= arabic
            end
        end
    result
    end
end