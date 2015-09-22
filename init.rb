require 'redmine_api/patches/issues_controller_patch'

Redmine::Plugin.register :redmine_api do
  name 'Redmine Api plugin'
  author 'Justyna Wojtczak'
  description 'A plugin for providing api'
  version '0.0.1'
end
