class YouTubeEmbed < Liquid::Tag

  def initialize(tagName, content, tokens)
    super
    @content = content
  end

  def render(context)
    stuff = "#{context[@content.strip]}"
    
    %Q{<div><h1>TEST { @stuff }</h1></div>}
    
  end

  Liquid::Template.register_tag "test", self
end
# {% youtube "https://www.youtube.com/watch?v=ho8-vK0L1_8" %}