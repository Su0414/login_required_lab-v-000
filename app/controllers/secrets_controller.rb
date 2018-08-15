class SecretsController < ApplicationController
  before_action :require_login

  def show
  end

  private

  def require_login
      if !session.include? :name
        return head(:forbidden)
        redirect_to '/sessions/new'
      end
  end

end
