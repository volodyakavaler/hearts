module SideBarHelper
  def side_bar_items()
    result = []
    result << {
      :name => 'Главная',
      :icon => 'home',
      :controller => :welcome,
      :action => :index
    }
    result << {
      :name => 'Пациенты',
      :icon => 'procedures',
      :controller => :sicks,
      :action => :search
    }
    # result << {
    #   :name => 'Истории болезней',
    #   :icon => 'file-medical',
    #   :controller => :diseases,
    #   :action => :index
    # }
    result
  end
end
