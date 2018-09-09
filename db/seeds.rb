# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 地域の登録
chiiki_names = %w(
  北海道 東北 関東 北陸信越 東海 近畿 中国(山陰山陽) 四国 九州 沖縄
)
  chiiki_names.each do |chiiki_name|
    Region.find_or_create_by(name: chiiki_name)
  end

# 都道府県と観光エリアの登録
# 北海道
Prefecture.find_or_create_by(name: "北海道", region_id: 1)

hokkaido_areas = %w(
  函館・大沼・松前 石狩・空知・千歳 網走・北見・知床 釧路・阿寒・根室・川湯・屈斜路 帯広・十勝 旭川・層雲峡
  洞爺・登別・苫小牧 札幌 ニセコ・ルスツ 小樽・キロロ・積丹 富良野・美瑛・トマム 稚内・留萌 日高・えりも
  離島（利尻・礼文・天売・焼尻） 定山渓 函館港
)
  hokkaido_areas.each do |hokkaido_area|
    Area.find_or_create_by(name: hokkaido_area, prefecture_id: 1)
  end

# 東北
tohoku_names = %w(
  青森県 秋田県 岩手県 宮城県 山形県 福島県
)
  tohoku_names.each do |tohoku_name|
    Prefecture.find_or_create_by(name: tohoku_name, region_id: 2)
  end

aomori_areas = %w(
  弘前 下北・三沢 八戸 青森 津軽西海岸 津軽半島 十和田湖 奥入瀬 奥津軽 牡鹿コバルトライン
)
  aomori_areas.each do |aomori_area|
    Area.find_or_create_by(name: aomori_area, prefecture_id: 2)
  end

akita_areas = %w(
  横手・鳥海 白神・男鹿 田沢湖・角館・大曲 十和田湖・大館・鹿角 秋田
)
  akita_areas.each do |akita_area|
    Area.find_or_create_by(name: akita_area, prefecture_id: 3)
  end

iwate_areas = %w(
  三陸海岸 花巻･北上･遠野 奥州・平泉・一関 安比・八幡平・二戸 盛岡 雫石
)
  iwate_areas.each do |iwate_area|
    Area.find_or_create_by(name: iwate_area, prefecture_id: 4)
  end

miyagi_areas = %w(
  白石・蔵王 仙台 松島・塩竈 石巻・気仙沼 鳴子・大崎 栗原・登米
)
  miyagi_areas.each do |miyagi_area|
    Area.find_or_create_by(name: miyagi_area, prefecture_id: 5)
  end

yamagata_areas = %w(
  酒田・鶴岡 米沢・置賜 尾花沢・新庄・村山 山形・蔵王・天童・上山 寒河江・月山
)
  yamagata_areas.each do |yamagata_area|
    Area.find_or_create_by(name: yamagata_area, prefecture_id: 6)
  end

fukushima_areas = %w(
  福島・二本松 会津 白河 郡山 いわき・双葉 南会津 猪苗代・表磐梯 裏磐梯・磐梯高原 相馬
)
  fukushima_areas.each do |fukushima_area|
    Area.find_or_create_by(name: fukushima_area, prefecture_id: 7)
  end

# 関東
kanto_names = %w(
  茨城県 栃木県 群馬県 埼玉県 東京都 千葉県 神奈川県
)
  kanto_names.each do |kanto_name|
    Prefecture.find_or_create_by(name: kanto_name, region_id: 3)
  end

ibaraki_areas = %w(
  北茨城・奥久慈・日立 常総・結城・桜川 霞ヶ浦・土浦・鹿島・潮来 水戸・笠間 つくば・牛久 大洗・ひたちなか
)
  ibaraki_areas.each do |ibaraki_area|
    Area.find_or_create_by(name: ibaraki_area, prefecture_id: 8)
  end

