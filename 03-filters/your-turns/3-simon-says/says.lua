Span = function(el)
  if not el.classes:includes("says") then
    return nil
  end
  local name = el.attributes.name or "Simon"
  local result = pandoc.Inlines({})
  result:insert(pandoc.Str(name))
  result:insert(pandoc.Str(" Says: "))
  -- use :insert to add an InLine, :extend to add an InLines
  -- el is a Node (can be a block or inline)
  -- el.content is an InLines
  -- pandoc.Quoted creates an InLine
  -- pandoc.Str creates an Inline
  result:insert(pandoc.Quoted('DoubleQuote', el.content))
  return result
end
