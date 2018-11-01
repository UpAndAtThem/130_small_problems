class TextAnalyzer
  def process
    paragraph = File.read './test_file.txt'
    
    yield paragraph
  end 
end

analyzer = TextAnalyzer.new

analyzer.process { |text| puts "#{text.split("\n\n").count} paragraphs"}
analyzer.process { |text| puts "#{text.split("\n").count} lines" }
analyzer.process { |text| puts "#{text.split(" ").count} words" }