tochigi_areas = %w(
  佐野・小山・足利・鹿沼 馬頭・茂木・益子・真岡 那須・板室 塩原・矢板・大田原・西那須野
  日光・霧降高原・奥日光・中禅寺湖・今市 鬼怒川・川治・湯西川・川俣 宇都宮・さくら
)
  tochigi_areas.each do |tochigi_area|
    Area.find_or_create_by(name: tochigi_area, prefecture_id: 9)
  end

gunma_areas = %w(
  前橋・高崎・伊勢崎・太田･榛名 藤岡・碓氷・磯部・妙義 水上・月夜野・猿ヶ京・法師 赤城・桐生・渡良瀬
  沼田・老神・尾瀬 渋川・伊香保 草津・尻焼・花敷 万座・嬬恋・北軽井沢 四万・吾妻・川原湯
)
  gunma_areas.each do |gunma_area|
    Area.find_or_create_by(name: gunma_area, prefecture_id: 10)
  end

saitama_areas = %w(
  川越・さいたま 秩父・長瀞 飯能 久喜・行田 本庄・熊谷 越谷・草加
)
  saitama_areas.each do |saitama_area|
    Area.find_or_create_by(name: saitama_area, prefecture_id: 11)
  end

tokyo_areas = %w(
  新宿・中野・杉並・吉祥寺 上野・浅草・両国 渋谷・目黒・世田谷 池袋・目白・板橋・赤羽
  銀座・日本橋・東京駅周辺 お茶の水・湯島・九段・後楽園 葛飾・江戸川・江東
  お台場・汐留・新橋・品川 六本木・麻布・赤坂・青山 蒲田・大森・羽田周辺 東京湾 谷根千 徒蔵
  青梅・奥多摩 八王子・立川・町田・府中・調布 三浦半島 伊豆七島・小笠原
)
  tokyo_areas.each do |tokyo_area|
    Area.find_or_create_by(name: tokyo_area, prefecture_id: 12)
  end

chiba_areas = %w(
  九十九里・銚子 木更津・君津・富津 勝浦・鴨川 館山・南房総 成田 舞浜・浦安・船橋・幕張
  千葉・市原 松戸・柏・野田 佐倉・八街
)
  chiba_areas.each do |chiba_area|
    Area.find_or_create_by(name: chiba_area, prefecture_id: 13)
  end

kanagawa_areas = %w(
  横浜 湘南・鎌倉 厚木・海老名 箱根 湯河原・真鶴・小田原 横須賀・三浦 相模原 川崎 足柄
)
  kanagawa_areas.each do |kanagawa_area|
    Area.find_or_create_by(name: kanagawa_area, prefecture_id: 14)
  end

# 北陸甲信
hokuriku_koshin_names = %w(
  山梨県 新潟県 富山県 石川県 福井県 長野県
)
  hokuriku_koshin_names.each do |hokuriku_koshin_name|
    Prefecture.find_or_create_by(name: hokuriku_koshin_name, region_id: 4)
  end

yamanashi_areas = %w(
  石和・勝沼・塩山 河口湖・西湖・富士吉田・精進湖・本栖湖 八ヶ岳・小淵沢・清里・大泉
  甲府・湯村・昇仙峡 大月・都留 下部・身延・早川 山中湖・忍野 南アルプス
)
  yamanashi_areas.each do |yamanashi_area|
    Area.find_or_create_by(name: yamanashi_area, prefecture_id: 15)
  end

nigata_areas = %w(
  柏崎・寺泊・長岡・魚沼（湯之谷） 新潟・月岡・阿賀野川 上越・糸魚川・妙高 佐渡
  瀬波・村上・岩船 南魚沼・十日町・津南（六日町） 燕・三条・岩室・弥彦 湯沢・苗場
)
  nigata_areas.each do |nigata_area|
    Area.find_or_create_by(name: nigata_area, prefecture_id: 16)
  end

