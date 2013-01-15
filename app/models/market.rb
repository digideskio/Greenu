class Market < ActiveRecord::Base
  attr_accessible :name, :address, :zipcode, :linkcard, :open_monday, :open_tuesday, :open_wednesday, :open_thursday, :open_friday, :open_saturday, :open_sunday

 #  def self.search(search)
	# if search
 #  		find(:all, :conditions => ['zipcode LIKE ?', "%#{search}%"])
 #  	else
 #  		find(:all)
 #    end
 #  end

end
