module ActiveadminSettingsCached
  class SettingsController < ApplicationController
    def update
      settings = ActiveadminSettingsCached.settings_klass

      params[:settings].each_pair do |name, value|
        settings[name] = value
      end

      flash[:success] = t('.success'.freeze)
      redirect_to :back
    end
  end
end
