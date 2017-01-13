require "middleman-core"

Middleman::Extensions.register :inline do
  require "middleman-inline/extension"
  MiddlemanInline
end
