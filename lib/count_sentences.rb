require 'pry'

class String

  def sentence?
    self.end_with? "."
  end

  def question?
    self.end_with? "?"
  end

  def exclamation?
    self.end_with? "!"
  end

  def count_sentences
    sentences = self.split ".", "?", "!"
    sentences.select{|sentence| sentence != ""}.size
  end
end

p "The weather outside is frightful.".sentence?
p "And the fire is so delightful!".exclamation?
p "But since we've no place to go?".question?