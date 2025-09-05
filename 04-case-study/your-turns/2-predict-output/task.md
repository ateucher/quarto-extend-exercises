```lua
Div = function(el)
  if not el.classes:includes("participate") then
    return nil
  end
  
  quarto.doc.add_html_dependency({ 
    name = "participate", version = "1.0.0",
    stylesheets = {"question.css"},
  })

  local content = pandoc.Div(el.content)
  content.classes = {'question'}

  if not quarto.format.is_html_slide_output() then
    return content
  end

  local boilerplate = pandoc.Para(pandoc.Inlines({
    pandoc.Image("", "Discord-Logo-Black.png", nil, {alt="Discord Logo"}),
    pandoc.Str("Answer in our "),
    pandoc.Link(pandoc.Str("Discord"), pandoc.utils.stringify(quarto.metadata.get("discord")))
  }))
  
  local inner_columns = pandoc.Blocks({
    pandoc.Div(content, {class='column', width='75%'}), 
    pandoc.Div(boilerplate, {class='column', width='25%'})
  })
  local result = pandoc.Div(inner_columns, {class = 'columns'})
  return result
end
```

Predict what the slide will look like.

