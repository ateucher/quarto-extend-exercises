Strong = function(el)
  -- print debugging
  quarto.log.output("Hello")
  quarto.log.output(el)
  -- Transform all Strong nodes to Emph nodes
  return pandoc.Emph(el.content)
end
