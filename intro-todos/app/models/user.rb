class User
  attr_reader :email_address
  
  def initialize(email)
    @email_address = email
  end

  def signed_in?
    email_address.present?
  end

  def to_s
    email_address.to_s
  end

end
