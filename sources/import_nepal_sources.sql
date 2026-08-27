-- ============================================================
-- 東亞歷史權威史料庫 — 尼泊爾史料匯入 SQL（增量模式）
-- 由 Import-NepalToSupabase.ps1 v1 自動產生
-- ============================================================

-- === 0. 尼泊爾時期（僅首次執行） ===
INSERT INTO periods (id, code, name_zh, start_year, end_year, sort_order, region) OVERRIDING SYSTEM VALUE VALUES
  (89, 'np-ancient', '尼泊爾：古代王國（基拉特・李察維時期，約前7世紀–750）', -700, 750, 92, 'SA'),
  (120, 'np-malla', '尼泊爾：馬拉王朝（750–1768）', 750, 1768, 93, 'SA'),
  (121, 'np-shah', '尼泊爾：沙阿王朝統一（1768–1846）', 1768, 1846, 94, 'SA'),
  (122, 'np-rana', '尼泊爾：拉納王朝（1846–1951）', 1846, 1951, 95, 'SA'),
  (123, 'np-republic', '尼泊爾：君主立憲～聯邦共和（1951–迄今）', 1951, 2026, 96, 'SA')
ON CONFLICT (id) DO NOTHING;
SELECT setval('periods_id_seq', 123);

-- === 1. 來源機構（僅新增者） ===
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (423, 'Archives Nepal') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (424, 'Digital Himalaya') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (425, '尼泊爾口述歷史計畫') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (426, '尼泊爾考古局') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (427, '尼泊爾國家統計局') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (428, '尼泊爾國家博物館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (429, '尼泊爾國家圖書館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (430, '尼泊爾國家數位圖書館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (431, '尼泊爾國家檔案館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (432, '特里布萬大學中央圖書館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (433, '馬丹・普拉斯卡圖書館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (434, '凱撒圖書館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (435, '廓爾喀報社') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (436, '藍毗尼開發信託') ON CONFLICT (name_zh) DO NOTHING;

SELECT setval('institutions_id_seq', 436);

-- === 2. 主要史料 ===
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1416, '尼泊爾國家檔案館（National Archives of Nepal）', '尼泊爾國家檔案館', '古代–迄今', 89, 1, '尼泊爾國家檔案館', 'NP-ST-01', 'http://narchives.gov.np/', 'ne;en;sa', '尼泊爾國家檔案館前身可溯至1812年檔案庫，現為國家法定檔案典藏中心，保存沙阿王朝與拉納時期詔書・外交文書・土地登記・司法檔案與梵語貝葉手稿等，官方網站提供目錄與數位化查詢，為尼泊爾國家記憶之主庫', '尼泊爾;國家檔案館;沙阿王朝;拉納時期;檔案', '古代王國～尼泊爾共和（迄2025）', '尼泊爾（加德滿都）', NULL, '凱撒圖書館（Kaiser Library）', NULL, '尼泊爾國家檔案館（數位典藏）', '2026-08-27', 'ARR', '官方檔案館典藏，線上檢索', '已收錄 metadata', NULL, '尼泊爾最大檔案庫，含宗教・土地・司法檔案', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1417, '凱撒圖書館（Kaiser Library）', '凱撒（Kaiser Shamsher）', '19世紀–20世紀', 121, 7, '凱撒圖書館', 'NP-ST-02', 'https://klib.gov.np/', 'ne;en;sa;ti', '凱撒圖書館為沙阿王朝皇室成員凱撒・沙姆謝爾捐贈之私人圖書館，藏梵語・尼泊爾語・藏語・英語手稿與早期印刷本約3萬冊，1941年開放，現由尼泊爾國家檔案館代管，為尼泊爾歷史文獻之重要私家藏書', '凱撒圖書館;手稿;梵語;藏語;私家藏書', '沙阿王朝～拉納時期（19–20世紀）', '尼泊爾（加德滿都）', NULL, '尼泊爾國家檔案館（含真納文件收藏）;凱撒圖書館（Kaiser Library）', NULL, '凱撒圖書館（官方典藏）', '2026-08-27', 'ARR', '皇家遺贈圖書館，官方典藏', '已收錄 metadata', NULL, '含UNESCO世界記憶登錄之《妙聞集》手稿', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1418, 'Susrutamhita（Sahottartantra）手稿', '《妙聞集》（Susrutamhita）', '約公元9世紀', 89, 7, '凱撒圖書館', 'NP-ST-03', 'https://www.unesco.org/en/memory-world/susrutamhita-sahottartantra-manuscript', 'sa', '藏於凱撒圖書館之阿育吠陀醫學經典《妙聞集》續論篇貝葉手稿，約1,134年歷史，為印度傳統醫藥體系最古老文獻之一，2013年以尼泊爾名義登錄UNESCO世界記憶國際名錄，為尼泊爾之世界記憶登錄代表', '妙聞集;阿育吠陀;貝葉手稿;世界記憶;醫學', '古代王朝～中世紀（公元9世紀）', '尼泊爾（加德滿都）', NULL, '凱撒圖書館（Kaiser Library）', NULL, '凱撒圖書館（原件典藏）', '2026-08-27', 'ARR', 'UNESCO世界記憶2013，官方典藏', '已收錄 metadata', NULL, 'UNESCO世界記憶2013', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1419, '尼泊爾國家圖書館（Nepal National Library）', '尼泊爾國家圖書館', '1957–迄今', 123, 7, '尼泊爾國家圖書館', 'NP-ST-04', 'https://nnl.gov.np/', 'ne;en', '尼泊爾法定送存與著作權圖書館，監管教育部，藏尼泊爾出版之書籍・期刊・政府出版品與手抄本，OPAC線上目錄開放檢索，為研究尼泊爾出版史與國家出版之官方書庫', '尼泊爾;國家圖書館;法定送存;出版品;政府出版', '尼泊爾共和（1951–迄今）', '尼泊爾（拉利特普爾/巴克塔普爾）', NULL, '尼泊爾國家數位圖書館（NDL）', NULL, '尼泊爾國家圖書館（OPAC）', '2026-08-27', 'ARR', '官方圖書館典藏，線上檢索', '已收錄 metadata', NULL, '1957年成立，含皇家贈書', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1420, '尼泊爾國家數位圖書館（National Digital Library, NDL）', '尼泊爾教育部', '迄今（數位典藏）', 123, 1, '尼泊爾國家數位圖書館', 'NP-ST-05', 'https://ndl.gov.np/', 'ne;en', '尼泊爾教育部營運之國家數位圖書館，整合全國圖書館聯合目錄與數位儲存庫，收錄書籍・論文・期刊・政府出版品・地圖影像與珍本手稿，為尼泊爾知識遺產之單一數位入口', '尼泊爾;數位圖書館;聯合目錄;數位典藏;知識遺產', '尼泊爾共和（2008–迄今）', '尼泊爾（加德滿都）', NULL, '尼泊爾國家圖書館（Nepal National Library）', NULL, '尼泊爾國家數位圖書館（數位典藏）', '2026-08-27', 'ARR', '官方數位典藏，免費開放', '已收錄 metadata', NULL, '含國家聯合目錄與數位儲存庫', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1421, '馬丹・普拉斯卡圖書館（Madan Puraskar Pustakalaya）', '馬丹・普拉斯卡圖書館', '1956–迄今', 121, 7, '馬丹・普拉斯卡圖書館', 'NP-ST-06', 'https://madanpuraskar.org/', 'ne;new', '尼泊爾語出版品之最主要典藏機構，藏尼泊爾語・尼瓦語書籍・期刊・小冊・照片與手稿，為非營利圖書館並進行數位化，2023年納入世界記憶MOWCAP《蘇丹娜之夢》關聯典藏，是研究尼泊爾語言出版史之核心', '馬丹普拉斯卡;尼泊爾語;出版品;期刊;數位化', '沙阿王朝～尼泊爾共和（1956–迄今）', '尼泊爾（拉利特普爾）', NULL, '大英圖書館（Madan Puraskar Collection）', NULL, '馬丹・普拉斯卡圖書館（數位典藏）', '2026-08-27', 'ARR', '非營利圖書館，數位化進行中', '已收錄 metadata', NULL, '尼泊爾語出版品主庫', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1422, 'Archives Nepal 歷史文獻平台', 'Archives Nepal', '迄今（數位典藏）', 89, 9, 'Archives Nepal', 'NP-ST-07', 'https://www.archivenepal.org/', 'ne;new;en', '尼泊爾歷史文獻數位典藏平台，蒐集與公開尼泊爾相關之歷史照片・手稿・地圖・口述記錄，並與UNESCO合作進行紐瓦（Newa）手稿數位化（2025–2026年完成30餘件200–800年手稿），為研究尼泊爾社會史之開放資料庫', '尼泊爾;數位典藏;紐瓦手稿;歷史照片;口述', '古代王朝～尼泊爾共和（迄2026）', '尼泊爾（加德滿都谷地）', NULL, 'UNESCO（世界記憶框架）', NULL, 'Archives Nepal（數位典藏）', '2026-08-27', 'ARR', '開放平台，自由瀏覽', '已收錄 metadata', NULL, '與UNESCO合作之紐瓦手稿數位化', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1423, '尼泊爾人口普查檔案（Census Nepal）', '尼泊爾國家統計局（NSO）', '1911–迄今', 122, 6, '尼泊爾國家統計局', 'NP-ST-08', 'https://censusnepal.cbs.gov.np/', 'ne;en', '尼泊爾自1911年拉納時期首次人口普查起，歷1041-42・1952-54・1961・1971・1981・1991・2001・2011・2021等次，國家統計局出版之普查報告提供族群・語言・宗教・人口分布之官方統計，官網開放全量結果檔', '尼泊爾;人口普查;統計;族群;語言', '拉納時期～尼泊爾共和（1911–2021）', '尼泊爾全境', NULL, '尼泊爾國家統計局（NSO）', NULL, '尼泊爾國家統計局（數位資料庫）', '2026-08-27', 'ARR', '官方統計，免費下載', '已收錄 metadata', NULL, '1921年起每10年一次', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1424, '尼泊爾國家統計局（NSO）統計資料庫', '尼泊爾國家統計局（NSO）', '1958–迄今', 123, 6, '尼泊爾國家統計局', 'NP-ST-09', 'https://microdata.nsonepal.gov.np/', 'ne;en', '尼泊爾國家統計局（前中央統計局CBS）於1958年依統計法成立，營運中央資料目錄與微型資料庫，提供人口・家戶・勞動・經濟等官方調查之問卷與資料集，為尼泊爾國家統計體系之核心', '尼泊爾;統計局;官方統計;調查;資料庫', '尼泊爾共和（1958–迄今）', '尼泊爾全境', NULL, '尼泊爾人口普查檔案（Census Nepal）', NULL, '尼泊爾國家統計局（微型資料庫）', '2026-08-27', 'ARR', '官方統計，註冊後開放', '已收錄 metadata', NULL, '原中央統計局CBS，2022年改制NSO', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1425, '藍毗尼佛陀誕生地（Lumbini）', '藍毗尼開發信託', '約前623 / 1997登錄', 89, 7, '藍毗尼開發信託', 'NP-ST-10', 'https://whc.unesco.org/en/list/666/', 'ne;en;pi', '藍毗尼為佛教創立者釋迦牟尼誕生地，1997年登錄UNESCO世界文化遺產，園區含瑪雅黛維神廟・阿育王石柱（前249年）・跋提亞古城遺址與僧院建築群，考古出土銘文與佛塔遺蹟為南亞佛教史之核心遺產', '藍毗尼;佛陀誕生地;世界文化遺產;阿育王石柱;佛教考古', '古代王朝（約前623起）', '尼泊爾（藍毗尼）', NULL, '阿育王石柱銘文', NULL, '藍毗尼開發信託（遺產管理）', '2026-08-27', 'ARR', '官方遺產管理機構，線上瀏覽', '已收錄 metadata', NULL, 'UNESCO世界遺產1997', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1426, '加德滿都谷地世界文化遺產（Kathmandu Valley）', '尼泊爾考古局', '約第5世紀–18世紀', 120, 7, '尼泊爾考古局', 'NP-ST-11', 'https://whc.unesco.org/en/list/121/', 'ne;new;en', '加德滿都谷地世界文化遺產由帕坦・巴克塔普爾・加德滿都三都杜巴廣場與帕舒帕提納寺・博達納特塔・斯瓦揚布納特塔等七處遺產點組成，舊宮殿・神廟・佛塔體現紐瓦建築與雕刻傳統，官網與UNESCO頁面提供考古與維護資料', '加德滿都谷地;世界文化遺產;杜巴廣場;紐瓦建築;神廟', '馬拉王朝（约5–18世紀）', '尼泊爾（加德滿都谷地）', NULL, '帕坦博物館;尼泊爾考古局', NULL, '尼泊爾考古局（遺產管理）', '2026-08-27', 'ARR', '官方遺產管理機構，線上瀏覽', '已收錄 metadata', NULL, 'UNESCO世界遺產1979', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1427, '尼泊爾考古局（Department of Archaeology）', '尼泊爾考古局', '1953–迄今', 89, 1, '尼泊爾考古局', 'NP-ST-12', 'https://doa.gov.np/', 'ne;en', '尼泊爾考古局主管國家古蹟・博物館・文物保護與世界遺產執行，官網刊布考古調查・遺產名錄・出土報告與博物館清單，為尼泊爾物質文化與遺產之官方主管機關', '尼泊爾;考古局;古蹟;文物保護;世界遺產', '古代王朝～尼泊爾共和（迄2026）', '尼泊爾全境', NULL, '加德滿都谷地世界文化遺產（Kathmandu Valley）', NULL, '尼泊爾考古局（官方主管）', '2026-08-27', 'ARR', '官方遺產主管機關，線上瀏覽', '已收錄 metadata', NULL, '尼泊爾世界遺產主管機關', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1428, '尼泊爾國家博物館（National Museum of Nepal）', '尼泊爾國家博物館', '1928–迄今', 89, 7, '尼泊爾國家博物館', 'NP-ST-13', 'https://nationalmuseum.gov.np/', 'ne;en', '尼泊爾國家博物館前身1928年成立，藏歷史時期雕塑・銅像・宗教法器・軍械與古錢幣，分歷史・佛教・自然三部陳列，為尼泊爾文物與藝術史之國家級典藏', '尼泊爾;國家博物館;雕塑;宗教文物;錢幣', '古代王朝～沙阿王朝（迄20世紀）', '尼泊爾（加德滿都）', NULL, '尼泊爾考古局', NULL, '尼泊爾國家博物館（原件典藏）', '2026-08-27', 'ARR', '官方博物館典藏，線上瀏覽', '已收錄 metadata', NULL, '含佛教雕刻與歷史文物', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1429, '廓爾喀報（Gorkhapatra）百年報檔', '《廓爾喀報 Gorkhapatra》', '1901–迄今', 122, 3, '廓爾喀報社', 'NP-ST-14', 'https://gorkhapatraonline.com/', 'ne;en', '《廓爾喀報》1901年創刊，為尼泊爾歷史最悠久之報紙，見證拉納時期至共和之政治社會變遷，官方網站提供當代報導與歷史專欄；早期版面為研究近代尼泊爾輿論與政治史之第一手史料', '廓爾喀報;尼泊爾;報紙;新聞史;拉納時期', '拉納時期～尼泊爾共和（1901–迄今）', '尼泊爾（加德滿都）', NULL, '尼泊爾國家圖書館', NULL, '廓爾喀報社（官方網站）', '2026-08-27', 'ARR', '官方報社，線上檢索', '已收錄 metadata', NULL, '尼泊爾最古老報紙', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1430, 'Digital Himalaya（數位喜馬拉雅）', '劍橋大學、耶魯大學等', '1998–迄今', 122, 5, 'Digital Himalaya', 'NP-ST-15', 'https://www.digitalhimalaya.com/', 'ne;en', '劍橋大學等學術機構合作營運之喜馬拉雅區域數位典藏計畫，蒐集尼泊爾・西藏・印度喜馬拉雅地區之民族誌影片・照片・地圖與民族音樂錄音，為研究尼泊爾社會文化之跨國學術數位庫', '喜馬拉雅;數位典藏;民族誌;照片;影音', '近代～當代（19–21世紀）', '尼泊爾・喜馬拉雅區域', NULL, '劍橋大學圖書館', NULL, 'Digital Himalaya（數位典藏）', '2026-08-27', 'ARR', '學術數位典藏，免費開放', '已收錄 metadata', NULL, '含人口普查資料與民族誌影片', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1431, '沙阿王朝・拉納時期官方文書選輯', '尼泊爾國家檔案館', '1768–1951', 121, 1, '尼泊爾國家檔案館', 'NP-ST-16', 'http://narchives.gov.np/', 'ne;sa;en', '尼泊爾國家檔案館所藏沙阿王朝（1768）統一立國至拉納王朝（1846–1951）之詔書・法令・戰爭與外交文書，記錄尼泊爾現代國家的形成與英屬印度關係，為近代尼泊爾政治史之官方第一手檔案', '尼泊爾;沙阿王朝;拉納時期;詔書;外交檔案', '沙阿王朝～拉納時期（1768–1951）', '尼泊爾（加德滿都）', NULL, '尼泊爾國家檔案館（National Archives of Nepal）', NULL, '尼泊爾國家檔案館（原件典藏）', '2026-08-27', 'ARR', '官方檔案館典藏，線上檢索', '已收錄 metadata', NULL, '沙阿統一與英尼關係檔案', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1432, '特里布萬大學中央圖書館（Central Library, TU）', '特里布萬大學', '1959–迄今', 123, 7, '特里布萬大學中央圖書館', 'NP-ST-17', 'https://tulibrary.tu.edu.np/', 'ne;en', '尼泊爾第一國立大學特里布萬大學之中央圖書館，為尼泊爾學術文獻最大典藏機構，藏學位論文・學術期刊・政府出版與南亞研究資料，為研究尼泊爾人文社會之學術書庫', '特里布萬大學;學術圖書館;論文;期刊;南亞研究', '尼泊爾共和（1959–迄今）', '尼泊爾（基爾蒂普爾）', NULL, '尼泊爾國家圖書館', NULL, '特里布萬大學中央圖書館（OPAC）', '2026-08-27', 'ARR', '大學圖書館典藏，線上檢索', '已收錄 metadata', NULL, '尼泊爾最大學術圖書館', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1433, '尼泊爾口述歷史與社會記憶計畫', '尼泊爾各學術機構', '迄今', 123, 9, '尼泊爾口述歷史計畫', 'NP-ST-18', 'https://www.archivenepal.org/', 'ne;new;en', '尼泊爾各界推動之口述歷史與社會記憶蒐集，記錄拉納時期親歷者・1980與1990年代民主運動・內戰（1996–2006）世代之生命經驗與鄉村社會變遷，相關訪談影音陸續公開於數位平台', '尼泊爾;口述歷史;民主運動;內戰;社會記憶', '尼泊爾共和（20–21世紀）', '尼泊爾全境', NULL, 'Archives Nepal 歷史文獻平台', NULL, '尼泊爾口述歷史計畫（數位庫）', '2026-08-27', 'ARR', '訪談影音，陸續開放', '已收錄 metadata', NULL, '含1996–2006內戰世代口述', 'SA') ON CONFLICT (id) DO NOTHING;

SELECT setval('sources_id_seq', 1433) WHERE NOT EXISTS (SELECT 1 FROM sources WHERE id = 1433);
SELECT setval('sources_id_seq', (SELECT COALESCE(MAX(id), 0) FROM sources));

-- === 3. 史料←→資料類型 ===
INSERT INTO source_materials (source_id, material_type_id) VALUES
  (1416, 1),
  (1416, 2),
  (1417, 1),
  (1417, 2),
  (1418, 2),
  (1419, 1),
  (1420, 1),
  (1420, 2),
  (1421, 1),
  (1421, 2),
  (1422, 1),
  (1422, 2),
  (1422, 4),
  (1423, 1),
  (1423, 2),
  (1424, 1),
  (1425, 1),
  (1425, 2),
  (1426, 1),
  (1426, 2),
  (1426, 3),
  (1427, 1),
  (1427, 2),
  (1428, 1),
  (1428, 2),
  (1429, 1),
  (1429, 2),
  (1430, 1),
  (1430, 2),
  (1430, 4),
  (1431, 1),
  (1432, 1),
  (1432, 2),
  (1433, 4),
  (1433, 1)
ON CONFLICT DO NOTHING;

-- === 4. 史料←→來源機構 ===
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (1416, 431, 'source'),
  (1416, 431, 'contributor'),
  (1417, 434, 'source'),
  (1417, 434, 'contributor'),
  (1418, 434, 'source'),
  (1418, 434, 'contributor'),
  (1419, 429, 'source'),
  (1419, 429, 'contributor'),
  (1420, 430, 'source'),
  (1420, 430, 'contributor'),
  (1421, 433, 'source'),
  (1421, 433, 'contributor'),
  (1422, 423, 'source'),
  (1422, 423, 'contributor'),
  (1423, 427, 'source'),
  (1423, 427, 'contributor'),
  (1424, 427, 'source'),
  (1424, 427, 'contributor'),
  (1425, 436, 'source'),
  (1425, 436, 'contributor'),
  (1426, 426, 'source'),
  (1426, 426, 'contributor'),
  (1427, 426, 'source'),
  (1427, 426, 'contributor'),
  (1428, 428, 'source'),
  (1428, 428, 'contributor'),
  (1429, 435, 'source'),
  (1429, 435, 'contributor'),
  (1430, 424, 'source'),
  (1430, 424, 'contributor'),
  (1431, 431, 'source'),
  (1431, 431, 'contributor'),
  (1432, 432, 'source'),
  (1432, 432, 'contributor'),
  (1433, 425, 'source'),
  (1433, 425, 'contributor')
ON CONFLICT DO NOTHING;

-- === 完成 ===
