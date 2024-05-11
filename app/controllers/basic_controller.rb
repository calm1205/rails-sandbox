class BasicController < ApplicationController
  def index
    render plain: <<-EOS
      Accept: #{request.headers['Accept']}
      Accept-Language: #{request.headers['Accept-Language']}
      Authorization: #{request.headers['Authorization']}
      Host: #{request.headers['Host']}
      Referer: #{request.headers['Referer']}
      User-Agent: #{request.headers['User-Agent']}

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
end