class McsubscribeController < ApplicationController

	def subscribe
		@mc.lists.subscribe(@list_id, {'email' => email_address})
	end

end
