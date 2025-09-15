Div = function(el)
  if not el.classes:includes("shout") then
    return nil
  end
  result = el:walk({
    Str = function (el) 
      return pandoc.Str(string.upper(el.text))
    end
  })
  return result.content
end