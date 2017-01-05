require "middleman-core"

Middleman::Extensions.register :middleman_inline do
  require "middleman-inline/extension"
  MiddlemanInline
end
