class Dashboard
include PageObject

page_url(BASIC_URL + 'dashboard')

span :brand_info, css:'.action.header__brand-name'
link :campaigns, css:'a.navigation__item:nth-child(3)'



def logged_in?
	brand_info_element.when_visible(20).visible?
	end

def go_to_campaign_page
    campaigns_element.click
	end



end

