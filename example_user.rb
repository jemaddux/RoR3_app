class User
  attr_accessor :name, :email
  
  email_regex = /\A[\w+\-.]+@[a-z]\d\-.]+\.[a-z]+\z/i
  
  validates :name, :presence => true
				   :length => { :maximum => 50 }

  validates :email, :presence => true
				    :format => { :with => email_regex }
					:uniqueness => {:case_sensitive => false }
  
  def initialize(attributes = {})
    @name = attributes(:name)
	@email = attributes(:email)
  end
  
  def formatted_email
    "#{@name <#{@email}>"
  end
end