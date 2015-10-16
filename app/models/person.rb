require_relative '../../db/config'

class Person <ActiveRecord::Base
	before_create :correct_phone

	private
		def correct_phone
			self.phone = self.phone.gsub(/\D/, "")
		end
end