-- ============================================================
-- 東亞歷史權威史料庫 — 東南亞補充史料匯入 SQL（增量模式）
-- 由 Import-SEAExtraToSupabase.ps1 v1 自動產生
-- ============================================================

-- === 0. 補充國家時期（僅首次執行） ===
INSERT INTO periods (id, code, name_zh, start_year, end_year, sort_order, region) OVERRIDING SYSTEM VALUE VALUES
  (64, 'kh-cambodia', '柬埔寨（吳哥王朝～近代）', 802, 1953, 67, 'SEA'),
  (65, 'la-laos', '寮國（瀾滄王國～近代）', 1353, 1975, 68, 'SEA'),
  (66, 'my-malaysia', '馬來西亞（馬六甲蘇丹國～獨立）', 1400, 1957, 69, 'SEA'),
  (67, 'sg-singapore', '新加坡（開埠～獨立）', 1819, 1965, 70, 'SEA')
ON CONFLICT (id) DO NOTHING;

-- === 1. 來源機構（僅新增者） ===
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (323, 'APSARA吳哥遺址管理局') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (324, '吐斯廉屠殺博物館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (325, '佛教數位資源中心') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (326, '柬埔寨國家檔案館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (327, '馬來西亞文化部文物局') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (328, '馬來西亞國家圖書館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (329, '馬來西亞國家檔案館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (330, '琅勃拉邦皇宮國家博物館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (331, '新加坡國家圖書館委員會') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (332, '新加坡國家檔案館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (333, '寮國國家圖書館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (334, '寮國資訊文化旅遊部') ON CONFLICT (name_zh) DO NOTHING;

SELECT setval('institutions_id_seq', 334);

-- === 2. 主要史料 ===
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1257, '吳哥窟與吳哥王朝遺址群', '吳哥王朝（蘇耶跋摩二世等）', '12世紀（1113–1150）', 64, 7, 'APSARA吳哥遺址管理局', 'KH-ST-01', 'https://apsaraauthority.gov.kh/', 'km;en', '吳哥窟建於12世紀初蘇耶跋摩二世（Suryavarman II）在位期間，為吳哥王朝最宏偉之寺山建築，佔地約400平方公里之吳哥考古公園含9–15世紀歷代都城（吳哥城・巴戎寺・塔普倫・寶劍寺等），1992年登錄UNESCO世界文化遺產；APSARA吳哥遺址管理局（1995成立）負責保護管理，為研究東南亞水利城市・王權宗教與高棉文明之核心考古遺產', '吳哥窟;吳哥王朝;高棉文明;世界遺產;考古', '柬埔寨（吳哥王朝～近代）', '柬埔寨（暹粒）', NULL, 'Preah Khan碑文（K.908）;巴戎寺;吐斯廉屠殺博物館檔案', NULL, 'APSARA吳哥遺址管理局（數位典藏）', '2026-08-01', 'ARR', '官方管理機構典藏，線上瀏覽', '已收錄 metadata', NULL, '高棉文明核心考古遺產', 'SEA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1258, 'Preah Khan（寶劍寺）碑文 K.908', '闍耶跋摩七世（Jayavarman VII）', '1191（薩卡曆1113）', 64, 8, 'APSARA吳哥遺址管理局', 'KH-ST-02', 'https://apsaraauthority.gov.kh/', 'sa;km', '寶劍寺四面石碑（高223公分），1939年莫里斯・格萊澤於修復寶劍寺時發現，以梵文寫成179頌，記錄闍耶跋摩七世身世・戰功・興建寶劍寺／涅槃水池（Neak Poan）之緣由及各寺供養人・村落・道路・121座驛站等制度，為吳哥王朝宗教與行政制度最重要之碑銘，今存暹粒吳哥國家博物館', 'Preah Khan碑;闍耶跋摩七世;梵文碑銘;吳哥碑刻;高棉碑銘學', '柬埔寨（吳哥王朝～近代）', '柬埔寨（暹粒・吳哥考古公園）', NULL, '吳哥窟與吳哥王朝遺址群;巴戎寺', NULL, 'APSARA吳哥遺址管理局（碑銘研究）', '2026-08-01', 'ARR', '官方管理機構研究典藏，線上瀏覽', '已收錄 metadata', NULL, '吳哥王朝碑銘學代表', 'SEA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1259, '吐斯廉屠殺博物館檔案（S-21）', '民主柬埔寨（赤柬）時期', '1975–1979', 64, 1, '吐斯廉屠殺博物館', 'KH-ST-03', 'https://archives.tuolsleng.gov.kh/', 'km;en', '前S-21監獄與刑訊中心檔案，含5,000多名囚犯照片・約4,186份供詞・6,226份囚犯與幹部檔案・赤柬筆記與《革命旗》雜誌等逾6萬件文書，2009年登錄UNESCO世界記憶遺產；2020年獲UNESCO/Jikji世界記憶獎，2021年數位資料庫公開上線，為赤柬暴行最重要之證據與和平教育典藏', '吐斯廉;S-21;赤柬;種族滅絕;UNESCO世界記憶', '柬埔寨（吳哥王朝～近代）', '柬埔寨（金邊）', NULL, '吳哥窟與吳哥王朝遺址群;柬埔寨國家檔案館', NULL, '吐斯廉屠殺博物館（數位資料庫）', '2026-08-01', 'ARR', '世界記憶遺產，數位資料庫公開', '已收錄 metadata', NULL, '赤柬暴行證據檔案', 'SEA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1260, '柬埔寨國家檔案館法屬殖民檔案', '法屬印度支那殖民政府／柬埔寨政府', '1863–1954', 64, 1, '柬埔寨國家檔案館', 'KH-ST-04', 'https://nac.gov.kh/', 'fr;km', '柬埔寨國家檔案館（1921年創立，1995年重建）保存政府各部門檔案共2,145公尺線性長度・14個全宗，含法屬殖民時期（1863–1954）高級駐員（Résidence Supérieure）行政檔案・官方公報《Journal Officiel du Cambodge》・報刊・地圖與約9,000張已數位化照片，為研究柬法殖民治理與柬埔寨近代國家形成之核心檔案庫', '柬埔寨國家檔案館;法屬印度支那;殖民檔案;官方公報;近代國家', '柬埔寨（吳哥王朝～近代）', '柬埔寨（金邊）', NULL, '吐斯廉屠殺博物館檔案;法屬印度支那總督府', NULL, '柬埔寨國家檔案館（數位化）', '2026-08-01', 'ARR', '官方檔案館典藏，需申請閱覽', '已收錄 metadata', NULL, '柬國近代國家檔案庫', 'SEA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1261, '高棉手稿遺產計畫（Khmer Manuscript Heritage Project）', '柬埔寨佛教文獻（高棉貝葉經）', '16世紀–現代', 64, 7, '佛教數位資源中心（BDRC）', 'KH-ST-05', 'https://khmer-manuscripts.bdrc.io/', 'km;pi', '佛教數位資源中心（BDRC）2019年發起之高棉手稿數位化計畫，兩年半內與柬國多個機構合作，於金邊及周邊省份寺院圖書館蒐集並數位化1,456,341頁高棉貝葉經與紙本文獻，含巴利文與高棉文經藏・史傳・醫典・律法文書等，為現存柬埔寨傳統文獻之最大數位典藏並免費開放，反映上座部佛教文化圈之高棉手稿傳統', '高棉手稿;貝葉經;佛教文獻;BDRC;文獻數位化', '柬埔寨（吳哥王朝～近代）', '柬埔寨（金邊及各省寺院）', NULL, '寮國手稿數位圖書館;吳哥窟與吳哥王朝遺址群', NULL, '佛教數位資源中心（數位典藏）', '2026-08-01', 'ARR', '非營利數位典藏，免費開放', '已收錄 metadata', NULL, '高棉貝葉經最大數位典藏', 'SEA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1262, '寮國手稿數位圖書館（DLLM）', '寮國國家圖書館等', '15/16世紀–現代', 65, 7, '寮國國家圖書館', 'LA-ST-01', 'https://digital.crossasia.org/digital-library-of-lao-manuscripts/?lang=en', 'lo;pi;en', '寮國國家圖書館與德國帕紹大學・柏林國家圖書館合作之數位圖書館，收錄近12,000件寮國貝葉經與構皮紙手稿（約50萬幀影像・300–400萬頁），絕大多數為巴利–寮文雙語上座部佛教文獻，涵蓋史傳・律法・醫藥・文學・曆算等，兼收Lao Tham・Lan Na・Tai Lue等文字，為東南亞線上開放最完整之國家級手稿文獻庫', '寮國手稿;貝葉經;DLLM;佛教文獻;文獻數位化', '寮國（瀾滄王國～近代）', '寮國全國（永珍・琅勃拉邦・占巴塞等）', NULL, '高棉手稿遺產計畫;香通寺;琅勃拉邦古城', NULL, '寮國國家圖書館（DLLM數位典藏）', '2026-08-01', 'ARR', '國家圖書館合作計畫，免費開放', '已收錄 metadata', NULL, '寮國國家文獻庫', 'SEA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1263, '琅勃拉邦古城（世界遺產）', '瀾滄王國（法昂王等）', '1353–現代', 65, 7, '寮國資訊文化旅遊部', 'LA-ST-02', 'https://whc.unesco.org/en/list/479/', 'en;fr', '瀾滄王國（1353年法昂王建國）舊都琅勃拉邦，1995年以「琅勃拉邦鎮」登錄UNESCO世界文化遺產，完整保留王城・佛寺・民居與法屬殖民建築交融之城市景觀；香通寺等33座寺院與皇宮構成上座部佛教文化與泰老族系城市傳統之代表，為寮國歷史與文化之縮影', '琅勃拉邦;世界遺產;瀾滄王國;佛教城市;文化景觀', '寮國（瀾滄王國～近代）', '寮國（琅勃拉邦）', NULL, '香通寺;寮國手稿數位圖書館;皇宮國家博物館', NULL, '寮國資訊文化旅遊部（世界遺產管理）', '2026-08-01', 'ARR', '世界文化遺產，官方管理單位典藏', '已收錄 metadata', NULL, '寮國世界文化遺產城市', 'SEA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1264, '香通寺（Wat Xieng Thong）', '塞塔提拉王（Setthathirath）', '1560', 65, 7, '寮國資訊文化旅遊部', 'LA-ST-03', 'https://www.laostourism.org/', 'lo;en', '琅勃拉邦香通寺建於1560年塞塔提拉王在位期間，以斜倚的蓮花柱廊・「生命之樹」鑲嵌壁畫著稱，為寮國最具代表性之王室佛寺與上座部佛教象徵；與琅勃拉邦皇宮國家博物館相鄰，寺藏寮文貝葉經與文物由寺院與官方共同保存，為寮國宗教建築與儀式傳統之核心標本', '香通寺;琅勃拉邦;上座部佛教;寺廟建築;王室佛寺', '寮國（瀾滄王國～近代）', '寮國（琅勃拉邦）', NULL, '琅勃拉邦古城;寮國手稿數位圖書館', NULL, '寮國資訊文化旅遊部（典藏）', '2026-08-01', 'ARR', '官方管理單位，線上瀏覽', '已收錄 metadata', NULL, '寮國王室佛寺代表', 'SEA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1265, '琅勃拉邦皇宮國家博物館（Haw Kham）', '西薩旺馮國王（Sisavang Vong）', '1904', 65, 1, '寮國資訊文化旅遊部', 'LA-ST-04', 'https://www.laostourism.org/', 'lo;fr;en', '琅勃拉邦皇宮（Haw Kham，意「金殿」）1904年法屬殖民時期為西薩旺馮國王興建，1975年王室制度廢除後改設國家博物館；館藏國王寶座・王室儀仗・各國致贈禮品及王室典藏之寮文貝葉經與歷史照片，反映寮國君主制時代至社會主義共和國之政權轉型，為寮國王室物質文化之核心典藏', '皇宮國家博物館;琅勃拉邦;王室制度;法屬殖民建築;博物館', '寮國（瀾滄王國～近代）', '寮國（琅勃拉邦）', NULL, '琅勃拉邦古城;香通寺', NULL, '琅勃拉邦皇宮國家博物館（數位典藏）', '2026-08-01', 'ARR', '官方博物館典藏，線上瀏覽', '已收錄 metadata', NULL, '寮國王室典藏中心', 'SEA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1266, '馬來紀年（Sejarah Melayu／Sulalatus Salatin）', '馬六甲蘇丹國宮廷史官', '1612（柔佛蘇丹國）', 66, 7, '馬來西亞國家圖書館', 'MY-ST-01', 'https://www.pnm.gov.my/manuskrip/melayu/03koleksi/302_hikayat.htm', 'ms;ja', '《馬來紀年》又稱《諸王世系》，1612年柔佛王朝史官奉蘇丹阿拉烏丁三世之命纂修，記馬六甲蘇丹國（約1400–1511）開國（三佛齊王子拜里米蘇拉）至衰亡之宮廷史事，為馬來史學之鼻祖與馬六甲蘇丹國唯一詳實之歷史文獻，2001年登錄UNESCO世界記憶遺產，藏本今存馬來西亞國家圖書館', '馬來紀年;Sejarah Melayu;馬六甲蘇丹國;馬來史學;UNESCO世界記憶', '馬來西亞（馬六甲蘇丹國～獨立）', '馬來半島（馬六甲・柔佛）', NULL, '漢都亞傳奇;帕尼傳奇', NULL, '馬來西亞國家圖書館（手稿數位典藏）', '2026-08-01', 'ARR', '世界記憶遺產，國家圖書館典藏', '已收錄 metadata', NULL, '馬來史學鼻祖', 'SEA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1267, '漢都亞傳奇（Hikayat Hang Tuah）', '馬來宮廷史官（佚名）', '17–18世紀', 66, 7, '馬來西亞國家圖書館', 'MY-ST-02', 'https://www.pnm.gov.my/manuskrip/melayu/03koleksi/302_hikayat.htm', 'ms;ja', '《漢都亞傳奇》為馬來古典文學史詩，記馬六甲蘇丹國15世紀全盛時期傳奇英雄漢都亞（Hang Tuah）與其四友之忠義事蹟，2001年登錄UNESCO世界記憶遺產；馬來西亞國家圖書館藏MSS 1658與MSS 1713兩抄本，書於約200年前之歐洲紙上，象徵馬六甲蘇丹國之榮光與馬來忠君倫理，為馬來世界流傳最廣之史詩', '漢都亞;Hikayat Hang Tuah;馬來史詩;馬六甲蘇丹國;UNESCO世界記憶', '馬來西亞（馬六甲蘇丹國～獨立）', '馬來半島（馬六甲）', NULL, '馬來紀年;帕尼傳奇', NULL, '馬來西亞國家圖書館（手稿數位典藏）', '2026-08-01', 'ARR', '世界記憶遺產，國家圖書館典藏', '已收錄 metadata', NULL, '馬來史詩代表', 'SEA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1268, '帕尼傳奇（Cerita Panji）抄本', '爪哇・馬來宮廷文學傳統', '13–16世紀', 66, 7, '馬來西亞國家圖書館', 'MY-ST-03', 'https://www.pnm.gov.my/manuskrip/melayu/03koleksi/302_hikayat.htm', 'ms;ja', '帕尼傳奇為爪哇–馬來文學圈流傳之王室愛情史詩（伊努與嘉露公主），2017年五部抄本登錄UNESCO世界記憶遺產，由馬來西亞國家圖書館典藏，反映帕尼傳統自爪哇東傳馬來世界的跨海文學傳播，為東南亞文學「帕尼傳奇圈」之核心文獻', '帕尼傳奇;Cerita Panji;爪哇文學;馬來文學;UNESCO世界記憶', '馬來西亞（馬六甲蘇丹國～獨立）', '馬來半島・爪哇', NULL, '漢都亞傳奇;馬來紀年', NULL, '馬來西亞國家圖書館（手稿數位典藏）', '2026-08-01', 'ARR', '世界記憶遺產，國家圖書館典藏', '已收錄 metadata', NULL, '帕尼傳奇圈核心文獻', 'SEA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1269, '丁加奴石碑（Terengganu Inscription Stone）', '登嘉樓蘇丹國（未識名君主）', '1303', 66, 8, '馬來西亞文化部文物局', 'MY-ST-04', 'https://heritage.gov.my/en/', 'ms;ar', '1902年於丁加奴河畔發現之四面玄武岩石碑（高約85公分），以阿拉伯字母拼寫之最古老爪夷文（Jawi）馬來語碑銘刻成，內容為伊斯蘭律法與十誡令，1303年為回曆702年，為伊斯蘭教東傳馬來世界與馬來文字史之最重要物證，今存登嘉樓州立博物館', '丁加奴石碑;爪夷文;伊斯蘭化;碑銘;馬來文字史', '馬來西亞（馬六甲蘇丹國～獨立）', '馬來半島東岸（登嘉樓）', NULL, '馬來紀年;馬六甲蘇丹國', NULL, '馬來西亞文化部文物局（研究典藏）', '2026-08-01', 'ARR', '官方文物機構典藏，線上瀏覽', '已收錄 metadata', NULL, '最早爪夷文碑銘', 'SEA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1270, '馬來西亞國家檔案館數位典藏（OFA）', '馬來西亞國家檔案館', '1600–現代', 66, 1, '馬來西亞國家檔案館', 'MY-ST-05', 'https://ofa.arkib.gov.my/ofa/', 'ms;en', '馬來西亞國家檔案館線上檢索（OFA）收錄逾29萬筆數位文檔，涵蓋1600年起之皇家檔案・聯邦與州政府檔案・殖民時期紀錄（含海峽殖民地・馬來聯邦）・私人文書・照片・地圖・影片與報刊，含1948–1960緊急狀態與1957獨立運動等重大史料，為馬來西亞國家記憶之線上主庫', '馬來西亞國家檔案館;OFA;殖民檔案;獨立運動;數位典藏', '馬來西亞（馬六甲蘇丹國～獨立）', '馬來西亞全國（吉隆坡・各州）', NULL, '馬來西亞獨立宣言檔案;馬來紀年', NULL, '馬來西亞國家檔案館（數位典藏）', '2026-08-01', 'ARR', '官方檔案館典藏，線上瀏覽', '已收錄 metadata', NULL, '馬來西亞國家記憶主庫', 'SEA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1271, '馬來亞聯合邦獨立宣言檔案（1957）', '東姑阿都拉曼（Tunku Abdul Rahman）', '1957', 66, 1, '馬來西亞國家檔案館', 'MY-ST-06', 'https://www.arkib.gov.my/en/', 'ms;en', '1957年8月31日東姑阿都拉曼於吉隆坡默迪卡體育場宣讀馬來亞聯合邦獨立宣言，結束英國殖民統治；馬來西亞國家檔案館保存宣言原件・簽署文件・獨立慶典影片與照片，為馬來西亞建國之國家記憶核心檔案，並延伸至1963年馬來西亞聯邦成立史料', '馬來亞獨立;東姑阿都拉曼;1957;建國檔案;默迪卡', '馬來西亞（馬六甲蘇丹國～獨立）', '馬來西亞（吉隆坡）', NULL, '馬來西亞國家檔案館數位典藏（OFA）', NULL, '馬來西亞國家檔案館（數位典藏）', '2026-08-01', 'ARR', '官方檔案館典藏，線上瀏覽', '已收錄 metadata', NULL, '馬來西亞建國核心檔案', 'SEA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1272, '海峽殖民地檔案（Straits Settlements Records）', '英屬海峽殖民地政府', '1800–1946', 67, 1, '新加坡國家檔案館', 'SG-ST-01', 'https://www.nas.gov.sg/archivesonline/private_records', 'en', '英屬海峽殖民地（新加坡・檳榔嶼・馬六甲）殖民政府檔案，含1800年起170卷手寫紀錄，1867年改制直轄殖民地後之行政文書與法院・海關・土地等紀錄，1938年移交萊佛士博物館圖書館典藏，今由新加坡國家檔案館保存並於Archives Online公開檢索，為新加坡建國前殖民治理之最完整檔案', '海峽殖民地;英國殖民;新加坡史;檔案;殖民地行政', '新加坡（開埠～獨立）', '新加坡・檳榔嶼・馬六甲', NULL, '新加坡口述歷史中心;新加坡國家圖書館報刊數位典藏', NULL, '新加坡國家檔案館（數位典藏）', '2026-08-01', 'ARR', '官方檔案館典藏，線上檢索', '已收錄 metadata', NULL, '新加坡殖民治理檔案庫', 'SEA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1273, '新加坡口述歷史中心', '新加坡口述歷史中心（1979成立）', '1979–現代', 67, 9, '新加坡國家檔案館', 'SG-ST-02', 'https://www.nas.gov.sg/archivesonline/oral_history_interviews', 'en;zh;ms;ta', '1979年成立之國家口述歷史計畫，以官方檔案未載之平民視角補足新加坡史，收錄逾萬件訪談（含二戰日佔・獨立建國・移民・行業工匠・文化社群等專題），以英文・華語・馬來語・淡米爾語錄製並逐字稿公開，為東南亞規模最大之國家口述歷史檔案庫之一', '口述歷史;新加坡史;日佔時期;移民;口述訪談', '新加坡（開埠～獨立）', '新加坡', NULL, '海峽殖民地檔案;新加坡獨立史料', NULL, '新加坡國家檔案館（口述歷史中心）', '2026-08-01', 'ARR', '官方檔案館典藏，線上收聽', '已收錄 metadata', NULL, '東南亞大型口述檔案庫', 'SEA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1274, '新加坡照片檔案（PICAS／Archives Online 照片庫）', '新加坡國家檔案館／公私收藏', '1819–現代', 67, 5, '新加坡國家檔案館', 'SG-ST-03', 'https://www.nas.gov.sg/archivesonline/', 'en', '新加坡國家檔案館1998年起建置之照片數位典藏（PICAS），今整合於Archives Online照片庫，收錄自1819年開埠以來之城市街景・港口貿易・各族群生活・日佔時期・獨立建國與重大事件影像逾百萬筆，為新加坡視覺史之最完整線上圖庫', '新加坡照片;PICAS;影像史料;城市變遷;視覺史', '新加坡（開埠～獨立）', '新加坡', NULL, '海峽殖民地檔案;新加坡國家圖書館報刊數位典藏', NULL, '新加坡國家檔案館（照片數位典藏）', '2026-08-01', 'ARR', '官方檔案館典藏，線上瀏覽', '已收錄 metadata', NULL, '新加坡視覺史圖庫', 'SEA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1275, '新加坡影音與聲音紀錄（Audiovisual Records）', '新加坡國家檔案館', '1920年代–現代', 67, 5, '新加坡國家檔案館', 'SG-ST-04', 'https://www.nas.gov.sg/archivesonline/audiovisual_records', 'en;zh;ms;ta', '新加坡國家檔案館影音與聲音典藏，收錄早期影片・新聞片・政府紀錄片・演講與廣播錄音（含戰後政治集會・獨立慶典・民歌與戲曲錄音等），並含1965年建國以來歷任總理演說與重要儀典影音，為新加坡20世紀影音史之核心典藏', '新加坡影音;新聞片;演講;廣播;影音史料', '新加坡（開埠～獨立）', '新加坡', NULL, '新加坡口述歷史中心;新加坡獨立史料', NULL, '新加坡國家檔案館（影音典藏）', '2026-08-01', 'ARR', '官方檔案館典藏，線上觀賞', '已收錄 metadata', NULL, '新加坡影音史核心典藏', 'SEA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1276, '新加坡國家圖書館報刊數位典藏（NewspaperSG）', '新加坡國家圖書館委員會', '1827–2009', 67, 3, '新加坡國家圖書館委員會', 'SG-ST-05', 'https://www.nlb.gov.sg/', 'en;zh;ms;ta', '新加坡國家圖書館委員會建置之報刊數位典藏（NewspaperSG），收錄1827年《新加坡紀事報》（Singapore Chronicle）起之英・華・馬來・淡米爾文報刊（含《叻報》等華文報）逾百萬版，涵蓋殖民時期至獨立後之社會・經濟・文化紀錄，為新加坡與東南亞華僑史研究之重要報刊史料庫', '新加坡報刊;NewspaperSG;華文報;新加坡紀事報;報刊史料', '新加坡（開埠～獨立）', '新加坡', NULL, '海峽殖民地檔案;新加坡照片檔案', NULL, '新加坡國家圖書館委員會（數位典藏）', '2026-08-01', 'ARR', '官方圖書館數位典藏，線上瀏覽', '已收錄 metadata', NULL, '新加坡報刊史料庫', 'SEA') ON CONFLICT (id) DO NOTHING;

SELECT setval('sources_id_seq', 1276) WHERE NOT EXISTS (SELECT 1 FROM sources WHERE id = 1276);
SELECT setval('sources_id_seq', (SELECT COALESCE(MAX(id), 0) FROM sources));

-- === 3. 史料←→資料類型 ===
INSERT INTO source_materials (source_id, material_type_id) VALUES
  (1257, 2),
  (1258, 2),
  (1259, 2),
  (1260, 1),
  (1261, 2),
  (1262, 2),
  (1263, 2),
  (1264, 2),
  (1265, 2),
  (1266, 1),
  (1267, 2),
  (1268, 2),
  (1269, 2),
  (1270, 2),
  (1271, 4),
  (1272, 1),
  (1273, 4),
  (1274, 2),
  (1275, 4),
  (1276, 1)
ON CONFLICT DO NOTHING;

-- === 4. 史料←→來源機構 ===
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (1257, 323, 'source'),
  (1257, 323, 'contributor'),
  (1258, 323, 'source'),
  (1258, 323, 'contributor'),
  (1259, 324, 'source'),
  (1259, 324, 'contributor'),
  (1260, 326, 'source'),
  (1260, 326, 'contributor'),
  (1261, 325, 'source'),
  (1261, 325, 'contributor'),
  (1262, 333, 'source'),
  (1262, 333, 'contributor'),
  (1263, 334, 'source'),
  (1263, 334, 'contributor'),
  (1264, 334, 'source'),
  (1264, 334, 'contributor'),
  (1265, 334, 'source'),
  (1265, 330, 'contributor'),
  (1266, 328, 'source'),
  (1266, 328, 'contributor'),
  (1267, 328, 'source'),
  (1267, 328, 'contributor'),
  (1268, 328, 'source'),
  (1268, 328, 'contributor'),
  (1269, 327, 'source'),
  (1269, 327, 'contributor'),
  (1270, 329, 'source'),
  (1270, 329, 'contributor'),
  (1271, 329, 'source'),
  (1271, 329, 'contributor'),
  (1272, 332, 'source'),
  (1272, 332, 'contributor'),
  (1273, 332, 'source'),
  (1273, 332, 'contributor'),
  (1274, 332, 'source'),
  (1274, 332, 'contributor'),
  (1275, 332, 'source'),
  (1275, 332, 'contributor'),
  (1276, 331, 'source'),
  (1276, 331, 'contributor')
ON CONFLICT DO NOTHING;

-- === 完成 ===
