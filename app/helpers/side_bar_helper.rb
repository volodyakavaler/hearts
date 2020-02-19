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
    result << {
      :name => 'Устройства',
      :icon => 'pager',
      :controller => :devices,
      :action => :index
    }
    result << {
      :name => '* Результаты (связь)',
      :icon => 'pager',
      :controller => :heart_results,
      :action => :index
    }
    result << {
      :name => '* Points',
      :icon => 'pager',
      :controller => :heart_points,
      :action => :index
    }
    # result << {
    #   :name => 'Истории болезней',
    #   :icon => 'file-medical',
    #   :controller => :desease_records,
    #   :action => :index
    # }
    result
  end
end
