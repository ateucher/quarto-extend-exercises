Strong = function(el)
  return pandoc.Inlines({
    el, 
    pandoc.Space(), 
    el
  })
end