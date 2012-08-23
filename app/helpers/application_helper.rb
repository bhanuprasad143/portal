module ApplicationHelper
  def current_path?(path)
    case path
    when Regexp
      cur_path = controller_path
      cur_path.match(path) ? 'active' : ''
    when String
      if path =~ /#/
        paths = path.split('#')
        (action_name == a) ? 'active' : ''
      else
        paths = controller_path.split('/')
        paths.include?(path) ? 'active' : '' 
      end
    end
  end

  def current_filter?(value, filtering)
  	if value.to_i==filtering.to_i
  		'active'
  	else
  		''
  	end
	end

end
