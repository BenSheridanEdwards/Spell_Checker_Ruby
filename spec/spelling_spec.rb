require 'spelling'

describe Spelling do
  describe '.checker' do
    it "takes in a word 'hello' that has the correct spelling and returns it" do
      expect(subject.checker('hello')).to eq('hello')
    end

    it "takes in a word 'hellooo' that has been misspelt and returns it with tildas ~ ~ highlighting it" do
      expect(subject.checker('hellooo')).to eq('~hellooo~')
    end
  end
end
