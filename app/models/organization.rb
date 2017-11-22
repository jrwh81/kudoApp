class Organization < ActiveRecord::Base
   validates :title, :presence => true


   has_many :members 

end
