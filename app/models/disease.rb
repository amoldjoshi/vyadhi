class Disease < ActiveRecord::Base
 
has_many :questions
has_many :providers
has_many :tests


end
