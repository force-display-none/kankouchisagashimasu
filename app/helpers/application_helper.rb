module ApplicationHelper
  def default_meta_tags
    {
      site: '観光地さがします',
      title: '観光地さがします',
      reverse: true,
      charset: 'utf-8',
      description: '「観光地さがします」は、都道府県やエリアを選択するだけで観光地をピックアップできるサイトです。',
      # keywords: 'キーワード',
      canonical: request.original_url,
      separator: '|',
      # icon: [
      #   { href: image_url('favicon.ico') },
      #   { href: image_url('icon.jpg'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      # ],
      og: {
        site_name: '観光地さがします',
        title: '観光地さがします',
        description: '「観光地さがします」は、都道府県やエリアを選択するだけで観光地をピックアップできるサイトです。',
        type: 'website',
        url: 'xn--v8jrhi8p405qhwiv05h.online',
        image: {_: 'https://xn--v8jrhi8p405qhwiv05h.online/assets/1_Primary_logo_on_transparent_210x69.png', width: 630, height: 210},
        locale: 'ja_JP',
      },
      # twitter: {
      #   card: 'summary',
      #   site: '@アカウント名',
      # }
    }
  end

  #ページ毎のタイトルを返す
  def full_title(page_title = '')
    base_title = "観光地さがします"
    if page_title.empty?
      base_title
    else
      page_title + "|" + base_title
    end
  end

  def resource_name
     :user
  end

  def resource
     @resource ||= User.new
  end

  def devise_mapping
     @devise_mapping ||= Devise.mappings[:user]
  end

  def devise_error_messages
    return "" if resource.errors.empty?
    html = ""
    # エラーメッセージ用のHTMLを生成
    messages = resource.errors.full_messages.each do |msg|
      html += <<-EOF
        <div class="error_field alert alert-danger" role="alert">
          <p class="error_msg">#{msg}</p>
        </div>
      EOF
    end
    html.html_safe
  end
end
