Div = function(el)
  if el.classes:includes("shout") then
    local result = pandoc.Blocks({})
    result:insert(pandoc.Para(pandoc.Str("BEGIN SHOUTING")))
    result:extend(el.content)
    result:insert(pandoc.Para(pandoc.Str("END SHOUTING")))
    return result
  end  
end