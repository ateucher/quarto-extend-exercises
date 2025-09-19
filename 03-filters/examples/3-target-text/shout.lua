Span = function(el)
  if not el.classes:includes("shout") then
    return nil
  end
  quarto.log.output("Shouting")
  return pandoc.SmallCaps(el.content)
end
