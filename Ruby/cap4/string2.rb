# %q! ! 意味は、シングルクォートで囲んだことと同じになる

puts %q!He said, "Don't speak."! #=> He said, "Don't speak."

# %Q! ! 意味は、ダブルクォートで囲んだことと同じになる

something = "Hello."
puts %Q!He said, "#{something}"! #=> He said, "Hello."

# %! ! 意味は、ダブルクォートで囲んだことと同じになる

something = "Bye."
puts %!He said, "#{something}"! #=> He said, "Bye."
