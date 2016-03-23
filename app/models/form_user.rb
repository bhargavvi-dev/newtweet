class FormUser < User
  attr_accessor :current_password

  
  validates_presence_of     :password, if: :password_required?
  validates_confirmation_of :password, if: :password_required?
  validates_length_of       :password, within: Devise.password_length, allow_blank: true

  def password_required?
    return false if email.blank?
    !persisted? || !password.nil? || !password_confirmation.nil?
  end

  
end