# “There are three big obvious errors in the code below. Which ones?”

def fix_spelling(name)
  if(name = 'twittr')
    name = 'twitter'
  else
    fix_spelling(name)
  end
  return 'name'
end
