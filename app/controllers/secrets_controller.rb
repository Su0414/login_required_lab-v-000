class SecretsController < ApplicationController
  before_action :require_login

  def show
    redirect_to '/sessions/new'
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :name
  end

end
