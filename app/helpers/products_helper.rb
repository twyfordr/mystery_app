module ProductsHelper
  def sign_in_link
    if user_signed_in? 
      link_to "Sign out", destroy_user_session_path,  :method => :delete, :class => 'pull-right' 
    else
      link_to "Sign in",  new_user_session_path , :class => 'pull-right'  
    end
  end
end
