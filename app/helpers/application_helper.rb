#encoding : utf-8
module ApplicationHelper
  def notice_message
    flash_messages = []

    flash.each do |type, message|
      type = :success if type == :notice
      text = content_tag(:div, link_to("x", "#", :class => "close") + message, :class => "alert-message #{type}")
      flash_messages << text if message
    end

    flash_messages.join("\n").html_safe
  end
  
  def input_require
    '&nbsp;&nbsp;<span class="label important"> 必填</span>'.html_safe
  end
  
   def select_require
    '&nbsp;&nbsp;<span class="label important"> 必选</span>'.html_safe
  end
end
