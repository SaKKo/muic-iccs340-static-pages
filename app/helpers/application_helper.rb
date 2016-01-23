module ApplicationHelper
  def header_active(controller,action)
    return 'active' if controller == params[:controller] && action == params[:action]
    ''
  end
end