toyama_areas = %w(
  高岡・氷見・砺波 立山・黒部・宇奈月 富山
)
  toyama_areas.each do |toyama_area|
    Area.find_or_create_by(name: toyama_area, prefecture_id: 17)
  end

ishikawa_areas = %w(
  金沢・羽咋 輪島・能登 加賀・小松・辰口 白山 和倉・七尾
)
  ishikawa_areas.each do |ishikawa_area|
    Area.find_or_create_by(name: ishikawa_area, prefecture_id: 18)
  end

fukui_areas = %w(
  若狭 福井・奥越前 越前 三国・あわら
)
  fukui_areas.each do |fukui_area|
    Area.find_or_create_by(name: fukui_area, prefecture_id: 19)
  end

nagano_areas = %w(
  伊那・駒ヶ根・飯田・昼神 軽井沢・佐久・小諸 長野・戸隠・小布施
  松本市（松本駅周辺・浅間・美ヶ原・塩尻） 松本市（上高地・乗鞍・白骨・野麦峠）
  安曇野・大町 志賀・北志賀・湯田中渋 蓼科・白樺湖・車山・女神湖・姫木平
  木曽 上田・別所・鹿教湯 八ヶ岳・富士見・原村・野辺山・小海 白馬・小谷
  戸倉上山田・千曲 上諏訪・下諏訪・岡谷・霧ヶ峰・美ヶ原高原 斑尾・飯山・信濃町・黒姫
  野沢温泉・木島平・秋山郷 菅平・峰の原
)
  nagano_areas.each do |nagano_area|
    Area.find_or_create_by(name: nagano_area, prefecture_id: 20)
  end

# 東海
tokai_names = %w(
  静岡県 岐阜県 三重県 愛知県
)
  tokai_names.each do |tokai_name|
    Prefecture.find_or_create_by(name: tokai_name, region_id: 5)
  end

shizuoka_areas = %w(
  浜松・浜名湖 御殿場・富士 静岡・清水 焼津・御前崎 中伊豆 磐田・袋井・掛川
  西伊豆 伊豆高原 東伊豆 熱海 下田・白浜 沼津・三島 伊東・宇佐美・川奈
  南伊豆 大井川・寸又峡・川根
)
  shizuoka_areas.each do |shizuoka_area|
    Area.find_or_create_by(name: shizuoka_area, prefecture_id: 21)
  end

gifu_areas = %w(
  恵那・多治見・可児・加茂 岐阜・大垣・養老 飛騨・高山 郡上・美濃・関
  下呂・南飛騨 奥飛騨 白川郷
)
  gifu_areas.each do |gifu_area|
    Area.find_or_create_by(name: gifu_area, prefecture_id: 22)
  end

mie_areas = %w(
  桑名・長島・四日市・湯の山・鈴鹿 津・久居・美杉・松阪 伊賀・上野・名張
  伊勢・二見 東紀州 志摩 鳥羽 奥伊勢 南鳥羽
)
  mie_areas.each do |mie_area|
    Area.find_or_create_by(name: mie_area, prefecture_id: 23)
  end

aichi_areas = %w(
  三河 尾張・犬山・小牧 名古屋 知多
)
  aichi_areas.each do |aichi_area|
    Area.find_or_create_by(name: aichi_area, prefecture_id: 24)
  end

# 近畿
kinki_names = %w(
  京都府 大阪府 兵庫県 奈良県 滋賀県 和歌山県
)
  kinki_names.each do |kinki_name|
    Prefecture.find_or_create_by(name: kinki_name, region_id: 6)
  end

kyoto_areas = %w(
  京都南部（宇治・長岡京・山崎） 祇園・東山・北白川周辺 河原町・烏丸・大宮周辺
  天橋立・宮津・舞鶴 丹後・久美浜 湯の花・丹波・美山 京都駅周辺 嵯峨野・嵐山・高雄
  綾部・福知山 大原・鞍馬・貴船
)
  kyoto_areas.each do |kyoto_area|
    Area.find_or_create_by(name: kyoto_area, prefecture_id: 25)
  end

