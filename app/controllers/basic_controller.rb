class BasicController < ApplicationController
  def index
    render plain: <<-EOS
      Accept: #{request.headers["Accept"]}
      Accept-Language: #{request.headers["Accept-Language"]}
      Authorization: #{request.headers["Authorization"]}
      Host: #{request.headers["Host"]}
      Referer: #{request.headers["Referer"]}
      User-Agent: #{request.headers["User-Agent"]}
      HTTP_COOKIE: #{request.headers["HTTP_COOKIE"]}

      QUERT_STRING: #{request.query_string}
      PATH_INFO: #{request.path_info}
      REMOTE_ADDR: #{request.remote_addr}
      REMOTE_HOST: #{request.remote_host}
      REQUEST_METHOD: #{request.request_method}
      ORIGINAL_URL: #{request.original_url}
      SERVER_NAME: #{request.server_name}
      SERVER_PORT: #{request.server_port}
      SERVER_PROTOCOL: #{request.server_protocol}
      SERVER_SOFTWARE: #{request.server_software}

      controller_name: #{controller_name}
      controller_path: #{controller_path}
      action_name: #{action_name}
    EOS
  end

  def get_file
    send_file Rails.root.join("public", "404.html")
  end

  def format
    # localhost:3000/basic/format?format=html
    # or
    # localhost:3000/basic/format?format=json

    respond_to do |format|
      format.html { render plain: "HTML response" }
      format.json { render plain: "JSON response" }
    end
  end

  def refresh
    response.headers["Refresh"] = "3"
    render plain: Time.now
  end

  def cache
    # expires_in 3.minutes, private: true
    expires_now # no-cache
    render plain: Time.zone.now
  end
end
