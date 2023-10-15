require 'dad_jokes'
require 'espeak'

espeak_installed = false

until false do
	joke = DadJokes.random
	puts joke
	sleep(5) unless espeak_installed
	ESpeak::Speech.new(joke).speak if espeak_installed	
end