osaka_areas = %w(
  大阪南部（堺・岸和田・関西空港） 大阪駅・梅田駅・福島・淀屋橋・本町
  大阪東部（寝屋川・守口・門真・東大阪） 大阪北部（茨木・高槻・箕面・伊丹空港）
  心斎橋・なんば・四ツ橋 上本町・天王寺・市内南部 大阪城・京橋・市内東部
  大阪ベイエリア 新大阪・江坂・十三・塚本 阪神 北摂
)
  osaka_areas.each do |osaka_area|
    Area.find_or_create_by(name: osaka_area, prefecture_id: 26)
  end

hyogo_areas = %w(
  姫路・赤穂・播磨 神戸・有馬・明石 尼崎・宝塚・三田・篠山
  神鍋・鉢伏・養父・和田山 淡路島 城崎・竹野・豊岡
  香住・浜坂・湯村 丹波篠山 神戸ハーバーランド 六甲アイランド
)
  hyogo_areas.each do |hyogo_area|
    Area.find_or_create_by(name: hyogo_area, prefecture_id: 27)
  end

nara_areas = %w(
  飛鳥・橿原・三輪 奈良・斑鳩・天理 吉野・奥吉野
)
  nara_areas.each do |nara_area|
    Area.find_or_create_by(name: nara_area, prefecture_id: 28)
  end

shiga_areas = %w(
  草津・守山・近江八幡 彦根・長浜 大津 甲賀・信楽 湖西 雄琴・堅田
)
  shiga_areas.each do |shiga_area|
    Area.find_or_create_by(name: shiga_area, prefecture_id: 29)
  end

wakayama_areas = %w(
  有田・御坊・日高 和歌山市・加太・和歌浦 白浜・龍神 高野山
  勝浦・串本・すさみ 本宮・新宮・中辺路 伊勢・志摩 南紀白浜
)
  wakayama_areas.each do |wakayama_area|
    Area.find_or_create_by(name: wakayama_area, prefecture_id: 30)
  end

# 中国(山陰山陽)
tyugoku_names = %w(
  鳥取県 島根県 岡山県 広島県
)
  tyugoku_names.each do |tyugoku_name|
    Prefecture.find_or_create_by(name: tyugoku_name, region_id: 7)
  end

tottori_areas = %w(
  鳥取・岩美 米子・皆生・大山 倉吉・三朝・湯梨浜
)
  tottori_areas.each do |tottori_area|
    Area.find_or_create_by(name: tottori_area, prefecture_id: 31)
  end

shimane_areas = %w(
  益田・浜田・津和野 松江・安来・玉造・奥出雲 出雲・大田・石見銀山 隠岐島
)
  shimane_areas.each do |shimane_area|
    Area.find_or_create_by(name: shimane_area, prefecture_id: 32)
  end

okayama_areas = %w(
  津山・美作三湯・蒜山 倉敷・総社・井笠 岡山・玉野・牛窓 高梁・新見・吉備高原
)
  okayama_areas.each do |okayama_area|
    Area.find_or_create_by(name: okayama_area, prefecture_id: 33)
  end

hiroshima_areas = %w(
  庄原・三次・芸北 広島・宮島 三原・竹原・東広島・呉 福山・尾道
)
  hiroshima_areas.each do |hiroshima_area|
    Area.find_or_create_by(name: hiroshima_area, prefecture_id: 34)
  end

# 四国
shikoku_names = %w(
  香川県 愛媛県 徳島県 高知県
)
  shikoku_names.each do |shikoku_name|
    Prefecture.find_or_create_by(name: shikoku_name, region_id: 8)
  end

kagawa_areas = %w(
  琴平・丸亀・坂出 高松・東讃 小豆島 瀬戸内海
)
  kagawa_areas.each do |kagawa_area|
    Area.find_or_create_by(name: kagawa_area, prefecture_id: 35)
  end

