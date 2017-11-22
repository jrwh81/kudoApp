class HomeController < ApplicationController
   skip_before_filter :require_no_authentication, only: [:index]

   def index

   end

   def dashboard
      @organization = current_member.organization.title
      @kudos = current_member.kudos
      @members = current_member.organization.members
   end
end
