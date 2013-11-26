get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:word' do
	word = params[:word]
	@word = params[:word]
	@answers = Word.where(canonical_word: word.downcase.chars.sort.join).map {|w| w.word }
	erb :index
end

