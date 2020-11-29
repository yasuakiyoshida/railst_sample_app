module ApplicationHelper
  
  # ページごとの完全なタイトルを返す
  def full_title(page_title = "") # 変数page_titleの初期値を空に設定しておく
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end