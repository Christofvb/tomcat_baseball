class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_and_belongs_to_many :roles

  def has_role?(role_name)
    roles.exists?(name: role_name)
  end
end
