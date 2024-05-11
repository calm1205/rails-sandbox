class CookiesController < ApplicationController
  @path = "/cookies"

  def index
    cookies[:user] = {
      value: "sample",
      expires: 1.hour.from_now,
      domain: "localhost",
      path: @path,
      secure: true
    }

    render json: cookies[:user]
  end

  # cookie永続化 期限が20年になる
  def permanent
    cookies.permanent[:user] = {
      value: "sample",
      expires: 1.hour.from_now, # expiresよりもpermanentの方が優先される
      domain: "localhost",
      path: @path,
      secure: true
    }

    render json: cookies[:user]
  end

  def signed
    cookies.signed[:user] = {
      value: "sample",
      expires: 1.hour.from_now,
      domain: "localhost",
      path: @path,
      secure: true
    }
    render json: cookies[:user]
  end

  def delete
    cookies.delete(:user, path: @path)
    render plain: "Cookie deleted!"
  end
end
