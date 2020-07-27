ActiveAdmin.register Student do
  permit_params :email, :name, :password_digest

end
