class Campaigndashboard
include PageObject

page_url(BASIC_URL + 'campaigns/(^\d+$)/dashboard')

div :campaign_name, css: "div.navbar-breadcrumb-item:nth-child(2)" 
button :create_new_widget, css: ".button.campaigns-dashboard__create-widget-button"
list_item :interactive_gallery, css: ".campaigns-dashboard-widget-creator__widget:nth-child(1)"
text_field :name_visible, css: ".input-field--with-suffix-icon"
button :publish, css: ".button.button--primary"
span :widget_item, css: ".campaigns-dashboard__widget-name"
list_item :upload_widget, css: ".campaigns-dashboard-widget-creator__widget:nth-child(2)"
text_field :widget_name , css: ".input-field--with-suffix-icon"



def on_campaign_dashboard?
   # binding.pry
   campaign_name_element.text == @hastag
end

def create_new_widget
  create_new_widget_element.click
end

def select_interactive_gallery
interactive_gallery_element.click
end

def create_interactive_gallery(name_visible)
    self.name_visible = name_visible
    publish_element.click
end

def select_upload_widget
    upload_widget_element.click

end

def create_uploader(widget_name)
    self.widget_name = widget_name
    publish_element.click
end






end