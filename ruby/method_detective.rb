# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”
## (Did a Ctrl+F "case" in the Ruby documentation for Strings to find it)

"zom".gsub(/o/,"oo")
"zom".gsub("o","oo")
"zom".sub(/o/,"oo")
"zom".sub("o","oo")
# => “zoom”

## To go from "zoom" to "zom":
## "zoom".squeeze
## (Technically, should do "zoom".squeeze("o"))
## => "zom"
## http://ruby-doc.org/core-2.3.1/String.html#method-i-squeeze

"enhance".center(15)
# => "    enhance    "
## (Did a Ctrl+F "padded" in the Ruby documentation for Strings to find it)

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"
## (Already knew this one!)

"the usual" << " suspects"
#=> "the usual suspects"
## http://ruby-doc.org/core-2.3.1/String.html#method-i-3C-3C

" suspects".prepend("the usual")
# => "the usual suspects"
## http://ruby-doc.org/core-2.3.1/String.html#method-i-prepend

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"
## (Already knew this one!)

"The mystery of the missing first letter"[1..-1]
"The mystery of the missing first letter".slice(1,"The mystery of the missing first letter".length)
# => "he mystery of the missing first letter"
## Oh boy. So, I did a CTRL+F for "remove" and "first" and didn't find anything on the Ruby documentation for Strings.
## So I Googled "ruby built-in method for removing first character of string" and basically found that there is no built-in method as simple as .chop.
## I saw a link that talked about .slice a bit but it only returned the specified part of the string and got rid of everything else - basically the inverse of what we wanted to accomplish. with .reverse.chop.reverse
## However, this led me to http://stackoverflow.com/a/3614642 which led me to the #[] section in the Ruby docs for Strings (http://ruby-doc.org/core-2.3.1/String.html#method-i-5B-5D).
## How it works: Provide Ruby a string and a range:
  ## str[x..y]
  ## will return only the parts of the string from index x to index y.
  ## You might think that x must be less than y for this to work, but that isn't the case.
  ## "hello"[3..-1] will return "llo" because "hello"[2] is "l" and "hello"[-1] is "o".
  ## "hello"[-1..-3] will result in an empty string instead of "llo" because it looks like the range only works forward.

"Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"
## Technically, should do "Elementary,    my   dear        Watson!".squeeze(" ")
## http://ruby-doc.org/core-2.3.1/String.html#method-i-squeeze

"z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
## Did a CTRL+F for "integer" in the Ruby docs for Strings, but every reasonable method that matched seemed to turn any alphabetic character into a 0 upon calling the string.
## Scrolled a little slower to find .ord
## According to Ruby docs, .ord returns the integer ordinal of a one-character string. Google seems to say that the ordinal value of a character can be used to convert it into its unicode character.

"How many times does the letter 'a' appear in this string?".count("a")
# => 4
## http://ruby-doc.org/core-2.3.1/String.html#method-i-count