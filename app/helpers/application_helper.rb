module ApplicationHelper
  def title(page_title)
    content_for(:title) { page_title }
  end

  def keywords(page_keywords)
    content_for(:keywords) { page_keywords } if page_keywords.present?
  end

  def description(page_description)
    content_for(:description) { page_description } if page_description.present?
  end

  def head(head_content)
    content_for(:head) { head_content } if head_content.present?
  end

  #def javascript(*files)
    #content_for(:head) { javascript_include_tag(*files) }
  #end

  #def stylesheet(*files)
    #content_for(:head) { stylesheet_link_tag(*files) }
  #end

  def strip_tags_with_space(string)
    string.to_s.gsub(/<\/?[^>]*>/, " ").strip
  end

  # Creates unique id for HTML document body used for unobtrusive javascript selectors
  def controller_action_id
    parts = controller.controller_path.split('/')
    parts << controller.action_name
    parts.join('_')
  end
end
