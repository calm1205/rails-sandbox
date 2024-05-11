class CookiesController < ApplicationController
  def index
    cookies[:user] = {
     value: 'sample',

     expires: 1.hour.from_now,
     domain: 'localhost',
      path: '/cookies',
    }

    render json: cookies[:user]
  end
end
