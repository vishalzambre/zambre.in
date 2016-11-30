# ApplicationHelper
module ApplicationHelper
  def markdown(text)
    # markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    # markdown.render(text).html_safe
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    markdown.render(text).html_safe
    # Redcarpet::Markdown.new(text).to_html
  end
end
