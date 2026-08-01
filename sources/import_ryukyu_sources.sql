-- ============================================================
-- 東亞歷史權威史料庫 — 琉球史料匯入 SQL（增量模式）
-- 由 Import-RyukyuToSupabase.ps1 v1 自動產生
-- ============================================================

-- === 0. 琉球時期（僅首次執行） ===
INSERT INTO periods (id, code, name_zh, start_year, end_year, sort_order, region) OVERRIDING SYSTEM VALUE VALUES
  (33, 'ryu-sanzan', '古琉球・三山時代（～1429）', NULL, 1429, 36, 'RY'),
  (34, 'ryu-shoshou', '第一尚氏王朝（1429–1469）', 1429, 1469, 37, 'RY'),
  (35, 'ryu-nishou', '第二尚氏王朝（1469–1879）', 1469, 1879, 38, 'RY'),
  (36, 'oki-prefecture', '沖繩縣・日本統治（1879–1945）', 1879, 1945, 39, 'RY'),
  (37, 'oki-us', '琉球政府・美治時期（1945–1972）', 1945, 1972, 40, 'RY'),
  (38, 'oki-post-reversion', '沖繩返還後（1972–迄今）', 1972, NULL, 41, 'RY')
ON CONFLICT (id) DO NOTHING;

-- === 1. 來源機構（僅新增者） ===
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (272, 'ひめゆり平和祈念資料館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (273, '日本政府') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (274, '沖繩縣公文書館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (275, '沖繩縣史編集委員會') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (276, '沖繩縣平和祈念資料館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (277, '沖繩縣立博物館・美術館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (278, '沖繩縣立圖書館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (279, '沖繩縣教育委員會') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (280, '沖繩縣廳') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (281, '那霸市歷史博物館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (282, '明治政府') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (283, '美國民政府琉球列島司令部') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (284, '美國空軍') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (285, '美國國家檔案館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (286, '首里城跡發掘調查會') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (287, '琉球政府') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (288, '國立公文書館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (289, '國立國會圖書館') ON CONFLICT (name_zh) DO NOTHING;

SELECT setval('institutions_id_seq', 289);

-- === 2. 主要史料 ===
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1107, '歷代寶案（校訂本・譯注本）', '久米村士族（蔡鐸等）', '古琉球時期（1424–1867）', 33, 1, '沖繩縣教育委員會（琉球王國交流史デジタルアーカイブ）', 'RY-ST-01', 'https://ryuoki-archive.jp/', 'zh', '琉球王國與中國（明・清）、朝鮮、東南亞諸國往來之外交文書集，1424年（永樂22）至1867年（同治6）凡444年，約4230件，全為漢文；原本已佚，沖繩縣教育委員會以寫本・影印本復元，校訂本・譯注本各15冊全文數位公開，為琉球史暨東亞交流史第一級史料', '歷代寶案;外交文書;朝貢;冊封;琉球王國', '古琉球時期（1424–1867）', '琉球王國全境（含中國・朝鮮・東南亞往來）', NULL, '中山傳信錄;琉球王國評定所文書', '久米村士族', '沖繩縣教育委員會（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '原二部（首里城本・久米村本）皆佚於災厄，現存僅寫本・影印本', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1108, '中山傳信錄', '徐葆光（清冊封副使）', '第二尚氏王朝（1719）', 35, 7, '沖繩縣立圖書館;國立國會圖書館', 'RY-ST-02', 'https://www.ndl.go.jp/', 'zh', '清康熙五十八年（1719）冊封副使徐葆光所撰使錄，詳記琉球地理、制度、風俗、禮儀與中琉關係，附琉球地圖與宮室圖，為清代冊封琉球之最重要傳世文獻', '中山傳信錄;冊封使;中琉關係;琉球風俗', '第二尚氏王朝（1719）', '琉球王國', NULL, '歷代寶案;使琉球錄', '徐葆光（清）', '國立國會圖書館（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '冊封使錄之集大成', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1109, '琉球國志略', '周煌（清冊封副使）', '第二尚氏王朝（1759）', 35, 7, '國立國會圖書館;沖繩縣立圖書館', 'RY-ST-03', 'https://www.ndl.go.jp/', 'zh', '清乾隆二十一年（1756）冊封副使周煌奉使後所纂，仿史志體例分十六卷，綜括琉球沿革、星野、形勝、物產、風俗、藝文等，為清代後期記述琉球最詳備之志書', '琉球國志略;冊封使;中琉關係;琉球志書', '第二尚氏王朝（1759）', '琉球王國', NULL, '中山傳信錄;歷代寶案', '周煌（清）', '國立國會圖書館（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '清修琉球志書之集大成', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1110, '使琉球錄（陳侃本）', '陳侃（明冊封使）', '第一尚氏王朝（1534）', 34, 7, '國立國會圖書館;那霸市歷史博物館', 'RY-ST-04', 'https://www.ndl.go.jp/', 'zh', '明嘉靖十三年（1534）冊封使陳侃所撰使錄，記航海經歷、琉球形勢與冊封禮儀，為現存最早之明代使琉球錄，乃研究明琉關係與古琉球社會之基礎文獻', '使琉球錄;冊封使;明琉關係;航海', '第一尚氏王朝（1534）', '琉球王國', NULL, '中山傳信錄;歷代寶案', '陳侃（明）', '國立國會圖書館（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '明代使琉球錄之始', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1111, '琉球王國評定所文書', '首里王府（評定所）', '第二尚氏王朝（1600年代–1879）', 35, 1, '沖繩縣教育委員會（琉球王國交流史デジタルアーカイブ）', 'RY-ST-05', 'https://ryuoki-archive.jp/', 'ja', '琉球王國最高行政機關評定所之文書，凡數十冊，收錄王國政務、人事、法令與對內對外往來文書，為理解王國行政運作之核心檔案', '評定所;王府;行政文書;琉球王國', '第二尚氏王朝（1600年代–1879）', '琉球王國', NULL, '歷代寶案;首里王府仕置', '首里王府', '沖繩縣教育委員會（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '王國最高行政機關檔案', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1112, '首里王府仕置', '首里王府', '第二尚氏王朝（17–19世紀）', 35, 1, '沖繩縣教育委員會（琉球王國交流史デジタルアーカイブ）', 'RY-ST-06', 'https://ryuoki-archive.jp/', 'ja', '首里王府頒布之政令・布達文書（仕置），含行政制度、租稅、風俗禁令等規定，為研究王國統治體制與社會規範之官方檔案', '仕置;王府布達;政令;琉球王國', '第二尚氏王朝（17–19世紀）', '琉球王國', NULL, '琉球王國評定所文書', '首里王府', '沖繩縣教育委員會（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '王國政令布達文書', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1113, '琉球王國之土地制度史料（地割・檢地）', '首里王府;薩摩藩', '第二尚氏王朝（1609–1879）', 35, 10, '沖繩縣教育委員會（琉球王國交流史デジタルアーカイブ）', 'RY-ST-07', 'https://ryuoki-archive.jp/', 'ja', '琉球王國之土地制度文書，含地割制、賦稅、徭役等相關檔案，薩摩支配時代（1609年起）之檢地與經濟紀錄亦收錄其中，為研究王國經濟基礎與幕藩支配之重要史料', '土地制度;地割;檢地;租稅;薩摩藩', '第二尚氏王朝（1609–1879）', '琉球王國', NULL, '琉球王國評定所文書;歷代寶案', '首里王府', '沖繩縣教育委員會（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '王國土地經濟制度史料', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1114, '球陽', '鄭秉哲等（王府史官）', '第二尚氏王朝（1743–1879）', 35, 1, '沖繩縣立圖書館;那霸市歷史博物館', 'RY-ST-08', 'https://www.rekishi-archive.city.naha.okinawa.jp/', 'zh', '琉球王國官修編年史，1743年（乾隆8）開始編纂，記錄王國歷代史事、災異、人事與外交大事，至1879年琉球處分為止，為王國官方史書', '球陽;王府編年史;琉球史', '第二尚氏王朝（1743–1879）', '琉球王國', NULL, '中山世鑑;歷代寶案', '首里王府', '那霸市歷史博物館（收藏）', '2026-08-01', 'ARR', '館藏文獻，需申請調閱', '已收錄 metadata', NULL, '王國官修編年史', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1115, '古琉球之三山時代史料（北山・中山・南山）', '三山諸王（北山・中山・南山）', '古琉球時期（1314–1429）', 33, 1, '沖繩縣立博物館・美術館;那霸市歷史博物館', 'RY-ST-09', 'https://okimu.jp/', 'zh', '三山時代（北山・中山・南山鼎立）之史料，含諸王系譜、與明朝往來之入貢紀錄及遺址出土資料，為理解琉球王國統一前之政治社會之基礎史料', '三山時代;北山;中山;南山;入貢', '古琉球時期（1314–1429）', '琉球本島', NULL, '中山世鑑;使琉球錄', '三山諸王', '沖繩縣立博物館・美術館（收藏）', '2026-08-01', 'ARR', '館藏資料，需申請調閱', '已收錄 metadata', NULL, '王國統一前之三山史料', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1116, '中山世鑑', '向象賢（羽地朝秀）', '第一尚氏王朝（1650）', 34, 7, '沖繩縣立圖書館;國立國會圖書館', 'RY-ST-10', 'https://www.ndl.go.jp/', 'ja', '1650年（慶安3）首里王府儒官向象賢撰，以漢文敘述琉球開闢傳說至尚質王之歷史，為琉球最初之通史，奠定王國正統史觀', '中山世鑑;琉球通史;向象賢;王統', '第一尚氏王朝（1650）', '琉球王國', NULL, '球陽;中山傳信錄', '首里王府', '國立國會圖書館（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '琉球最初之漢文通史', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1117, '貝特海姆日記與書簡（Bettelheim Diary）', '柏爾納德・貝特海姆（Bernard Bettelheim）', '第二尚氏王朝（1846–1854）', 35, 4, '沖繩縣教育委員會（琉球王國交流史デジタルアーカイブ）', 'RY-ST-11', 'https://ryuoki-archive.jp/', 'en', '英國傳教士貝特海姆1846–1854年滯琉期間之日記與書簡，記錄琉球末期社會、風俗與歐美勢力接觸，為西洋人最早詳述琉球之第一手紀錄', '貝特海姆;傳教士;歐美接觸;琉球末期', '第二尚氏王朝（1846–1854）', '琉球王國', NULL, '歷代寶案;中山傳信錄', '貝特海姆', '沖繩縣教育委員會（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '西洋人首見琉球之紀錄', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1118, '明清檔案中之琉球關係史料', '中國第一歷史檔案館（明清檔案）', '第一尚氏王朝–第二尚氏王朝（1372–1879）', 34, 1, '沖繩縣教育委員會（琉球王國交流史デジタルアーカイブ）', 'RY-ST-12', 'https://ryuoki-archive.jp/', 'zh', '明清中國朝廷檔案中與琉球相關之奏摺、敕諭與冊封紀錄，含明清檔案・琉球關係史料、明實錄琉球史料等，為中琉關係之官方中國側紀錄', '明清檔案;中琉關係;奏摺;冊封', '第一尚氏王朝–第二尚氏王朝（1372–1879）', '琉球王國・中國朝廷', NULL, '歷代寶案;中山傳信錄', '中國第一歷史檔案館', '沖繩縣教育委員會（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '中琉關係之官方中國側檔案', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1119, '琉球王國地圖與古繪圖（首里城圖等）', '琉球王府;薩摩藩繪師', '第二尚氏王朝（17–19世紀）', 35, 2, '沖繩縣立圖書館;那霸市歷史博物館;沖繩縣立博物館・美術館', 'RY-ST-13', 'https://www.library.pref.okinawa.jp/', 'ja', '琉球王國時代之古地圖與繪圖，含首里城圖、王國全圖、間切（鄉村）圖與西洋繪製之琉球圖，記錄王國疆域、聚落與城郭空間，為研究琉球歷史地理之輿圖史料', '古地圖;首里城;間切;歷史地理;琉球', '第二尚氏王朝（17–19世紀）', '琉球王國', NULL, '中山傳信錄;琉球國志略', '琉球王府', '沖繩縣立圖書館（收藏）', '2026-08-01', 'ARR', '館藏輿圖，需申請調閱', '已收錄 metadata', NULL, '王國時代輿圖', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1120, '尚家關係資料（琉球國王尚家文書）', '琉球國王尚家（首里王府）', '第二尚氏王朝（15–19世紀）', 35, 4, '那霸市歷史博物館', 'RY-ST-14', 'https://www.rekishi-archive.city.naha.okinawa.jp/', 'ja', '琉球國王尚家歷代傳世之文書與文物，含冊封詔敕、系譜、御冠船關係資料與美術工藝品，2015年國寶指定，為王權與琉球文化之核心家族史料', '尚家;國寶;王權;系譜;冊封', '第二尚氏王朝（15–19世紀）', '琉球王國', NULL, '球陽;中山世鑑', '琉球國王尚家', '那霸市歷史博物館（收藏）', '2026-08-01', 'ARR', '國寶指定文物，需申請調閱', '已收錄 metadata', NULL, '王權核心家族史料', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1121, '首里城跡出土資料與發掘調查報告', '首里城跡發掘調查會;沖繩縣教育委員會', '古琉球時期–第二尚氏王朝（14–19世紀）', 33, 7, '沖繩縣立博物館・美術館;沖繩縣教育委員會', 'RY-ST-15', 'https://okimu.jp/', 'ja', '首里城跡考古發掘調查之出土遺物與調查報告，含陶瓷器、建材、武器與生活器具，佐證王國都城之興衰變遷，2019年火災後之再發掘調查亦持續進行', '首里城;考古發掘;出土遺物;都城', '古琉球時期–第二尚氏王朝（14–19世紀）', '首里・琉球王國', NULL, '尚家關係資料;琉球王國之土地制度史料', '首里城跡發掘調查會', '沖繩縣立博物館・美術館（收藏）', '2026-08-01', 'ARR', '館藏出土資料，需申請調閱', '已收錄 metadata', NULL, '王都考古發掘成果', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1122, '沖繩貝塚時代與先島諸島考古遺址', '沖繩縣教育委員會（文化財課）', '古琉球時期（約前10000–1050）', 33, 7, '沖繩縣立博物館・美術館;沖繩縣教育委員會', 'RY-ST-16', 'https://okimu.jp/', 'ja', '沖繩貝塚時代（繩文期）與先島諸島之考古遺址調查資料，含港川人、具志川貝塚等出土人骨與遺物，為研究琉球列島先史時代人類活動與文化源流之考古史料', '貝塚時代;考古遺址;港川人;先島諸島', '古琉球時期（約前10000–1050）', '琉球列島全境', NULL, '首里城跡出土資料', '沖繩縣教育委員會', '沖繩縣立博物館・美術館（收藏）', '2026-08-01', 'ARR', '館藏考古資料，需申請調閱', '已收錄 metadata', NULL, '琉球先史時代考古', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1123, '琉球処分関係公文（明治政府・首里王府）', '明治政府;首里王府', '沖繩縣・日本統治（1879）', 36, 1, '沖繩縣公文書館;國立公文書館', 'RY-ST-17', 'https://www.digital.archives.go.jp/', 'ja', '1879年琉球處分之官方公文，含明治政府之廢藩置縣命令、首里王府最後之抗拒文書與處分使松田道之相關紀錄，為琉球王國終結與沖繩縣成立之關鍵官方檔案', '琉球処分;明治政府;廢藩置縣;沖繩縣', '沖繩縣・日本統治（1879）', '琉球王國・東京', NULL, '尚家關係資料;球陽', '明治政府', '國立公文書館（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '王國終結關鍵檔案', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1124, '沖繩縣統計書（明治・大正・昭和）', '沖繩縣廳', '沖繩縣・日本統治（1880–1940）', 36, 6, '沖繩縣公文書館;沖繩縣立圖書館', 'RY-ST-18', 'https://www.archives.pref.okinawa.jp/', 'ja', '沖繩縣自明治至昭和前期之年度統計書，記錄人口、產業、貿易、財政與教育等縣政統計，為重建日治沖繩社會經濟全貌之官方統計史料', '沖繩縣統計;人口;產業;縣政', '沖繩縣・日本統治（1880–1940）', '沖繩縣', NULL, '沖繩縣史;舊慣調查', '沖繩縣廳', '沖繩縣公文書館（數位化）', '2026-08-01', 'ARR', '數位公開，線上瀏覽', '已收錄 metadata', NULL, '日治沖繩統計全書', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1125, '沖繩縣舊慣制度調查資料', '沖繩縣廳（舊慣調查）', '沖繩縣・日本統治（1894–1908）', 36, 6, '沖繩縣公文書館;國立國會圖書館', 'RY-ST-19', 'https://www.archives.pref.okinawa.jp/', 'ja', '明治後期日本政府對沖繩舊慣制度之調查，含土地、身分、稅制、風俗等專項調查書，為理解王國時代制度與近代化過渡之系統性調查史料', '舊慣調查;土地制度;身分制度;近代化', '沖繩縣・日本統治（1894–1908）', '沖繩縣', NULL, '沖繩縣統計書;琉球王國之土地制度史料', '沖繩縣廳', '沖繩縣公文書館（數位化）', '2026-08-01', 'ARR', '數位公開，線上瀏覽', '已收錄 metadata', NULL, '舊慣制度系統調查', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1126, '沖繩戰相關公文・戰歿者名簿', '沖繩縣廳;大日本帝國陸軍', '沖繩縣・日本統治（1945）', 36, 1, '沖繩縣平和祈念資料館;沖繩縣公文書館', 'RY-ST-20', 'https://www.peace-museum.okinawa.jp/', 'ja', '1945年沖繩戰之官方檔案與戰歿者名簿，記錄日美兩軍之戰役經過、住民犧牲與軍民混戰之實態，含沖繩縣與陸軍之戰時公文及戰歿者統計，為沖繩戰最核心之官方紀錄', '沖繩戰;戰歿者名簿;陸軍;住民犧牲', '沖繩縣・日本統治（1945）', '沖繩縣全境', NULL, '沖繩戰寫真帖;ひめゆり和平祈念資料館藏', '沖繩縣廳', '沖繩縣平和祈念資料館（收藏）', '2026-08-01', 'ARR', '館藏檔案，需申請調閱', '已收錄 metadata', NULL, '沖繩戰核心官方紀錄', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1127, '沖繩戰寫真帖・戰中戰後映像', '沖繩縣公文書館;美軍攝影班', '沖繩縣・日本統治（1945）', 36, 5, '沖繩縣公文書館', 'RY-ST-21', 'https://www.archives.pref.okinawa.jp/', 'ja', '沖繩戰及戰後初期之照片與映像，含美軍攝影之戰役紀錄片與陸續公開之戰中戰後影像資料，為沖繩戰視覺歷史之原始素材', '沖繩戰;寫真帖;映像;美軍紀錄', '沖繩縣・日本統治（1945）', '沖繩縣全境', NULL, '沖繩戰相關公文;USCAR廣報局寫真', '沖繩縣公文書館', '沖繩縣公文書館（數位化）', '2026-08-01', 'ARR', '數位公開，線上瀏覽', '已收錄 metadata', NULL, '沖繩戰視覺史料', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1128, '琉球政府公報（美治時期）', '琉球政府（Ryukyu Government）', '琉球政府・美治時期（1952–1972）', 37, 1, '沖繩縣公文書館;國立國會圖書館', 'RY-ST-22', 'https://www.archives.pref.okinawa.jp/', 'ja', '美治時期琉球政府（1952年成立）之官方公報與行政命令，收錄美軍統治下之立法、行政與民政措施，為研究戰後琉球政治制度之核心官方檔案', '琉球政府;公報;美治時期;USCAR', '琉球政府・美治時期（1952–1972）', '沖繩縣（琉球列島）', NULL, 'USCAR公文;琉球政府統計', '琉球政府', '沖繩縣公文書館（數位化）', '2026-08-01', 'ARR', '數位公開，線上瀏覽', '已收錄 metadata', NULL, '美治時期官方公報', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1129, 'USCAR公文（美國民政府琉球列島司令部）', '美國民政府琉球列島司令部（USCAR）', '琉球政府・美治時期（1945–1972）', 37, 1, '美國國家檔案館（NARA）;沖繩縣公文書館', 'RY-ST-23', 'https://www.archives.gov/', 'en', '美國民政府琉球列島司令部（United States Civil Administration of the Ryukyu Islands）之官方公文與指令，含土地、基地、民政與對琉球政府之監督文件，為美治時期統治之核心官方檔案', 'USCAR;美治時期;基地;民政', '琉球政府・美治時期（1945–1972）', '琉球列島全境', NULL, '琉球政府公報;琉球列島空中寫真', '美國民政府琉球列島司令部', '美國國家檔案館（數位化）', '2026-08-01', 'ARR', '數位公開，線上瀏覽', '已收錄 metadata', NULL, '美治統治核心檔案', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1130, '琉球列島空中寫真（1945）', '美國空軍（USAAF）', '琉球政府・美治時期（1945）', 37, 2, '沖繩縣公文書館', 'RY-ST-24', 'https://www.archives.pref.okinawa.jp/', 'en', '1945年12月美軍航拍之琉球列島空中寫真，記錄戰後初期沖繩之土地現況與聚落分布，為重建戰前戰後地貌之珍貴輿圖資料', '空中寫真;美軍航拍;戰後地貌;琉球列島', '琉球政府・美治時期（1945）', '琉球列島全境', NULL, 'USCAR公文;沖繩戰寫真帖', '美國空軍', '沖繩縣公文書館（數位化）', '2026-08-01', 'ARR', '數位公開，線上瀏覽', '已收錄 metadata', NULL, '戰後初航拍輿圖', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1131, '琉球政府統計（美治時期）', '琉球政府（統計部）', '琉球政府・美治時期（1945–1972）', 37, 6, '沖繩縣公文書館', 'RY-ST-25', 'https://www.archives.pref.okinawa.jp/', 'en', '美治時期琉球政府編製之統計資料，含人口普查、經濟統計與社會指標，記錄戰後琉球社會經濟重建之數據，為研究美治時期民生狀態之官方統計史料', '琉球政府統計;人口;經濟;美治時期', '琉球政府・美治時期（1945–1972）', '沖繩縣（琉球列島）', NULL, '琉球政府公報;沖繩縣統計書', '琉球政府', '沖繩縣公文書館（數位化）', '2026-08-01', 'ARR', '數位公開，線上瀏覽', '已收錄 metadata', NULL, '美治時期統計史料', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1132, '沖繩返還關係資料（1972）', '日本政府;琉球政府;美國政府', '沖繩返還後（1969–1972）', 38, 1, '沖繩縣公文書館;國立公文書館', 'RY-ST-26', 'https://www.digital.archives.go.jp/', 'ja', '沖繩返還（1972年5月15日）之官方資料，含佐藤・尼克森會談紀錄、返還協定、施政權移轉文件與復歸準備相關檔案，為琉球列島回歸日本之關鍵官方史料', '沖繩返還;施政權;佐藤尼克森;復歸', '沖繩返還後（1969–1972）', '沖繩縣・東京・華盛頓', NULL, '琉球政府公報;USCAR公文', '日本政府', '國立公文書館（數位化）', '2026-08-01', 'ARR', '數位公開，線上瀏覽', '已收錄 metadata', NULL, '返還關鍵官方檔案', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1133, '沖繩縣史（新沖繩縣史）', '沖繩縣史編集委員會', '古琉球時期–沖繩返還後（全時期）', 33, 1, '沖繩縣公文書館;沖繩縣教育委員會', 'RY-ST-27', 'https://www.archives.pref.okinawa.jp/', 'ja', '沖繩縣官修縣史，含通史編・各論編・圖說編，史料至明治期之編纂並收錄沖繩戰・美治時期專卷，為琉球沖繩史研究之綜合官方史書', '沖繩縣史;縣史編纂;琉球史;沖繩戰', '古琉球時期–沖繩返還後（全時期）', '沖繩縣全境', NULL, '沖繩縣統計書;歷代寶案', '沖繩縣史編集委員會', '沖繩縣公文書館（出版）', '2026-08-01', 'ARR', '官修出版品，線上目錄與館內閱覽', '已收錄 metadata', NULL, '官修綜合縣史', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1134, '沖繩（琉球）報紙・新聞（近代以降）', '琉球新報;沖繩タイムス等', '沖繩縣・日本統治–沖繩返還後（1887–迄今）', 36, 3, '沖繩縣教育委員會（近代沖繩史料デジタルアーカイブ）;沖繩縣立圖書館', 'RY-ST-28', 'https://ryuoki-archive.jp/', 'ja', '近代沖繩報紙之數位典藏，含琉球新報（1887年創刊）等之歷代紙面影像，記錄沖繩縣政、社會與戰後美治時期之輿論，為研究近代沖繩社會變遷之報刊史料', '報紙;新聞;琉球新報;近代沖繩', '沖繩縣・日本統治–沖繩返還後（1887–迄今）', '沖繩縣', NULL, '沖繩縣統計書;沖繩縣史', '琉球新報', '沖繩縣教育委員會（數位化）', '2026-08-01', 'ARR', '數位公開，線上瀏覽', '已收錄 metadata', NULL, '近代沖繩報刊典藏', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1135, 'ひめゆり平和祈念資料館藏（沖繩戰犧牲學生記錄）', 'ひめゆり平和祈念資料館', '沖繩縣・日本統治–琉球政府・美治時期（1945–1972）', 36, 9, 'ひめゆり平和祈念資料館', 'RY-ST-29', 'https://www.himeyuri.or.jp/', 'ja', '沖繩戰中「姬百合部隊」學生看護隊之遺稿、證言與慰靈記錄，含犧牲者名單與生還者口述，為沖繩戰女性・學生犧牲之代表性記憶史料', 'ひめゆり;姬百合;學生看護隊;沖繩戰', '沖繩縣・日本統治–琉球政府・美治時期（1945–1972）', '沖繩縣（南風原・南部戰線）', NULL, '沖繩戰相關公文;沖繩戰寫真帖', 'ひめゆり平和祈念資料館', 'ひめゆり平和祈念資料館（收藏）', '2026-08-01', 'ARR', '館藏資料，需申請調閱', '已收錄 metadata', NULL, '學生犧牲記憶史料', 'RY') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1136, '沖繩戰口述歷史・證言資料', '沖繩縣平和祈念資料館;沖繩縣公文書館', '琉球政府・美治時期（1945–1972）', 37, 9, '沖繩縣平和祈念資料館;沖繩縣公文書館', 'RY-ST-30', 'https://www.peace-museum.okinawa.jp/', 'ja', '沖繩戰生還者與關係者之口述證言紀錄，含證言集・影像證言與座談紀錄，由平和祈念資料館與公文書館長期收集，為沖繩戰記憶傳承之核心口述史料', '口述歷史;證言;沖繩戰;記憶傳承', '琉球政府・美治時期（1945–1972）', '沖繩縣全境', NULL, 'ひめゆり平和祈念資料館藏;沖繩戰相關公文', '沖繩縣平和祈念資料館', '沖繩縣平和祈念資料館（收藏）', '2026-08-01', 'ARR', '館藏資料，需申請調閱', '已收錄 metadata', NULL, '沖繩戰口述史料', 'RY') ON CONFLICT (id) DO NOTHING;

SELECT setval('sources_id_seq', 1136) WHERE NOT EXISTS (SELECT 1 FROM sources WHERE id = 1136);
SELECT setval('sources_id_seq', (SELECT COALESCE(MAX(id), 0) FROM sources));

-- === 3. 史料←→資料類型 ===
INSERT INTO source_materials (source_id, material_type_id) VALUES
  (1107, 1),
  (1108, 1),
  (1109, 1),
  (1110, 1),
  (1111, 1),
  (1112, 1),
  (1113, 1),
  (1114, 1),
  (1115, 1),
  (1116, 1),
  (1117, 1),
  (1118, 1),
  (1119, 3),
  (1120, 1),
  (1121, 1),
  (1122, 1),
  (1123, 1),
  (1124, 1),
  (1125, 1),
  (1126, 1),
  (1127, 2),
  (1127, 4),
  (1128, 1),
  (1129, 1),
  (1130, 3),
  (1131, 1),
  (1132, 1),
  (1133, 1),
  (1134, 1),
  (1134, 2),
  (1135, 1),
  (1135, 4),
  (1136, 1),
  (1136, 4)
ON CONFLICT DO NOTHING;

-- === 4. 史料←→來源機構 ===
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (1107, 279, 'source'),
  (1107, 279, 'contributor'),
  (1108, 278, 'source'),
  (1108, 289, 'source'),
  (1108, 289, 'contributor'),
  (1109, 289, 'source'),
  (1109, 278, 'source'),
  (1109, 289, 'contributor'),
  (1110, 289, 'source'),
  (1110, 281, 'source'),
  (1110, 289, 'contributor'),
  (1111, 279, 'source'),
  (1111, 279, 'contributor'),
  (1112, 279, 'source'),
  (1112, 279, 'contributor'),
  (1113, 279, 'source'),
  (1113, 279, 'contributor'),
  (1114, 278, 'source'),
  (1114, 281, 'source'),
  (1114, 281, 'contributor'),
  (1115, 277, 'source'),
  (1115, 281, 'source'),
  (1115, 277, 'contributor'),
  (1116, 278, 'source'),
  (1116, 289, 'source'),
  (1116, 289, 'contributor'),
  (1117, 279, 'source'),
  (1117, 279, 'contributor'),
  (1118, 279, 'source'),
  (1118, 24, 'publisher'),
  (1118, 279, 'contributor'),
  (1119, 278, 'source'),
  (1119, 281, 'source'),
  (1119, 277, 'source'),
  (1119, 278, 'contributor'),
  (1120, 281, 'source'),
  (1120, 281, 'contributor'),
  (1121, 277, 'source'),
  (1121, 279, 'source'),
  (1121, 286, 'publisher'),
  (1121, 277, 'contributor'),
  (1122, 277, 'source'),
  (1122, 279, 'source'),
  (1122, 279, 'publisher'),
  (1122, 277, 'contributor'),
  (1123, 274, 'source'),
  (1123, 288, 'source'),
  (1123, 282, 'publisher'),
  (1123, 288, 'contributor'),
  (1124, 274, 'source'),
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (1124, 278, 'source'),
  (1124, 280, 'publisher'),
  (1124, 274, 'contributor'),
  (1125, 274, 'source'),
  (1125, 289, 'source'),
  (1125, 280, 'publisher'),
  (1125, 274, 'contributor'),
  (1126, 276, 'source'),
  (1126, 274, 'source'),
  (1126, 280, 'publisher'),
  (1126, 276, 'contributor'),
  (1127, 274, 'source'),
  (1127, 274, 'publisher'),
  (1127, 274, 'contributor'),
  (1128, 274, 'source'),
  (1128, 289, 'source'),
  (1128, 287, 'publisher'),
  (1128, 274, 'contributor'),
  (1129, 285, 'source'),
  (1129, 274, 'source'),
  (1129, 283, 'publisher'),
  (1129, 285, 'contributor'),
  (1130, 274, 'source'),
  (1130, 284, 'publisher'),
  (1130, 274, 'contributor'),
  (1131, 274, 'source'),
  (1131, 287, 'publisher'),
  (1131, 274, 'contributor'),
  (1132, 274, 'source'),
  (1132, 288, 'source'),
  (1132, 273, 'publisher'),
  (1132, 288, 'contributor'),
  (1133, 274, 'source'),
  (1133, 279, 'source'),
  (1133, 275, 'publisher'),
  (1133, 274, 'contributor'),
  (1134, 279, 'source'),
  (1134, 278, 'source'),
  (1134, 279, 'contributor'),
  (1135, 272, 'source'),
  (1135, 272, 'publisher'),
  (1135, 272, 'contributor'),
  (1136, 276, 'source'),
  (1136, 274, 'source'),
  (1136, 276, 'publisher'),
  (1136, 276, 'contributor')
ON CONFLICT DO NOTHING;

-- === 完成 ===
