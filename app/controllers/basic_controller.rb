class BasicController < ApplicationController
  def index
    render plain: <<-EOS
      controller_name: #{controller_name}
      controller_path: #{controller_path}
      action_name: #{action_name}
    EOS
  end
end
