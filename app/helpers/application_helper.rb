module ApplicationHelper
  def flash_messages
    if(flash.has_key? :notice)
      message = content_tag(:p, :class => 'flash') do
          content_tag(:span, flash[:notice] , :class => 'notice')
      end
      message.html_safe
    else
      "".html_safe
    end
  end
end
