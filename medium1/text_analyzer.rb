class TextAnalyzer
  def process
    yield(File.read('sample_text.txt'))
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |file| puts "#{file.split("\n\n").size} paragraphs" }
analyzer.process { |file| puts "#{file.split("\n").size} lines" }
analyzer.process { |file| puts "#{num_words = file.split(' ').size} words" }