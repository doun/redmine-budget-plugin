
Redmine::Plugin.register :budget_plugin do
  name 'Budget plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'

  settings :default => {
    'budget_nonbillable_overhead' => '',
    'budget_materials' => '',
    'budget_profit' => ''
  }, :partial => 'settings/budget_settings'


  project_module :budget_module do
    permission :view_budget, { :deliverables => [:index, :issues]}
    permission :manage_budget, { :deliverables => [:new, :edit, :create, :update, :destroy, :preview, :bulk_assign_issues]}
  end

  menu :project_menu, :budget, {:controller => "deliverables", :action => 'index'}, :caption => :budget_title, :after => :activity, :param => :id
end

require_dependency 'budget_issue_hook'
require_dependency 'budget_project_hook'
require 'issue_patch'
require 'issue_query_patch'
require 'time_report_patch'