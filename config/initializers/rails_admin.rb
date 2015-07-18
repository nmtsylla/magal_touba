=begin
RailsAdmin.config do |config|
  config.main_app_name = ["Magal Touba", "BackOffice"]
  # or somethig more dynamic
  config.main_app_name = Proc.new { |controller| [ "Magal Touba", "BackOffice - #{controller.params[:action].try(:titleize)}" ] }

  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
=end
