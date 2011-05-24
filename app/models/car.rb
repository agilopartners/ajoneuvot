class Car < ActiveRecord::Base
 belongs_to :type
  belongs_to :sub_type
  validates_presence_of :name, :type_id, :sub_type_id



end
