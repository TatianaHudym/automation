class Campaigns
    include PageObject

    page_url(BASIC_URL + 'campaigns?sort-by=-name')

    span :createcampaign, css:'span.button__content'
    text_field :hashtag, css:'input.input-field.input-field--with-suffix-icon'
    text_field :description, css:'input.input-field:nth-child(2)'
    button :create, css: 'button.button.button--primary'

def new_campaign
    createcampaign_element.click
end

def create_new_campaign(hashtag, description)
    self.hashtag = hashtag
    self.description = description
    create_element.click
end

end
