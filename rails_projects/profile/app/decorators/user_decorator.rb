class UserDecorator < ApplicationDecorator
  decorates :user
  allows :username
  
  def avatar
    site_link h.image_tag("avatars/#{avatar_name}", class: "avatar")
  end
  
  def linked_name
    site_link(model.full_name.present? ? model.full_name : model.username)
  end
  
  def website
    handle_none model.url do
      h.link_to model.url, model.url
    end
  end
  
  def twitter
    handle_none model.twitter_name do
      h.link_to model.twitter_name, "http://twitter.com/#{model.twitter_name}"
    end
  end
  
  def bio
    handle_none model.bio do
      BlueCloth.new(model.bio).to_html
    end
  end
  
  def member_since
    model.created_at.strftime("%B %e, %Y")
  end
  
private
  
  def handle_none(value)
    if value.present?
      yield
    else
      h.content_tag :span, "None given", class: "none"
    end
  end
  
  def site_link(content)
    h.link_to_if model.url.present?, content, model.url
  end

  def avatar_name
    if model.avatar_image_name.present?
      model.avatar_image_name
    else
      "default.png"
    end
  end

  # Accessing Helpers
  #   You can access any helper via a proxy
  #
  #   Normal Usage: helpers.number_to_currency(2)
  #   Abbreviated : h.number_to_currency(2)
  #   
  #   Or, optionally enable "lazy helpers" by calling this method:
  #     lazy_helpers
  #   Then use the helpers with no proxy:
  #     number_to_currency(2)

  # Defining an Interface
  #   Control access to the wrapped subject's methods using one of the following:
  #
  #   To allow only the listed methods (whitelist):
  #     allows :method1, :method2
  #
  #   To allow everything except the listed methods (blacklist):
  #     denies :method1, :method2

  # Presentation Methods
  #   Define your own instance methods, even overriding accessors
  #   generated by ActiveRecord:
  #   
  #   def created_at
  #     h.content_tag :span, time.strftime("%a %m/%d/%y"), 
  #                   :class => 'timestamp'
  #   end
end