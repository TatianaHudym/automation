class Loginpage
include PageObject

page_url(BASIC_URL + 'login')

text_field :username, id:'username'
text_field :password, id:'password'
button :submit, type:'submit'

def loginmethod(username, password)
	self.username = username
	self.password = password
	submit_element.click
end

end