ehime_areas = %w(
  南予・宇和島 松山・道後 今治・しまなみ海道 新居浜・東予
)
  ehime_areas.each do |ehime_area|
    Area.find_or_create_by(name: ehime_area, prefecture_id: 36)
  end

tokushima_areas = %w(
  大歩危・祖谷・剣山 徳島・鳴門 阿南・日和佐・宍喰
)
  tokushima_areas.each do |tokushima_area|
    Area.find_or_create_by(name: tokushima_area, prefecture_id: 37)
  end

kochi_areas = %w(
  高知・須崎・南国 足摺・四万十 安芸・室戸
)
  kochi_areas.each do |kochi_area|
    Area.find_or_create_by(name: kochi_area, prefecture_id: 38)
  end

# 九州
kyusyu_names = %w(
  山口県 福岡県 大分県 佐賀県 熊本県 長崎県 宮崎県 鹿児島県
)
  kyusyu_names.each do |kyusyu_name|
    Prefecture.find_or_create_by(name: kyusyu_name, region_id: 9)
  end

yamaguchi_areas = %w(
  岩国・柳井・周南 山口・秋芳 下関・宇部 萩・長門
)
  yamaguchi_areas.each do |yamaguchi_area|
    Area.find_or_create_by(name: yamaguchi_area, prefecture_id: 39)
  end

fukuoka_areas = %w(
  北九州 太宰府・宗像 福岡市（博多駅周辺・天神周辺） 久留米・原鶴・筑後川
  柳川・八女・筑後 糸島・前原
)
  fukuoka_areas.each do |fukuoka_area|
    Area.find_or_create_by(name: fukuoka_area, prefecture_id: 40)
  end

oita_areas = %w(
  中津・国東 大分 九重・久住・竹田・長湯 別府 日田・天ヶ瀬・耶馬渓 湯布院 別府・由布院
)
  oita_areas.each do |oita_area|
    Area.find_or_create_by(name: oita_area, prefecture_id: 41)
  end

saga_areas = %w(
  佐賀・古湯・熊の川 嬉野・武雄 唐津・呼子 伊万里・有田 太良
)
  saga_areas.each do |saga_area|
    Area.find_or_create_by(name: saga_area, prefecture_id: 42)
  end

kumamoto_areas = %w(
  天草 玉名・山鹿・菊池 熊本 阿蘇 人吉・球磨 八代・水俣・湯の児 黒川・杖立・わいた
)
  kumamoto_areas.each do |kumamoto_area|
    Area.find_or_create_by(name: kumamoto_area, prefecture_id: 43)
  end

nagasaki_areas = %w(
  長崎 佐世保・ハウステンボス 島原・雲仙・小浜 五島列島 平戸・松浦・田平 壱岐・対馬 島原・天草
)
  nagasaki_areas.each do |nagasaki_area|
    Area.find_or_create_by(name: nagasaki_area, prefecture_id: 44)
  end

miyazaki_areas = %w(
  宮崎・青島・日南 日向・延岡・高千穂 えびの・都城
)
  miyazaki_areas.each do |miyazaki_area|
    Area.find_or_create_by(name: miyazaki_area, prefecture_id: 45)
  end

kagoshima_areas = %w(
  離島 北薩・川内 南薩・指宿 霧島 垂水・大隅 鹿児島・桜島 奄美大島
)
  kagoshima_areas.each do |kagoshima_area|
    Area.find_or_create_by(name: kagoshima_area, prefecture_id: 46)
  end

# 沖縄
Prefecture.find_or_create_by(name: "沖縄県", region_id: 10)

okinawa_areas = %w(
  離島 西海岸・東海岸 那覇 本部・名護・国頭 沖縄市（コザ）・北谷・宜野湾 南部
)
  okinawa_areas.each do |okinawa_area|
    Area.find_or_create_by(name: okinawa_area, prefecture_id: 47)
  end

