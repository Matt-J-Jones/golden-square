# File: lib/checkcodeword.rb

def checkcodeword(codeword)
  if codeword == "horse"
    return "Correct! Come in."
  elsif codeword.chars.first == "h" && codeword.chars.last == "e"
    return "Close, but nope."
  else
    return "WRONG!"
  end
end