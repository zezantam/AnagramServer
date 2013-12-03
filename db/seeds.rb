dictionary = File.open(File.expand_path( "../words" , __FILE__))

dictionary.each do |entry|
	entry = entry.chomp
	Word.create(word: entry, canonical_word: entry.downcase.chars.sort.join)
end