# 観光地大区分ジャンルの登録
l_genre_names = %w(
  アウトドア ウォータースポーツ・マリンスポーツ 雪・スノースポーツ その他スポーツ・フィットネス エンタメ・アミューズメント
  レジャー・体験 クラフト・工芸 果物・野菜狩り ミュージアム・ギャラリー 神社・神宮・寺院 伝統文化・日本文化 自然景観・絶景
  乗り物 動・植物 風呂・スパ・サロン ショッピング 観光施設・名所巡り 祭り・イベント 宿泊施設 その他
)
  l_genre_names.each do |l_genre_name|
    LSpotGenre.find_or_create_by(name: l_genre_name)
  end

# 観光地小区分ジャンルの登録
outdoor_names = %w(
  BBQ(バーベキュー) パラグライダー モーターパラグライダー ハンググライダー トレッキング・登山ウォーキング・ハイキング
  ジップライン 洞窟体験・ケイビング キャンプ場・バンガロー・コテージ等 バードウォッチング ツリークライミング
  アスレチック(フィールドアスレチック等) 森林セラピー 野外レクリエーション ナイトツアー スカイダイビング バンジージャンプ
  オリエンテーリング・パーマネントコース その他アウトドア ウォーキングコース
)
  outdoor_names.each do |outdoor_name|
    SSpotGenre.find_or_create_by(name: outdoor_name, l_spot_genre_id: 1)
  end

water_sports_names = %w(
  スキューバダイビング シュノーケリング・ボートシュノーケル カヌー・カヤック マングローブカヤック・カヌー ラフティング パラセーリング
  川下り・ライン下り サップ・SUP(スタンドアップパドル) 沢下り(キャニオニング) ホバーボード・フライボード バナナボート・チュービング
  沢登り(シャワークライミング) ウォーターボール サーフィン・ボディボード ウェイクボード・ウェイクサーフィン ウィンドサーフィン
  カイトサーフィン・カイトボード リバーブギ・ハイドロスピード 水上バイク シーウォーカー 川遊び・水辺遊び ウォータージャンプ プール
  素潜り・スキンダイビング ヨット・ヨットセーリング その他ウォータースポーツ・マリンスポーツ ボートシュノーケル
)
  water_sports_names.each do |water_sports_name|
    SSpotGenre.find_or_create_by(name: water_sports_name, l_spot_genre_id: 2)
  end

snow_sports_names = %w(
  わかさぎ釣り スノーシュー・スノートレッキング スキー場・スノーボードゲレンデ その他雪・スノースポーツ
  エアボード テレマークスキー クロスカントリースキー アイススケート場 犬ぞり スノーモービル 流氷ウォーク
)
  snow_sports_names.each do |snow_sports_name|
    SSpotGenre.find_or_create_by(name: snow_sports_name, l_spot_genre_id: 3)
  end

other_sports_names = %w(
  乗馬 ボルダリング・ロッククライミング バギー アーチェリー マウンテンバイク サイクリング ゴルフ・ゴルフ場 モトクロス スポーツリゾート施設
  サッカー バブルサッカー フットサル ジョギング スカッシュ スポーツ観戦 その他スポーツ・フィットネス モーターパラグライダー サイクリングセンター
)
  other_sports_names.each do |other_sports_name|
    SSpotGenre.find_or_create_by(name: other_sports_name, l_spot_genre_id: 4)
  end

entertainment_names = %w(
  脱出・謎解きゲーム 宝探し（トレジャーハント） フライトシミュレーター サバゲー(サバイバルゲーム) ディナーショー ダンス
  テーマパーク・レジャーランド カラオケ・パーティ インターネットカフェ・マンガ喫茶 その他エンタメ・アミューズメント
)
  entertainment_names.each do |entertainment_name|
    SSpotGenre.find_or_create_by(name: entertainment_name, l_spot_genre_id: 5)
  end

