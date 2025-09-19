Div = function(el)
  if not el.classes:includes("participate") then
    return nil
  end

  local result = pandoc.Blocks({})
  result:extend(el.content)
  -- create a Para element as it is a block element
  result:insert(pandoc.Para(pandoc.Strong(pandoc.Str("Answer in our Discord!"))))

  return result
end
