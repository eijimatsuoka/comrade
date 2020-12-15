crumb :root do
  link "投稿一覧", root_path
end

crumb :posts_new do
  link "新規投稿"
  parent :root
end

crumb :posts_show do |post|
  link "投稿詳細", post_path(post)
  parent :root
end

crumb :posts_edit do |post|
  link "投稿編集"
  parent :posts_show, post
end

crumb :users_show do
  link "マイページ"
  parent :root
end

crumb :users_edit do
  link "マイページ編集"
  parent :root
end

crumb :s_edit do
  link "マイページ編集"
  parent :root
end

crumb :rooms_new do
  link "チャット作成"
  parent :root
end

crumb :messages_index do
  link "チャット"
  parent :root
end


# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).