experience_names = %w(
  バイキング・ビュッフェ・ホテルレストラン 仕事体験（職業体験） イルカウォッチング・ドルフィンスイム ホエールウォッチング
  うどん・そば打ち 釣り(釣り堀・渓流釣り・海釣り・釣り船等) 島旅行・島巡り・離島ツアー 自然体験 着物・浴衣レンタル・着付け体験
  梅干し作り お菓子作り教室・お菓子作り体験 グラスボート 食品サンプル製作 ピザ作り 熱気球 牧場・酪農体験 動物ふれあい体験
  ワイン作り 舞妓体験 ソーセージ・ウィンナー作り 民謡ライブ 茶道教室・茶道体験 機織り 野生動物観察 体験観光 日本酒作り・醸造体験
  塩作り 忍者・侍・武士体験 収穫 三味線体験 ジャム作り 農業体験 おやき作り 工場見学 昆虫採集 トールペイント 無人島ツアー 漁業体験・潮干狩り・地引網
  楽器作り 味噌作り 化石発掘 こけし絵付け 調香 バウムクーヘン作り 琉球舞踊体験 3Dプリンター体験 林業体験 ガーデニング レジャースポット
  花摘み・ハーブ摘み 家具作り 生け花・華道禅・座禅 田舎暮らし体験 武道･武術体験 ドッグラン 写真体験 その他レジャー・体験
)
  experience_names.each do |experience_name|
    SSpotGenre.find_or_create_by(name: experience_name, l_spot_genre_id: 6)
  end

craft_names = %w(
  陶芸教室・陶芸体験 ガラス細工作り アクセサリー作り ものづくり キャンドル作り(アロマキャンドル等) 染色・染物体験 藍染め体験 草木染め 友禅染め
  フラワーアレンジメント・ハーバリウム ポーセラーツサロン・ポーセリンアート レザークラフト ランプシェード作り 織物 箸作り 木工 手作りオルゴール
  香水作り 紙漉き 絵画・版画体験 石鹸作り 彫金教室・彫金体験 靴作り 人形作り 苔玉作り マリンクラフト スペインタイル クリスマスリース作り
  押し花体験 時計作り 竹細工作り フィギュア制作 エアブラシ塗装体験 グルーデコ フェルト体験 クレイアート メガネ作り 江戸切子 竹炭・花炭作り
  彫紙アート カルトナージュ シュガークラフト 漆工芸 布草履作り カービング パッチワーク 扇子絵付け体験 彫刻 焼き絵 布ぞうり作り その他クラフト・工芸
)
  craft_names.each do |craft_name|
    SSpotGenre.find_or_create_by(name: craft_name, l_spot_genre_id: 7)
  end

harvest_names = %w(
  いちご狩り みかん狩り ぶどう狩り キノコ採り りんご狩り 桃狩り ブルーベリー狩り 梨狩り 芋掘り さくらんぼ狩り トマト狩り プラム狩り その他果物・野菜狩り
)
  harvest_names.each do |harvest_name|
    SSpotGenre.find_or_create_by(name: harvest_name, l_spot_genre_id: 8)
  end

museum_names = %w(
  スタジオ見学 映画 ワークショップ 写真館 資料館 科学館 美術館 文化施設 社会見学・社会科見学 プラネタリウム 博物館 その他ミュージアム・ギャラリー
)
  museum_names.each do |museum_name|
    SSpotGenre.find_or_create_by(name: museum_name, l_spot_genre_id: 9)
  end

shrine_names = %w(
  寺院・寺社巡り 神社・神宮巡り その他神社・神宮・寺院
)
  shrine_names.each do |shrine_name|
    SSpotGenre.find_or_create_by(name: shrine_name, l_spot_genre_id: 10)
  end

