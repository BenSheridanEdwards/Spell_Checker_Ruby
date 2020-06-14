require 'spelling'

describe Spelling do
  describe '.checker' do
    context "when a single word is passed into the spell checker" do
      it "takes in a word 'hello' that has the correct spelling and returns it" do
        expect(subject.checker('hello')).to eq('hello')
      end

      it "takes in a word 'hellooo' that has been misspelt and returns it with tildas ~ ~ highlighting it" do
        expect(subject.checker('hellooo')).to eq('~hellooo~')
      end
    end

    context "when two words are passed into the spell checker" do
      it "takes in two words 'hello there' that has the correct spelling and returns them" do
        expect(subject.checker('hello there')).to eq('hello there')
      end

      it "takes in two words 'hellooo there' and highlights the hellooo as a misspelt word" do
        expect(subject.checker('hellooo there')).to eq('~hellooo~ there')
      end

      it "takes in two words 'hellooo thereee' and highlights both words as misspelt" do
        expect(subject.checker('hellooo thereee')).to eq('~hellooo~ ~thereee~')
      end 
    end

    context "when a sentence is passed into the spell checker" do
      it "takes in 'hello world i am ben' that has the correct spelling of all words and returns them" do
        expect(subject.checker('hello world I am Ben')).to eq('hello world I am Ben')
      end
    end
  end
end
