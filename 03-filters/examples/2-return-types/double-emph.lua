Emph = function(el)
  return pandoc.Inlines({el.content, el.content})
end