traditional_culture_names = %w(
  伝統工芸 郷土芸能・伝統芸能 日本文化 伝統舞踊 その他伝統文化 写経・写仏 座禅 滝行・護摩行・その他修行
)
  traditional_culture_names.each do |traditional_culture_name|
    SSpotGenre.find_or_create_by(name: traditional_culture_name, l_spot_genre_id: 11)
  end

nature_names = %w(
  海岸景観 郷土景観 湖沼 高原 山岳 施設景観 運河・河川景観 自然歩道・自然研究路 湿原 夜景スポット その他自然景観・絶景ビーチ・海水浴場滝・渓谷自然現象
)
  nature_names.each do |nature_name|
    SSpotGenre.find_or_create_by(name: nature_name, l_spot_genre_id: 12)
  end

vehicle_names = %w(
  クルーズ・クルージング 屋形船・納涼船 人力車 パーソナルモビリティ（セグウェイ等） レンタサイクル レンタカー 原付・バイクレンタル リムジンレンタル
  ゴーカート・公道カート ケーブルカー・ロープウェイ レールバイク ヘリコプター遊覧 セスナ・遊覧飛行 観光馬車 観光バス・タクシー・ハイヤー その他乗り物
)
  vehicle_names.each do |vehicle_name|
    SSpotGenre.find_or_create_by(name: vehicle_name, l_spot_genre_id: 13)
  end

animals_and_plants_names = %w(
  植物 動物 その他動・植物
)
  animals_and_plants_names.each do |animals_and_plants_name|
    SSpotGenre.find_or_create_by(name: animals_and_plants_name, l_spot_genre_id: 14)
  end

spa_names = %w(
  貸切温泉・貸切露天・貸切風呂 日帰り温泉 岩盤浴 健康ランド・スーパー銭湯 その他風呂・スパ・サロン エステ リラクゼーション その他美容施設
)
  spa_names.each do |spa_name|
    SSpotGenre.find_or_create_by(name: spa_name, l_spot_genre_id: 15)
  end

shopping_names = %w(
  アウトレットモール ショッピングセンター 特産物（味覚） 名産品 センター施設 その他ショッピング
)
  shopping_names.each do |shopping_name|
    SSpotGenre.find_or_create_by(name: shopping_name, l_spot_genre_id: 16)
  end

sights_names = %w(
  観光コース 町めぐり 神社・神宮巡り 寺院・寺社巡り 史跡・名所巡り 酒造巡り 世界遺産巡り お城巡り 牧場・酪農 動物園・植物園 サンセット&ナイトツアー
  マリーナ・ヨットハーバー 公園・庭園 文化史跡・遺跡 その他観光施設 地域風俗・風習 城郭 展望台・展望施設 旧街道 歴史的建造物 水族館 海中公園
  産業観光施設 町並み 観光ボランティア 観光案内所 近代建築 古都歩き パワースポット 道の駅・サービスエリア 教会・モスク ダム
)
  sights_names.each do |sights_name|
    SSpotGenre.find_or_create_by(name: sights_name, l_spot_genre_id: 17)
  end

festival_names = %w(
  イベント 花火大会 祭り 花見 イルミネーション その他祭り・イベント
)
  festival_names.each do |festival_name|
    SSpotGenre.find_or_create_by(name: festival_name, l_spot_genre_id: 18)
  end

hotel_names = %w(
  リゾートホテルビジネスホテル ペンション等 民宿・ペンション 旅館 民間の宿 公共の宿 公的宿泊施設 その他宿泊施設
)
  hotel_names.each do |hotel_name|
    SSpotGenre.find_or_create_by(name: hotel_name, l_spot_genre_id: 19)
  end

other_names = %w(
  その他名所 特殊地形 エコツーリズム
)
  other_names.each do |other_name|
    SSpotGenre.find_or_create_by(name: other_name, l_spot_genre_id: 20)
  end
