local string_out = ""
return {
  {
    Meta = function (meta)
      string_out = quarto.log.dump(meta)
    end
  },
  {
    Div = function(el)
      if not el.identifier == "dump-meta" then
        return nil
      end
      return pandoc.Blocks({
        pandoc.RawBlock("html", "<details><summary>Metadata</summary>"),
        pandoc.CodeBlock(string_out),
        pandoc.RawBlock("html", "</details>")
      })
    end
  }
}