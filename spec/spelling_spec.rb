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
    end
  end
end
