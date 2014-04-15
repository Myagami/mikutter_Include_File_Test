# -*- coding: utf-8 -*-

Plugin.create(:Include_File_Test) do
  command(:include_file_test,
          name: 'inc',
          condition:Plugin::Command[:Editable],
          visible:true,
          role: :postbox) do |opt|
    get_path
  end
  
  def get_path
    ch_dir = File.dirname(__FILE__)
    Gtk::Clipboard.copy(ch_dir)
  end

end
