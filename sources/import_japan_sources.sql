-- ============================================================
-- 東亞歷史權威史料庫 — 日本史料匯入 SQL（增量模式）
-- 由 Import-JapanToSupabase.ps1 v1 自動產生
-- ============================================================

-- === 0. 日本時期（僅首次執行） ===
INSERT INTO periods (id, code, name_zh, start_year, end_year, sort_order, region) OVERRIDING SYSTEM VALUE VALUES
  (39, 'jpn-ancient', '日本史前・古代（～1192）', NULL, 1192, 42, 'JP'),
  (40, 'jpn-medieval', '中世（1192–1603）', 1192, 1603, 43, 'JP'),
  (41, 'jpn-edo', '江戶（1603–1868）', 1603, 1868, 44, 'JP'),
  (42, 'jpn-meiji', '明治（1868–1912）', 1868, 1912, 45, 'JP'),
  (43, 'jpn-taisho', '大正（1912–1926）', 1912, 1926, 46, 'JP'),
  (44, 'jpn-showa-pre', '昭和前期（1926–1945）', 1926, 1945, 47, 'JP'),
  (45, 'jpn-postwar', '戰後日本（1945–迄今）', 1945, NULL, 48, 'JP')
ON CONFLICT (id) DO NOTHING;

-- === 1. 來源機構（僅新增者） ===
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (290, 'GHQ') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (291, 'SCAP') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (292, '日本文化廳') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (293, '日本各地教育委員會') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (294, '外務省外交史料館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (295, '防衛省防衛研究所戰史研究中心') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (296, '亞洲歷史資料中心') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (297, '海軍省') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (298, '國立歷史民俗博物館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (299, '臺灣總督府') ON CONFLICT (name_zh) DO NOTHING;

SELECT setval('institutions_id_seq', 299);

-- === 2. 主要史料 ===
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1137, '御署名原本・日清両国媾和条約及別約（馬關條約）', '大日本帝国（明治天皇・伊藤博文・陸奥宗光）', '1895-05-10', 42, 1, '亞洲歷史資料中心（JACAR）;國立公文書館', 'JP-ST-01', 'https://www.jacar.archives.go.jp/das/meta/A03020213100', 'ja', '明治28年（1895）4月17日清國李鴻章與日本伊藤博文・陸奥宗光於下關簽訂之媾和條約及別約御署名原本，依此條約清國將臺灣・澎湖割讓日本，為臺灣日治時期之起點，亦為臺灣史與東亞近代史分水嶺之第一級官方檔案', '馬關條約;日清戰爭;臺灣割讓;御署名原本;下關', '明治（1895）', '臺灣・澎湖・遼東半島・下關', NULL, '臺灣總督府關係公文;台灣霧社事件關係史料', '大日本帝国', '國立公文書館（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '臺灣割讓之關鍵御署名原本', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1138, '御署名原本・大日本帝国憲法', '大日本帝国（明治天皇・伊藤博文）', '1889-02-11', 42, 1, '亞洲歷史資料中心（JACAR）;國立公文書館', 'JP-ST-02', 'https://www.jacar.archives.go.jp/das/meta/A03020029600', 'ja', '明治22年（1889）2月11日發布之大日本帝國憲法御署名原本，確立天皇主權與帝國議會制度，為日本近代國家體制之根本法，日治臺灣之統治亦以此憲法為法源基礎', '大日本帝国憲法;御署名原本;明治憲法;君主立憲', '明治（1889）', '日本全國', NULL, '帝国議会会議録;御署名原本・日本国憲法', '大日本帝国', '國立公文書館（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '日本近代根本法', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1139, '太政類典', '太政官', '1867–1881', 42, 1, '國立公文書館;亞洲歷史資料中心（JACAR）', 'JP-ST-03', 'https://www.digital.archives.go.jp/', 'ja', '明治維新期（慶應3年～明治14年）太政官日記・公文録等採錄編纂之典例條規集，分制度・官制・外交・財政等19部門，為維新政府制度建設與早期對外關係（含臺灣・琉球交涉）之核心官方史料', '太政類典;明治維新;太政官;制度史料', '明治（1867–1881）', '日本全國', NULL, '公文類聚;御署名原本', '太政官', '國立公文書館（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '維新制度史料總匯', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1140, '公文類聚', '日本政府（內閣・各省）', '1886–1952', 42, 1, '亞洲歷史資料中心（JACAR）;國立公文書館', 'JP-ST-04', 'https://www.digital.archives.go.jp/', 'ja', '明治19年以後內閣・各省編纂之政務公文總集，凡70餘編，收錄法律・命令・報告等正式公文，涵蓋日本近代對外擴張與殖民地統治（含臺灣總督府相關行政），為近代日本政治史與殖民史之系統性官方檔案', '公文類聚;內閣;行政檔案;殖民統治', '明治–昭和前期（1886–1952）', '日本全國・殖民地', NULL, '太政類典;御署名原本;台湾総督府関係公文', '日本政府', '國立公文書館（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '內閣政務公文總集', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1141, '日清講和条約締結一件', '外務省（陸奥宗光等）', '1895', 42, 1, '亞洲歷史資料中心（JACAR）;外務省外交史料館', 'JP-ST-05', 'https://www.jacar.archives.go.jp/das/meta/B06150069000', 'ja', '外務省外交史料館所藏日清講和條約締結之往復文書，含李鴻章來朝・遭難、談判拒絶、休戰定約、講和條約及批准書交換等全程記錄，為馬關條約談判之最詳盡外交原始檔案', '日清講和;李鴻章;陸奥宗光;外交談判;馬關條約', '明治（1895）', '下關・北京・芝罘', NULL, '御署名原本・日清両国媾和条約及別約;通信全覧', '外務省', '外務省外交史料館（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '馬關條約談判全程檔案', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1142, '通信全覧・続通信全覧', '外務省（幕末外交史料）', '1854–1886', 42, 1, '亞洲歷史資料中心（JACAR）;外務省外交史料館', 'JP-ST-06', 'https://www.jacar.archives.go.jp/', 'ja', '外務省外交史料館所藏幕末以降與各國交涉之往復公文全集，含開國・條約締結・使節派遣等紀錄，為明治外交成立過程之基礎史料，其中亦收錄與清國・臺灣・琉球相關交涉文書', '通信全覧;幕末外交;條約改正;使節', '明治（1854–1886）', '日本全國・東亞', NULL, '日清講和条約締結一件;戦前期外務省記録', '外務省', '外務省外交史料館（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '幕末外交文書總集', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1143, '戦前期外務省記録', '外務省', '1868–1945', 42, 1, '亞洲歷史資料中心（JACAR）;外務省外交史料館', 'JP-ST-07', 'https://www.jacar.archives.go.jp/', 'ja', '外務省外交史料館所藏明治期至二次大戰前之對外往復文書，分門類約3萬冊，含領事報告・條約・通商・移民等紀錄，為日本與亞洲各國（含中國・臺灣・朝鮮・東南亞）關係之最核心外交檔案', '戦前期外務省記録;領事報告;條約;外交', '明治–昭和前期（1868–1945）', '東亞・東南亞・世界', NULL, '通信全覧;戦後外交記録', '外務省', '外務省外交史料館（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '近代日本外交檔案核心', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1144, '陸軍省大日記類', '陸軍省', '1868–1945', 42, 1, '亞洲歷史資料中心（JACAR）;防衛省防衛研究所戰史研究中心', 'JP-ST-08', 'https://www.jacar.archives.go.jp/', 'ja', '防衛省防衛研究所戰史研究中心所藏陸軍省公文書，明治元年至昭和20年，約6萬冊，含西南戰爭・日清・日露・滿洲事變・大東亞戰爭之作戰與軍事行政紀錄，其中臺灣軍・霧社事件・南洋作戰等檔案對東亞戰爭史研究至關重要', '陸軍省;大日記;軍事檔案;臺灣軍;大東亞戰爭', '明治–昭和前期（1868–1945）', '日本全國・東亞', NULL, '海軍公文備考類;台湾霧社事件に関する件', '陸軍省', '防衛省防衛研究所戰史研究中心（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '陸軍公文書核心', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1145, '海軍公文備考類', '海軍省', '1868–1937', 42, 1, '亞洲歷史資料中心（JACAR）;防衛省防衛研究所戰史研究中心', 'JP-ST-09', 'https://www.jacar.archives.go.jp/', 'ja', '防衛省防衛研究所戰史研究中心所藏海軍省公文書，明治元年至昭和12年，約4萬2千冊，含艦隊・作戰・軍備・演習紀錄，關東大震災時之海軍救護文書等亦收錄其中', '海軍省;公文備考;軍事檔案;艦隊', '明治–昭和前期（1868–1937）', '日本全國・東亞', NULL, '陸軍省大日記類;公文備考・関東大震災', '海軍省', '防衛省防衛研究所戰史研究中心（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '海軍公文書核心', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1146, '台湾総督府関係公文（JACAR收錄）', '臺灣總督府;拓務省;日本政府', '1895–1945', 42, 1, '亞洲歷史資料中心（JACAR）;國立公文書館', 'JP-ST-10', 'https://www.jacar.archives.go.jp/', 'ja', 'JACAR所收錄與臺灣總督府相關之日本中央政府公文，含總督府來文・拓務省往復・討蕃報告・行政措施等，與臺灣總督府檔案互補，為理解日本殖民臺灣之中央側官方視角', '臺灣總督府;拓務省;殖民行政;討蕃', '明治–昭和前期（1895–1945）', '臺灣', NULL, '臺灣總督府檔案;台湾討蕃状況ノ件;台湾霧社事件関係史料', '臺灣總督府', '國立公文書館（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '日本中央側之臺灣統治檔案', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1147, '台湾討蕃状況ノ件', '臺灣總督;內務大臣', '1913', 43, 1, '亞洲歷史資料中心（JACAR）;國立公文書館', 'JP-ST-11', 'https://www.jacar.archives.go.jp/das/meta/A04010268800', 'ja', '大正2年（1913）臺灣總督向內務大臣陳報之討蕃狀況電報，詳載太魯閣等原住民討伐之進展與蕃人歸順情形，為日治時期理蕃政策之第一手官方記錄', '討蕃;理蕃;原住民;臺灣總督;太魯閣', '大正（1913）', '臺灣', NULL, '台湾総督府関係公文;霧社地方ニ於ケル蕃人騒擾ニ関スル件', '臺灣總督府', '國立公文書館（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '日治理蕃官方電報', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1148, '台湾霧社事件に関する件（密大日記）', '陸軍省', '1930', 44, 1, '亞洲歷史資料中心（JACAR）;防衛省防衛研究所戰史研究中心', 'JP-ST-12', 'https://www.jacar.archives.go.jp/das/meta/C01003945600', 'ja', '昭和5年（1930）霧社事件時陸軍省密大日記所收臺灣霧社事件相關文書，含臺灣軍司令部之鎮壓報告與善後處理，為霧社事件之日本軍方官方紀錄，與臺灣側檔案互相對照', '霧社事件;原住民;陸軍省;密大日記;臺灣軍', '昭和前期（1930）', '臺灣（霧社）', NULL, '霧社地方ニ於ケル蕃人騒擾ニ関スル件;台湾討蕃状況ノ件', '陸軍省', '防衛省防衛研究所戰史研究中心（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '霧社事件軍方檔案', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1149, '霧社地方ニ於ケル蕃人騒擾ニ関スル件', '拓務省;臺灣總督府警務局', '1930–1931', 44, 1, '亞洲歷史資料中心（JACAR）;國立公文書館', 'JP-ST-13', 'https://www.jacar.archives.go.jp/das/meta/A04018332700', 'ja', '昭和5–6年（1930–1931）霧社事件前後拓務省與臺灣總督府警務局之公文往來，含事變初期蕃情通報・安撫措施與後續處置，為霧社事件之日本中央行政側官方檔案', '霧社事件;拓務省;警務局;蕃情;安撫', '昭和前期（1930–1931）', '臺灣（霧社）', NULL, '台湾霧社事件に関する件;台湾討蕃状況ノ件', '拓務省', '國立公文書館（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '霧社事件行政側檔案', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1150, '公文備考・大正12年変災災害（関東大震災）', '海軍省', '1923', 43, 1, '亞洲歷史資料中心（JACAR）;防衛省防衛研究所戰史研究中心', 'JP-ST-14', 'https://www.jacar.archives.go.jp/das/meta/C08050965900', 'ja', '海軍省公文備考・大正12年卷所收關東大震災（1923）相關文書，含海軍救護・鎮壓與震災地視察報告，為震災時海軍行動之第一手官方紀錄', '関東大震災;海軍省;公文備考;災害救護', '大正（1923）', '東京・神奈川・關東', NULL, '海軍公文備考類;天気図', '海軍省', '防衛省防衛研究所戰史研究中心（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '震災海軍行動檔案', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1151, '満州事変・支那事変・大東亜戦争関係史料', '陸軍省;海軍省;日本政府', '1931–1945', 44, 1, '亞洲歷史資料中心（JACAR）;防衛省防衛研究所戰史研究中心', 'JP-ST-15', 'https://www.jacar.archives.go.jp/', 'ja', '防衛研究所所藏滿洲事變（1931）至大東亞戰爭（1945）之作戰記錄與軍事行政檔案，含支那事變・南洋作戰等，為近代日本對外戰爭史與亞洲侵略史之核心軍事史料', '満州事変;支那事変;大東亜戦争;作戰記錄', '昭和前期（1931–1945）', '東亞・東南亞・太平洋', NULL, '陸軍省大日記類;海軍公文備考類;戦後外交記録', '日本政府', '防衛省防衛研究所戰史研究中心（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '對外戰爭軍事檔案', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1152, '写真週報', '日本政府（情報局）', '1938–1945', 44, 5, '國立公文書館;亞洲歷史資料中心（JACAR）', 'JP-ST-16', 'https://www.digital.archives.go.jp/', 'ja', '昭和13–20年（1938–1945）內閣情報部（情報局）發行之國策宣傳寫真雜誌，刊載戰爭動員・社會生活・殖民地（含臺灣・滿洲）報導，為戰時日本社會與殖民宣傳之圖像史料', '写真週報;宣傳;戰爭動員;殖民地;情報局', '昭和前期（1938–1945）', '日本全國・殖民地', NULL, '満州事変・支那事変・大東亜戦争関係史料', '日本政府', '國立公文書館（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '戰時圖像宣傳誌', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1153, '御署名原本・日本国憲法', '日本國（裕仁天皇・吉田茂内閣）', '1946-11-03', 45, 1, '亞洲歷史資料中心（JACAR）;國立公文書館', 'JP-ST-17', 'https://www.jacar.archives.go.jp/das/meta/A04017858900', 'ja', '昭和21年（1946）11月3日公布之日本國憲法御署名原本，確立國民主權・和平主義與基本人權，戰後日本民主化之根本法，為戰後東亞秩序重構之關鍵官方檔案', '日本国憲法;御署名原本;和平主義;國民主權', '戰後日本（1946）', '日本全國', NULL, '大日本帝国憲法;帝国憲法改正関係一件', '日本政府', '國立公文書館（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '戰後日本根本法', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1154, '帝国憲法改正関係一件・日本国憲法関係一件', '外務省', '1945–1947', 45, 1, '亞洲歷史資料中心（JACAR）;外務省外交史料館', 'JP-ST-18', 'https://www.jacar.archives.go.jp/', 'ja', '外務省外交史料館所藏憲法改正草案・GHQ交涉記錄・臨時法制調查會文書，為日本國憲法成立過程之外交與法制側第一手檔案，可與御署名原本互相參證', '憲法改正;GHQ;憲法草案;佔領期外交', '戰後日本（1945–1947）', '東京', NULL, '御署名原本・日本国憲法;対日平和条約実施関係', '外務省', '外務省外交史料館（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '憲法制定過程檔案', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1155, '対日平和条約実施関係・サンフランシスコ平和条約', '外務省', '1945–1952', 45, 1, '亞洲歷史資料中心（JACAR）;外務省外交史料館', 'JP-ST-19', 'https://www.jacar.archives.go.jp/das/meta/BA0102040201', 'ja', '外務省外交史料館所藏戰後外交記録中對日平和條約（サンフランシスコ平和条約，1952生效）之實施關係文書，含第七條戰前條約復活・沖繩・琉球施政權等條款之執行記錄', 'サンフランシスコ平和条約;對日講和;戰後外交;施政權', '戰後日本（1945–1952）', '東京・舊金山', NULL, '戦後外交記録;沖縄返還関係資料', '外務省', '外務省外交史料館（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '對日講和實施檔案', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1156, '沖縄返還関係資料（戦後外交記録）', '外務省', '1969–1972', 45, 1, '亞洲歷史資料中心（JACAR）;外務省外交史料館', 'JP-ST-20', 'https://www.jacar.archives.go.jp/', 'ja', '外務省外交史料館所藏戰後外交記録中沖繩返還（1972年5月15日）相關文書，含佐藤・尼克森會談・返還協定・施政權移轉等，與琉球側美治史料互補，為沖繩回歸日本之核心官方檔案', '沖縄返還;佐藤尼克森;返還協定;施政權;日美關係', '戰後日本（1969–1972）', '沖繩・東京・華盛頓', NULL, '戦後外交記録;対日平和条約実施関係', '外務省', '外務省外交史料館（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '沖繩返還關鍵檔案', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1157, '戦後外交記録', '外務省', '1945–1972', 45, 1, '亞洲歷史資料中心（JACAR）;外務省外交史料館', 'JP-ST-21', 'https://www.jacar.archives.go.jp/', 'ja', '外務省外交史料館依外交記録公開制度公開之戰後外交文書，昭和47年（1972）以前，含佔領期・講和・安保・賠償・日中・日韓關係等，為戰後日本外交史之系統性官方檔案', '戦後外交記録;佔領期;安保;賠償;外交公開', '戰後日本（1945–1972）', '東京・世界', NULL, '対日平和条約実施関係;沖縄返還関係資料', '外務省', '外務省外交史料館（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '戰後外交檔案體系', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1158, '官報', '日本政府（內閣）', '1883–1952', 42, 3, '國立國會圖書館', 'JP-ST-22', 'https://dl.ndl.go.jp/', 'ja', '明治16年（1883）至昭和27年（1952）之日本官報全文數位版，收錄法令・條約・人事・告示等，為日本近代法令公布之唯一正式刊物，含臺灣割讓・殖民地統治相關法令', '官報;法令;條約公布;近代制度', '明治–戰後日本（1883–1952）', '日本全國', NULL, '御署名原本;帝国議会会議録', '日本政府', '國立國會圖書館（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '近代法令公報全文', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1159, '帝国議会会議録', '帝国議會（貴族院・衆議院）', '1890–1947', 42, 1, '國立國會圖書館（帝國議會會會議録検索系統）', 'JP-ST-23', 'https://teikokugikai-i.ndl.go.jp/', 'ja', '明治23年（1890）至昭和22年（1947）帝國議會貴族院・衆議院之會議速記録全文檢索系統，含臺灣統治・預算審議・殖民政策等議事記錄，為日本近代議會政治與殖民統治之核心言論史料', '帝国議会;速記録;議會政治;殖民政策', '明治–昭和前期（1890–1947）', '東京', NULL, '官報;大日本帝国憲法', '帝国議會', '國立國會圖書館（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '帝國議會全文檢索', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1160, '明治・大正・昭和戦前期新聞', '新聞社（東京日日新聞・時事新報・大阪朝日等）', '1868–1945', 42, 3, '國立國會圖書館', 'JP-ST-24', 'https://dl.ndl.go.jp/', 'ja', '國立國會圖書館數位典藏之明治・大正・昭和戰前期報紙，含東京日日新聞・時事新報等，記錄日本近代社會・政治・對外戰爭與殖民地（臺灣）新聞報導', '新聞;近代報紙;時事報導;殖民地', '明治–昭和前期（1868–1945）', '日本全國・殖民地', NULL, '官報;写真週報', '新聞社', '國立國會圖書館（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '近代報紙數位典藏', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1161, '歴史的音源（SP盤）', '各唱片公司', '1900–1950', 42, 5, '國立國會圖書館（歴史的音源）', 'JP-ST-25', 'https://dl.ndl.go.jp/', 'ja', '國立國會圖書館歷史的音源網站收錄1900–1950年前後SP唱片數位化音源，含邦樂・流行歌・落語・浪曲・講談等，為日本近代聲音文化與臺灣日治時期流行文化同源之影音史料', 'SP盤;歴史的音源;流行歌;音聲記錄', '明治–昭和前期（1900–1950）', '日本全國・臺灣・殖民地', NULL, '明治・大正・昭和戦前期新聞', '各唱片公司', '國立國會圖書館（數位化）', '2026-08-01', 'ARR', '數位公開，線上試聽', '已收錄 metadata', NULL, '近代聲音史料', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1162, '日本占領関係資料・プランゲ文庫', 'GHQ/SCAP;アメリカ合衆国', '1945–1952', 45, 1, '國立國會圖書館', 'JP-ST-26', 'https://dl.ndl.go.jp/', 'ja', '國立國會圖書館所藏佔領時期（1945–1952）GHQ/SCAP相關資料與プランゲ文庫（佔領期檢閱文書），含佔領行政・憲法改革・媒體檢閱等記錄，為戰後日本民主化與美日關係之核心檔案', 'GHQ;SCAP;佔領;プランゲ文庫;檢閱', '戰後日本（1945–1952）', '日本全國', NULL, '御署名原本・日本国憲法;戦後外交記録', 'GHQ/SCAP', '國立國會圖書館（數位化）', '2026-08-01', 'ARR', '數位公開，線上瀏覽', '已收錄 metadata', NULL, '佔領期官方檔案', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1163, '憲政資料（政治家・官僚・軍人文書）', '政治家・官僚・軍人等', '明治–昭和（1868–1945）', 42, 4, '國立國會圖書館（憲政資料室）', 'JP-ST-27', 'https://dl.ndl.go.jp/', 'ja', '國立國會圖書館憲政資料室所藏近現代政治家・官僚・軍人之書簡・書類・日記，如伊藤博文・原敬等，為日本近代政治人物與政策決定過程之第一手個人史料', '憲政資料;政治家;日記;書簡', '明治–昭和前期（1868–1945）', '日本全國', NULL, '帝国議会会議録;官報', '政治家・官僚', '國立國會圖書館（數位化）', '2026-08-01', 'ARR', '數位公開，線上瀏覽', '已收錄 metadata', NULL, '近代政治人物史料', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1164, '古事記', '太安萬侶', '712', 39, 7, '國立國會圖書館', 'JP-ST-28', 'https://dl.ndl.go.jp/', 'ja', '和銅5年（712）太安萬侶奉元明天皇之詔撰錄之日本最古史書，記天地開闢至推古天皇之皇統與神話傳說，為日本神話・古代史・上代語之根本文獻', '古事記;日本神話;皇統;太安萬侶', '日本史前・古代（712）', '日本全國', NULL, '日本書紀;万葉集', NULL, '國立國會圖書館（數位化）', '2026-08-01', 'PD', '古典文獻，數位全文公開', '已收錄 metadata', NULL, '日本最古史書', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1165, '日本書紀', '舍人親王等', '720', 39, 7, '國立國會圖書館', 'JP-ST-29', 'https://dl.ndl.go.jp/', 'ja', '養老4年（720）舍人親王等奉勅撰錄之日本第一部正史，用漢文編年體記神代至持統天皇，與古事記並為日本古代史雙璧，為理解日本古代國家成立之基礎文獻', '日本書紀;正史;編年體;舍人親王', '日本史前・古代（720）', '日本全國', NULL, '古事記;続日本紀', '舍人親王', '國立國會圖書館（數位化）', '2026-08-01', 'PD', '古典文獻，數位全文公開', '已收錄 metadata', NULL, '日本第一部正史', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1166, '万葉集', '大伴家持等（撰者諸說）', '8世紀', 39, 7, '國立國會圖書館', 'JP-ST-30', 'https://dl.ndl.go.jp/', 'ja', '8世紀成立之日本最古和歌集，凡20卷約4500首，收錄天皇至庶民之歌，反映古代日本社會・生活與情感，為上代日本語與文學研究之根本經典', '万葉集;和歌;上代語;大伴家持', '日本史前・古代（8世紀）', '日本全國', NULL, '古事記;源氏物語', NULL, '國立國會圖書館（數位化）', '2026-08-01', 'PD', '古典文獻，數位全文公開', '已收錄 metadata', NULL, '最古和歌集', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1167, '源氏物語', '紫式部', '11世紀', 39, 7, '國立國會圖書館', 'JP-ST-31', 'https://dl.ndl.go.jp/', 'ja', '11世紀初平安時代宮廷女官紫式部所著長篇物語，凡54帖，描寫光源氏之戀愛與權力世界，為日本文學最高傑作，其寫本・版本流傳亦反映日本書籍文化', '源氏物語;紫式部;物語文學;平安文學', '日本史前・古代（11世紀）', '京都', NULL, '万葉集;吾妻鏡', NULL, '國立國會圖書館（數位化）', '2026-08-01', 'PD', '古典文獻，數位全文公開', '已收錄 metadata', NULL, '平安物語文學高峰', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1168, '御成敗式目', '北条泰時', '1232', 40, 1, '國立國會圖書館', 'JP-ST-32', 'https://dl.ndl.go.jp/', 'ja', '貞永元年（1232）鎌倉幕府執權北條泰時制定之武家法度凡51條，為日本第一部武家成文法，奠定中世武士社會之法律秩序，為理解武家政權與中世法制之根本史料', '御成敗式目;武家法;鎌倉幕府;北条泰時', '中世（1232）', '日本全國', NULL, '吾妻鏡;太平記', '北条泰時', '國立國會圖書館（數位化）', '2026-08-01', 'PD', '古典文獻，數位全文公開', '已收錄 metadata', NULL, '第一部武家法典', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1169, '吾妻鏡', '鎌倉幕府', '1180–1266', 40, 1, '國立國會圖書館', 'JP-ST-33', 'https://dl.ndl.go.jp/', 'ja', '鎌倉幕府官方編年史，記治承4年（1180）至文永3年（1266）之幕府政務・源平合戰・承久之變等，為鎌倉時代政治・社會之第一級編年史料', '吾妻鏡;鎌倉幕府;編年史;源平合戰', '中世（1180–1266）', '鎌倉・日本全國', NULL, '御成敗式目;平家物語', '鎌倉幕府', '國立國會圖書館（數位化）', '2026-08-01', 'PD', '古典文獻，數位全文公開', '已收錄 metadata', NULL, '鎌倉幕府編年史', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1170, '平家物語', '不詳（琵琶法師語り本）', '13世紀', 40, 7, '國立國會圖書館', 'JP-ST-34', 'https://dl.ndl.go.jp/', 'ja', '13世紀成立之軍記物語，以平家一門之榮枯盛衰為主題，記源平合戰與壇之浦之役，為日本中世最大之軍記文學，其諸版本流傳反映中世說唱文化', '平家物語;軍記物語;源平合戰;琵琶法師', '中世（13世紀）', '京都・西日本', NULL, '吾妻鏡;太平記', NULL, '國立國會圖書館（數位化）', '2026-08-01', 'PD', '古典文獻，數位全文公開', '已收錄 metadata', NULL, '中世軍記物語', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1171, '太平記', '小島法師等（諸說）', '14世紀', 40, 7, '國立國會圖書館', 'JP-ST-35', 'https://dl.ndl.go.jp/', 'ja', '南北朝時代（1336–1392）成書之軍記物語，記後醍醐天皇建武新政至南北朝動亂，為理解日本中世政治變動與武士社會之重要文學・史料', '太平記;南北朝;軍記物語;建武新政', '中世（1336–1392）', '京都・日本全國', NULL, '平家物語;御成敗式目', NULL, '國立國會圖書館（數位化）', '2026-08-01', 'PD', '古典文獻，數位全文公開', '已收錄 metadata', NULL, '南北朝軍記', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1172, '徳川幕府法・御触書・老中文書', '德川幕府（老中）', '1603–1867', 41, 1, '國立國會圖書館;國立公文書館', 'JP-ST-36', 'https://dl.ndl.go.jp/', 'ja', '江戶時代德川幕府之法令・御觸書與老中關係文書，含武家諸法度・鎖國令・參勤交代等制度文件，為理解幕藩體制與江戶社會秩序之核心官方史料', '徳川幕府;御触書;武家諸法度;幕藩體制;鎖國', '江戶（1603–1867）', '日本全國', NULL, '江戶古地図・国絵図;浮世絵・錦絵', '德川幕府', '國立國會圖書館（數位化）', '2026-08-01', 'PD', '古典文獻，數位全文公開', '已收錄 metadata', NULL, '幕府法令史料', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1173, '江戶古地図・国絵図', '德川幕府・各藩', '1603–1867', 41, 2, '國立國會圖書館;國立公文書館', 'JP-ST-37', 'https://dl.ndl.go.jp/', 'ja', '江戶時代幕府與諸藩製作之國繪圖・城下町圖・名所圖會等古地圖，記錄領國疆域・聚落・交通與城市空間，為江戶歷史地理與都市史之核心輿圖史料', '国絵図;古地圖;城下町;名所圖會;歷史地理', '江戶（1603–1867）', '日本全國', NULL, '徳川幕府法・御触書・老中文書', '德川幕府', '國立國會圖書館（數位化）', '2026-08-01', 'PD', '古典輿圖，數位全文公開', '已收錄 metadata', NULL, '江戶輿圖史料', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1174, '浮世絵・錦絵', '菱川師宣;喜多川歌麿;葛飾北齋;歌川廣重等', '17世紀–19世紀', 41, 5, '國立國會圖書館', 'JP-ST-38', 'https://dl.ndl.go.jp/', 'ja', '江戶時代浮世繪木版畫數位典藏，含美人畫・役者繪・風景畫・名所繪等，反映江戶庶民文化・都市生活與海外對日本之圖像想像，為日本近世視覺文化之代表性史料', '浮世絵;錦絵;北齋;廣重;庶民文化', '江戶（17–19世紀）', '江戶（東京）・日本全國', NULL, '江戶古地図・国絵図;徳川幕府法・御触書・老中文書', '浮世繪師', '國立國會圖書館（數位化）', '2026-08-01', 'PD', '古典圖像，數位全文公開', '已收錄 metadata', NULL, '近世版畫藝術', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1175, '解体新書', '杉田玄白・前野良澤', '1774', 41, 11, '國立國會圖書館', 'JP-ST-39', 'https://dl.ndl.go.jp/', 'ja', '安永3年（1774）杉田玄白等翻譯荷蘭解剖學著作《Ontleedkundige Tafelen》而成之《解體新書》，為日本西洋醫學翻譯之嚆矢，開啟蘭學與近代醫學之新頁，亦為臺灣近代醫學教育之先聲', '解体新書;蘭學;西洋醫學;杉田玄白', '江戶（1774）', '江戶（東京）', NULL, '徳川幕府法・御触書・老中文書', '杉田玄白', '國立國會圖書館（數位化）', '2026-08-01', 'PD', '古典文獻，數位全文公開', '已收錄 metadata', NULL, '蘭學醫學之始', 'JP') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1176, '縄文・弥生・古墳時代遺跡発掘報告', '日本各地教育委員會・大學', '19世紀–迄今', 39, 7, '日本文化廳;國立歷史民俗博物館', 'JP-ST-40', 'https://bunka.nii.ac.jp/', 'ja', '日本列島先史時代（縄文・彌生・古墳）遺跡之發掘調查報告與出土資料，含三内丸山遺跡・吉野ヶ里遺跡等，為研究日本先史社會・稻作傳播・國家起源之考古史料', '縄文;弥生;古墳;考古遺跡;發掘報告', '日本史前・古代（約前14000–538）', '日本列島', NULL, '日本書紀;漢委奴國王印', '日本各地教育委員會', '日本文化廳（數位化）', '2026-08-01', 'ARR', '文化財公開，線上瀏覽', '已收錄 metadata', NULL, '先史考古報告', 'JP') ON CONFLICT (id) DO NOTHING;

SELECT setval('sources_id_seq', 1176) WHERE NOT EXISTS (SELECT 1 FROM sources WHERE id = 1176);
SELECT setval('sources_id_seq', (SELECT COALESCE(MAX(id), 0) FROM sources));

-- === 3. 史料←→資料類型 ===
INSERT INTO source_materials (source_id, material_type_id) VALUES
  (1137, 1),
  (1138, 1),
  (1139, 1),
  (1140, 1),
  (1141, 1),
  (1142, 1),
  (1143, 1),
  (1144, 1),
  (1145, 1),
  (1146, 1),
  (1147, 1),
  (1148, 1),
  (1149, 1),
  (1150, 1),
  (1151, 1),
  (1152, 2),
  (1153, 1),
  (1154, 1),
  (1155, 1),
  (1156, 1),
  (1157, 1),
  (1158, 1),
  (1159, 1),
  (1160, 2),
  (1161, 4),
  (1162, 1),
  (1163, 1),
  (1164, 1),
  (1165, 1),
  (1166, 1),
  (1167, 1),
  (1168, 1),
  (1169, 1),
  (1170, 1),
  (1171, 1),
  (1172, 1),
  (1173, 3),
  (1174, 2),
  (1175, 1),
  (1176, 1),
  (1176, 2)
ON CONFLICT DO NOTHING;

-- === 4. 史料←→來源機構 ===
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (1137, 296, 'source'),
  (1137, 288, 'source'),
  (1137, 288, 'contributor'),
  (1138, 296, 'source'),
  (1138, 288, 'source'),
  (1138, 288, 'contributor'),
  (1139, 288, 'source'),
  (1139, 296, 'source'),
  (1139, 288, 'contributor'),
  (1140, 296, 'source'),
  (1140, 288, 'source'),
  (1140, 273, 'publisher'),
  (1140, 288, 'contributor'),
  (1141, 296, 'source'),
  (1141, 294, 'source'),
  (1141, 294, 'contributor'),
  (1142, 296, 'source'),
  (1142, 294, 'source'),
  (1142, 294, 'contributor'),
  (1143, 296, 'source'),
  (1143, 294, 'source'),
  (1143, 294, 'contributor'),
  (1144, 296, 'source'),
  (1144, 295, 'source'),
  (1144, 295, 'contributor'),
  (1145, 296, 'source'),
  (1145, 295, 'source'),
  (1145, 297, 'publisher'),
  (1145, 295, 'contributor'),
  (1146, 296, 'source'),
  (1146, 288, 'source'),
  (1146, 299, 'publisher'),
  (1146, 288, 'contributor'),
  (1147, 296, 'source'),
  (1147, 288, 'source'),
  (1147, 299, 'publisher'),
  (1147, 288, 'contributor'),
  (1148, 296, 'source'),
  (1148, 295, 'source'),
  (1148, 295, 'contributor'),
  (1149, 296, 'source'),
  (1149, 288, 'source'),
  (1149, 288, 'contributor'),
  (1150, 296, 'source'),
  (1150, 295, 'source'),
  (1150, 297, 'publisher'),
  (1150, 295, 'contributor'),
  (1151, 296, 'source'),
  (1151, 295, 'source'),
  (1151, 273, 'publisher')
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (1151, 295, 'contributor'),
  (1152, 288, 'source'),
  (1152, 296, 'source'),
  (1152, 273, 'publisher'),
  (1152, 288, 'contributor'),
  (1153, 296, 'source'),
  (1153, 288, 'source'),
  (1153, 273, 'publisher'),
  (1153, 288, 'contributor'),
  (1154, 296, 'source'),
  (1154, 294, 'source'),
  (1154, 294, 'contributor'),
  (1155, 296, 'source'),
  (1155, 294, 'source'),
  (1155, 294, 'contributor'),
  (1156, 296, 'source'),
  (1156, 294, 'source'),
  (1156, 294, 'contributor'),
  (1157, 296, 'source'),
  (1157, 294, 'source'),
  (1157, 294, 'contributor'),
  (1158, 289, 'source'),
  (1158, 273, 'publisher'),
  (1158, 289, 'contributor'),
  (1159, 289, 'source'),
  (1159, 289, 'contributor'),
  (1160, 289, 'source'),
  (1160, 289, 'contributor'),
  (1161, 289, 'source'),
  (1161, 289, 'contributor'),
  (1162, 289, 'source'),
  (1162, 290, 'publisher'),
  (1162, 291, 'publisher'),
  (1162, 289, 'contributor'),
  (1163, 289, 'source'),
  (1163, 289, 'contributor'),
  (1164, 289, 'source'),
  (1164, 289, 'contributor'),
  (1165, 289, 'source'),
  (1165, 289, 'contributor'),
  (1166, 289, 'source'),
  (1166, 289, 'contributor'),
  (1167, 289, 'source'),
  (1167, 289, 'contributor'),
  (1168, 289, 'source'),
  (1168, 289, 'contributor'),
  (1169, 289, 'source'),
  (1169, 289, 'contributor'),
  (1170, 289, 'source'),
  (1170, 289, 'contributor')
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (1171, 289, 'source'),
  (1171, 289, 'contributor'),
  (1172, 289, 'source'),
  (1172, 288, 'source'),
  (1172, 289, 'contributor'),
  (1173, 289, 'source'),
  (1173, 288, 'source'),
  (1173, 289, 'contributor'),
  (1174, 289, 'source'),
  (1174, 289, 'contributor'),
  (1175, 289, 'source'),
  (1175, 289, 'contributor'),
  (1176, 292, 'source'),
  (1176, 298, 'source'),
  (1176, 293, 'publisher'),
  (1176, 292, 'contributor')
ON CONFLICT DO NOTHING;

-- === 完成 ===
