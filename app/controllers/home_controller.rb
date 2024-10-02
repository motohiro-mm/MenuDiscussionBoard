# frozen_string_literal: true

class HomeController < ApplicationController
  skip_before_action :check_logged_in

  def index
    redirect_to meal_plans_path if current_user.present?
  end

  def welcome
    family = Family.find_by!(invitation_token: params[:invitation_token])
    @invitation_token = family.invitation_token
  end

  def terms; end

  def privacy; end
end
