class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable

  has_many :kudos
  belongs_to :organization

  after_save :kudos_to_give

   def kudos_to_give
      self.kudos_count - 1
   end
end
