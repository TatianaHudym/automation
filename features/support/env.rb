require 'watir'
require 'page-object'
require 'pry'
require 'faker'

BROWSER = :chrome
BASIC_URL = 'https://app.shareroot.co/'

World(PageObject::PageFactory)
