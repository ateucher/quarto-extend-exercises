Span = function(el)
  if el.classes:includes("shout") then
    return el:walk({
      Str = function (el) 
        return pandoc.Str(pandoc.text.upper(el.text))
      end
    }).content
  end  
end
