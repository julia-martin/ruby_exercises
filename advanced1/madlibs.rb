NOUNS = %w[dog cat bird tree house boy girl]
VERBS = %w[looks sees licks hears smells touches eats]
ADJECTIVES = %w[sleepy happy sad lazy fat pretty cute]
ADVERBS = %w[quickly joyfully slowly noisily]
TEXT = ["The %{adjective} brown %{noun} %{adverb}",
"%{verb} the %{adjective} yellow",
"%{noun}, who %{adverb} %{verb} his",
"%{noun} and looks around."]

TEXT.each do |line|
  puts line.% adjective: ADJECTIVES.sample, noun: NOUNS.sample, adverb: ADVERBS.sample, verb: VERBS.sample
end
