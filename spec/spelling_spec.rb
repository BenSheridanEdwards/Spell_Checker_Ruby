require 'spelling'

describe Spelling do
  describe '.checker' do
    it "takes in the word 'hello' and returns it" do
      expect(subject.checker('hello')).to eq('hello')
    end
  end
end
