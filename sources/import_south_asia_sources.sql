-- ============================================================
-- 東亞歷史權威史料庫 — 印度史料匯入 SQL（增量模式）
-- 由 Import-IndiaToSupabase.ps1 v1 自動產生
-- ============================================================

-- === 0. 南亞三國時期（僅首次執行） ===
INSERT INTO periods (id, code, name_zh, start_year, end_year, sort_order, region) OVERRIDING SYSTEM VALUE VALUES
  (74, 'pk-indus-valley', '巴基斯坦：印度河流域文明（約前3300–前1300）', -3300, -1300, 77, 'SA'),
  (75, 'pk-gandhara', '巴基斯坦：犍陀羅・佛教時代（約前500–550）', -500, 550, 78, 'SA'),
  (76, 'pk-islamic', '巴基斯坦：伊斯蘭王朝與蒙兀兒（約712–1857）', 712, 1857, 79, 'SA'),
  (77, 'pk-british', '巴基斯坦：英屬印度（1858–1947）', 1858, 1947, 80, 'SA'),
  (78, 'pk-republic', '巴基斯坦國（1947–迄今）', 1947, 2026, 81, 'SA'),
  (79, 'bd-ancient', '孟加拉：古孟加拉・帕拉王朝（約前3世紀–1204）', -300, 1204, 82, 'SA'),
  (80, 'bd-islamic', '孟加拉：伊斯蘭蘇丹與莫臥兒（1204–1757）', 1204, 1757, 83, 'SA'),
  (81, 'bd-british', '孟加拉：英屬孟加拉（1757–1947）', 1757, 1947, 84, 'SA'),
  (82, 'bd-pakistan', '東巴基斯坦（1947–1971）', 1947, 1971, 85, 'SA'),
  (83, 'bd-republic', '孟加拉國（1971–迄今）', 1971, 2026, 86, 'SA'),
  (84, 'lk-ancient', '斯里蘭卡：古斯里蘭卡（阿努拉德普勒・波隆納魯瓦，約前6世紀–1232）', -600, 1232, 87, 'SA'),
  (85, 'lk-kandy', '斯里蘭卡：康提王國（1592–1815）', 1592, 1815, 88, 'SA'),
  (86, 'lk-portuguese', '斯里蘭卡：葡荷殖民（1505–1796）', 1505, 1796, 89, 'SA'),
  (87, 'lk-british', '斯里蘭卡：英屬錫蘭（1796–1948）', 1796, 1948, 90, 'SA'),
  (88, 'lk-republic', '斯里蘭卡共和（1948–迄今）', 1948, 2026, 91, 'SA')
ON CONFLICT (id) DO NOTHING;

-- === 1. 來源機構（僅新增者） ===
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (358, '1947分治口述檔案庫') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (359, 'Harappa.com') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (360, 'UNESCO世界遺產中心') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (361, '巴基斯坦考古暨博物館署') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (362, '巴基斯坦國家博物館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (363, '巴基斯坦國家圖書館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (364, '巴基斯坦國家檔案館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (365, '巴基斯坦統計局') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (366, '世界記憶亞太委員會') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (367, '史丹佛大學1947分治口述檔案庫') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (368, '瓦仁德拉研究博物館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (369, '伊克巴學會') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (370, '伊克巴學會巴基斯坦') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (371, '佩拉德尼亞大學圖書館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (372, '孟加拉考古署') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (373, '孟加拉亞洲學會') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (374, '孟加拉國政府') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (375, '孟加拉國家博物館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (376, '孟加拉國家圖書館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (377, '孟加拉國家檔案館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (378, '孟加拉統計局') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (379, '孟加拉解放戰爭線上檔案庫') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (380, '孟加拉學院') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (381, '拉合爾博物館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (382, '信德檔案館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (383, '洛克拉維爾薩國家民間遺產研究所') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (384, '皇家亞洲學會斯里蘭卡') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (385, '英屬錫蘭政府') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (386, '俾路支檔案館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (387, '旁遮普數位圖書館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (388, '旁遮普檔案暨圖書館處') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (389, '國家圖書館暨文獻服務委員會') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (390, '斯里蘭卡人口普查暨統計部') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (391, '斯里蘭卡考古部') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (392, '斯里蘭卡國家博物館部') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (393, '斯里蘭卡國家檔案館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (394, '開伯爾-普什圖檔案館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (395, '葡萄牙國家檔案館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (396, '解放戰爭博物館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (397, '穆哈塔宮博物館') ON CONFLICT (name_zh) DO NOTHING;

SELECT setval('institutions_id_seq', 397);

-- === 2. 主要史料 ===
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1314, '巴基斯坦國家檔案館（含真納文件收藏）', '巴基斯坦國家檔案館', '1947–迄今', 77, 1, '巴基斯坦國家檔案館', 'PK-ST-01', 'https://archives.gov.pk/', 'ur;en', '巴基斯坦國家檔案館為國家法定檔案典藏中心，保存1947年分治前後中央檔案、建國文書與真納（Quaid-i-Azam）遺稿等，官方網站提供線上目錄與數位化查詢，為巴基斯坦國家記憶之主庫', '巴基斯坦;國家檔案館;真納;建國;檔案', '英屬印度～巴基斯坦建國（1947）', '巴基斯坦（伊斯蘭馬巴德）', NULL, '真納文件（Jinnah Papers）', NULL, '巴基斯坦國家檔案館（數位典藏）', '2026-08-01', 'ARR', '官方檔案館典藏，線上檢索', '已收錄 metadata', NULL, '含真納文件原件（UNESCO世界記憶1999）', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1315, '真納文件（Jinnah Papers）', '真納（Muhammad Ali Jinnah）', '1947', 78, 1, '巴基斯坦國家檔案館', 'PK-ST-02', 'https://www.unesco.org/en/memory-world/jinnah-papers-quaid-i-azam', 'ur;en', '國父真納的書信・演講稿與建國文書共約3萬頁，記錄巴基斯坦建國關鍵決策，原件藏於巴基斯坦國家檔案館，1999年登錄UNESCO世界記憶國際名錄，為巴基斯坦唯一之世界記憶登錄', '真納;巴基斯坦建國;世界記憶;書信;演講稿', '巴基斯坦國（1947）', '巴基斯坦（伊斯蘭馬巴德）', NULL, '巴基斯坦國家檔案館（含真納文件收藏）', NULL, '巴基斯坦國家檔案館（原件典藏）', '2026-08-01', 'ARR', '世界記憶遺產，官方典藏', '已收錄 metadata', NULL, 'UNESCO世界記憶1999', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1316, '巴基斯坦國家圖書館', '巴基斯坦國家圖書館', '1947–迄今', 78, 7, '巴基斯坦國家圖書館', 'PK-ST-03', 'https://www.nlp.gov.pk/', 'ur;en', '國家法定送存圖書館，藏建國前後巴基斯坦與前英屬印度出版品・政府年鑑與期刊，線上OPAC開放檢索，為研究巴基斯坦出版史與官方出版之國家書庫', '巴基斯坦;國家圖書館;出版品;年鑑;政府出版', '巴基斯坦國（1947–迄今）', '巴基斯坦（伊斯蘭馬巴德）', NULL, '巴基斯坦人口普查檔案', NULL, '巴基斯坦國家圖書館（OPAC）', '2026-08-01', 'ARR', '官方圖書館典藏，線上檢索', '已收錄 metadata', NULL, '國家出版總書庫', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1317, '旁遮普數位圖書館', '旁遮普數位圖書館（Panjab Digital Library）', '16–20世紀', 76, 7, '旁遮普數位圖書館', 'PK-ST-04', 'https://panjabdigilib.com/', 'fa;ur;pa;hi', '大規模掃描旁遮普與北印度珍本，含波斯語・烏爾都語・旁遮普語手稿、錫克教典籍與歷史地圖，開放數位影像免費下載，為旁遮普地區（含今巴基斯坦側）文獻之最大數位庫', '旁遮普;手稿;波斯語;烏爾都語;錫克教', '莫臥兒～英屬印度（16–20世紀）', '巴基斯坦（旁遮普）／印度旁遮普', NULL, '旁遮普檔案暨圖書館處', NULL, '旁遮普數位圖書館（數位典藏）', '2026-08-01', 'ARR', '數位圖書館，免費開放', '已收錄 metadata', NULL, '跨國界旁遮普文獻庫', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1318, '摩亨佐達羅考古遺址', '印度河流域文明（哈拉帕文化）', '約前2600–前1900', 74, 7, '巴基斯坦考古暨博物館署', 'PK-ST-05', 'https://doam.gov.pk/public/sites/4870', NULL, '巴基斯坦考古暨博物館署主管摩亨佐達羅等世界遺產之發掘與保護，官網刊載遺址解說・出土文物資料與博物館清單，摩亨佐達羅1980年登錄UNESCO世界文化遺產，為印度河流域文明最大城址', '摩亨佐達羅;印度河流域文明;世界遺產;考古;城址', '印度河流域文明（約前2600–前1900）', '巴基斯坦（信德省）', NULL, 'Harappa.com 印度河流域研究入口', NULL, '巴基斯坦考古暨博物館署（遺址管理）', '2026-08-01', 'ARR', '官方遺址管理機構，線上瀏覽', '已收錄 metadata', NULL, 'UNESCO世界遺產1980', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1319, '巴基斯坦國家博物館（喀拉蚩）', '巴基斯坦考古暨博物館署', '印度河流域文明～現代', 74, 7, '巴基斯坦國家博物館', 'PK-ST-06', 'https://doam.gov.pk/public/heritage-sites/792', 'ur;en', '1950年設於喀拉蚩Frere Hall之國家博物館，藏印度河流域印章・犍陀羅雕刻・伊斯蘭藝術與300多部古蘭經抄本，為巴基斯坦物質文化之國家典藏，經考古暨博物館署官網提供藏品資料', '巴基斯坦;國家博物館;犍陀羅;伊斯蘭藝術;古蘭經', '印度河流域文明～現代', '巴基斯坦（喀拉蚩）', NULL, '摩亨佐達羅考古遺址', NULL, '巴基斯坦國家博物館（藏品資料）', '2026-08-01', 'ARR', '官方博物館典藏，線上瀏覽', '已收錄 metadata', NULL, '藏量最豐之國家博物館', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1320, '拉合爾博物館犍陀羅藝廊', '犍陀羅文明（貴霜時期）', '約前2世紀–5世紀', 75, 7, '拉合爾博物館', 'PK-ST-07', 'https://lahoremuseum.punjab.gov.pk/taxonomy/term/10', NULL, '拉合爾博物館藏巴基斯坦最豐犍陀羅佛教雕刻與希臘化遺物（含佛陀像・佛傳浮雕・犍陀羅錢幣），官方網站提供線上圖錄與展廳解說，為研究貴霜時期佛教藝術之必查機構', '犍陀羅;佛教藝術;貴霜;雕像;博物館', '犍陀羅文明（約前2世紀–5世紀）', '巴基斯坦（旁遮普・拉合爾）', NULL, '巴基斯坦國家博物館（喀拉蚩）', NULL, '拉合爾博物館（線上圖錄）', '2026-08-01', 'ARR', '官方博物館典藏，線上瀏覽', '已收錄 metadata', NULL, '犍陀羅佛教藝術重鎮', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1321, '穆哈塔宮博物館（近現代史）', '穆哈塔宮博物館', '1947–迄今', 78, 7, '穆哈塔宮博物館', 'PK-ST-08', 'https://www.mohattapalacemuseum.org/', 'ur;en', '位於喀拉蚩之穆哈塔宮博物館常設巴基斯坦近現代史與獨立運動主題展，並提供線上展覽資料與教育資源，補足國家史敘事面向之視覺與物質史料', '巴基斯坦;近現代史;獨立運動;博物館;特展', '巴基斯坦國（1947–迄今）', '巴基斯坦（喀拉蚩）', NULL, '1947 分治口述檔案庫', NULL, '穆哈塔宮博物館（線上展覽）', '2026-08-01', 'ARR', '官方博物館典藏，線上瀏覽', '已收錄 metadata', NULL, '近現代史主題館', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1322, '巴基斯坦人口普查檔案（1951–2023）', '巴基斯坦統計局（PBS）', '1951–2023', 78, 6, '巴基斯坦統計局', 'PK-ST-09', 'https://www.pbs.gov.pk/censusarchive/', 'ur;en', '巴基斯坦統計局歷次人口普查全文與資料集，涵蓋1951至2023年各區人口・族群・宗教・職業統計，為研究巴基斯坦人口結構與族群變遷（含南亞遷徙）之基礎量化史料', '人口普查;統計;族群;人口;量化史料', '巴基斯坦國（1951–2023）', '巴基斯坦全國', NULL, '巴基斯坦國家圖書館', NULL, '巴基斯坦統計局（普查檔案）', '2026-08-01', 'ARR', '官方統計數位庫，線上瀏覽', '已收錄 metadata', NULL, '國家人口統計主庫', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1323, '旁遮普檔案暨圖書館處', '旁遮普省政府', '16–20世紀', 76, 1, '旁遮普檔案暨圖書館處', 'PK-ST-10', 'https://alw.punjab.gov.pk/digitization', 'ur;en;fa', '旁遮普省政府檔案暨圖書館處收藏莫臥兒至英屬時期之行政公文・地契・土地紀錄與地圖，並進行大規模數位化，與中央檔案館互補，為旁遮普地區治理史料之州級主庫', '旁遮普;地方檔案;地契;土地紀錄;英屬印度', '莫臥兒～英屬印度（16–20世紀）', '巴基斯坦（旁遮普・拉合爾）', NULL, '俾路支檔案館', NULL, '旁遮普檔案暨圖書館處（數位化）', '2026-08-01', 'ARR', '官方檔案館典藏，線上檢索', '已收錄 metadata', NULL, '州級檔案主庫', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1324, '信德檔案館', '信德省政府', '英屬印度～現代', 77, 1, '信德檔案館', 'PK-ST-11', 'https://archives.sindhculture.gov.pk/', 'ur;en;sd', '收藏信德省殖民時期至現代官方紀錄，含喀拉蚩城市發展、印度河谷地區與分治前後信德史料，官方網站提供目錄檢索，為信德歷史研究之地方檔案庫', '信德;地方檔案;喀拉蚩;印度河谷;英屬印度', '英屬印度～現代', '巴基斯坦（信德・喀拉蚩）', NULL, '摩亨佐達羅考古遺址', NULL, '信德檔案館（目錄檢索）', '2026-08-01', 'ARR', '官方檔案館典藏，線上檢索', '已收錄 metadata', NULL, '信德省地方檔案', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1325, '俾路支檔案館', '俾路支省政府', '1831–1947', 77, 1, '俾路支檔案館', 'PK-ST-12', 'https://balochistanarchives.gob.pk/', 'en;ur;br', '藏AGG紀錄（1831–1947）等3萬餘件，含喀拉特汗國檔案・地誌與300幅歷史地圖，為俾路支殖民治理唯一集中收藏之地方檔案館', '俾路支;地方檔案;喀拉特汗國;殖民治理;地圖', '英屬印度（1831–1947）', '巴基斯坦（俾路支・奎達）', NULL, '信德檔案館', NULL, '俾路支檔案館（典藏）', '2026-08-01', 'ARR', '官方檔案館典藏，線上檢索', '已收錄 metadata', NULL, '俾路支殖民檔案唯一庫', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1326, '開伯爾-普什圖省檔案館', '開伯爾-普什圖省政府', '英屬印度～現代', 77, 1, '開伯爾-普什圖檔案館', 'PK-ST-13', 'https://kpdal.gov.pk/index.php', 'ur;en;ps', '收藏西北邊境省殖民與現代官方檔案，含部落區治理與阿富汗邊境之行政文書，官方網站提供目錄，為普什圖地區治理史料之省級主庫', '開伯爾-普什圖;地方檔案;部落區;邊境治理;英屬印度', '英屬印度～現代', '巴基斯坦（開伯爾-普什圖・白沙瓦）', NULL, '信德檔案館', NULL, '開伯爾-普什圖檔案館（目錄）', '2026-08-01', 'ARR', '官方檔案館典藏，線上檢索', '已收錄 metadata', NULL, '西北邊境省檔案庫', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1327, '洛克拉維爾薩（巴基斯坦民間遺產）', '洛克拉維爾薩國家民間遺產研究所', '1947–迄今', 78, 9, '洛克拉維爾薩國家民間遺產研究所', 'PK-ST-14', 'https://lokvirsa.org.pk/', 'ur;pa;sd;ps', '國家民間遺產機構，數位典藏全巴各族口傳文學・音樂・節慶與工藝，含大量田野音檔與影片，並設博物館與國際民俗節，為巴基斯坦無形文化遺產研究入口', '巴基斯坦;民間遺產;口傳;音樂;無形文化遺產', '巴基斯坦國（1947–迄今）', '巴基斯坦全國', NULL, '1947 分治口述檔案庫', NULL, '洛克拉維爾薩（數位典藏）', '2026-08-01', 'ARR', '官方機構典藏，線上瀏覽', '已收錄 metadata', NULL, '無形文化遺產資料庫', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1328, '伊克巴網路圖書館', '伊克巴學會巴基斯坦', '20世紀', 78, 4, '伊克巴學會巴基斯坦', 'PK-ST-15', 'http://iqbalcyberlibrary.net/', 'fa;ur;en', '數位收錄巴基斯坦精神之父伊克巴（Allama Iqbal）波斯語・烏爾都語詩集全集與研究文獻，其私人藏書另有掃描版開放，為伊克巴思想與巴基斯坦民族主義之人物文獻主庫', '伊克巴;巴基斯坦民族主義;詩集;人物檔案;伊斯蘭思想', '巴基斯坦國（20世紀）', '巴基斯坦（拉合爾）', NULL, '穆哈塔宮博物館（近現代史）', NULL, '伊克巴學會（數位圖書館）', '2026-08-01', 'ARR', '學術機構典藏，免費開放', '已收錄 metadata', NULL, '伊克巴全集數位庫', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1329, 'Harappa.com 印度河流域研究入口', '哈拉帕研究計畫', '約前3300–前1300', 74, 7, 'Harappa.com（哈拉帕研究計畫）', 'PK-ST-16', 'https://www.harappa.com/', 'en', '印度河流域文明全球最大線上研究入口，收錄發掘報告・文物影像・學者專文與哈拉帕・摩亨佐達羅考古資料，為印度河谷史前研究之必查學術資料庫', '哈拉帕;印度河流域文明;考古;研究入口;史前', '印度河流域文明（前3300–前1300）', '巴基斯坦（印度河谷）／印度', NULL, '摩亨佐達羅考古遺址', NULL, 'Harappa.com（研究入口）', '2026-08-01', 'ARR', '學術資料庫，免費開放', '已收錄 metadata', NULL, '印度河谷研究總入口', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1330, '大英圖書館印度事務檔案（巴基斯坦）', '英國東印度公司／印度事務部', '1600–1947', 77, 1, '大英圖書館', 'PK-ST-17', 'https://searcharchives.bl.uk/', 'en;fa;ur', '大英圖書館藏英屬印度官方檔案全宗，含信德・旁遮普・西北邊境之行政公文・地圖與照片，可檢索India Office Records，為巴基斯坦前身地區殖民統治之核心境外檔案', 'IOR;東印度公司;英屬印度;殖民檔案;旁遮普', '英屬印度與東印度公司（1600–1947）', '巴基斯坦（信德・旁遮普・西北邊境）', NULL, '巴基斯坦國家檔案館（含真納文件收藏）', NULL, '大英圖書館（檔案館藏）', '2026-08-01', 'ARR', '官方檔案館典藏，線上檢索', '已收錄 metadata', NULL, '英印殖民檔案巴基斯坦部分', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1331, '1947 分治口述檔案庫', '史丹佛大學1947分治口述檔案庫', '1947', 78, 9, '史丹佛大學1947分治口述檔案庫', 'PK-ST-18', 'https://www.1947partitionarchive.org/', 'ur;hi;en;bn', '全球最大分治口述史料庫，收錄近萬支1947年印巴分治見證者訪談錄影，涵蓋巴基斯坦・印度・孟加拉三方視角，可線上申請查閱，為分治遷徙與暴力記憶之第一手口述史料', '1947分治;口述歷史;移民;獨立運動;見證者', '巴基斯坦國（1947）', '巴基斯坦・印度・孟加拉', NULL, '巴基斯坦國家檔案館（含真納文件收藏）', NULL, '1947分治口述檔案庫（數位典藏）', '2026-08-01', 'ARR', '口述資料庫，線上申請查閱', '已收錄 metadata', NULL, '分治見證者口述庫', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1332, '孟加拉國家檔案館', '孟加拉國家檔案館（隸屬檔案暨圖書館署）', '1947–迄今', 82, 1, '孟加拉國家檔案館', 'BD-ST-01', 'https://nanl.gov.bd/', 'bn;en', '1973年設，藏22.5萬卷官方檔案，含東巴基斯坦時期與1971年後政府公文・微捲與報刊剪報，線上目錄與數位檔案庫開放檢索，為孟加拉國家核心史料庫', '孟加拉;國家檔案館;政府檔案;微捲;獨立後', '東巴基斯坦～孟加拉國（1947–迄今）', '孟加拉（達卡）', NULL, '孟加拉國家圖書館', NULL, '孟加拉國家檔案館（數位檔案庫）', '2026-08-01', 'ARR', '官方檔案館典藏，線上檢索', '已收錄 metadata', NULL, '孟加拉國家檔案總庫', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1333, '孟加拉國家圖書館', '孟加拉國家圖書館', '1947–迄今', 82, 7, '孟加拉國家圖書館', 'BD-ST-02', 'https://nanl.gov.bd/', 'bn;en;ur;ar', '1973年設之法定送存圖書館，藏約40萬冊孟加拉語・英語及烏爾都・阿拉伯・波斯語文獻，含國家書目與舊報刊，為孟加拉出版史與知識傳播之國家書庫', '孟加拉;國家圖書館;送存;書目;報刊', '東巴基斯坦（1947–迄今）', '孟加拉（達卡）', NULL, '孟加拉國家檔案館', NULL, '孟加拉國家圖書館（OPAC）', '2026-08-01', 'ARR', '官方圖書館典藏，線上檢索', '已收錄 metadata', NULL, '國家出版總書庫', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1334, '孟加拉國家博物館', '孟加拉國家博物館', '史前～現代', 83, 7, '孟加拉國家博物館', 'BD-ST-03', 'https://bangladeshmuseum.gov.bd/', 'bn;en', '1913年創於達卡，44間展廳涵蓋古孟加拉雕塑・錢幣・伊斯蘭藝術與解放戰爭史，附360度虛擬導覽，為孟加拉物質文化與歷史之國家級博物館', '孟加拉;國家博物館;古孟加拉;伊斯蘭藝術;解放戰爭', '孟加拉國（1971–迄今）', '孟加拉（達卡）', NULL, '瓦仁德拉研究博物館', NULL, '孟加拉國家博物館（虛擬導覽）', '2026-08-01', 'ARR', '官方博物館典藏，線上瀏覽', '已收錄 metadata', NULL, '國家級綜合博物館', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1335, '解放戰爭博物館', '解放戰爭博物館（1971）', '1971', 83, 5, '解放戰爭博物館', 'BD-ST-04', 'https://www.liberationwarmuseumbd.org/', 'bn;en', '紀念1971年孟加拉獨立戰爭之專題博物館，收藏戰爭證物・照片・口述與受害者家屬資料，官方網站提供藏品頁與數位資源，為解放戰爭記憶之核心史料庫', '1971;解放戰爭;獨立;證物;口述', '孟加拉國（1971）', '孟加拉（達卡）', NULL, '孟加拉解放戰爭線上檔案庫', NULL, '解放戰爭博物館（藏品）', '2026-08-01', 'ARR', '官方博物館典藏，線上瀏覽', '已收錄 metadata', NULL, '獨立戰爭記憶核心', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1336, '孟加拉解放戰爭線上檔案庫（Muktijuddho e-Archive）', '孟加拉解放戰爭線上檔案庫', '1971', 83, 1, '孟加拉解放戰爭線上檔案庫', 'BD-ST-05', 'https://liberationwarbangladesh.org/', 'bn;en', '民間發起之1971年解放戰爭電子檔案庫，匯整當年代文件・照片與影像紀錄，為解放戰爭當代史料之數位匯集（網站偶有異常，引用前建議人工確認）', '1971;解放戰爭;數位檔案;文件;影像', '孟加拉國（1971）', '孟加拉全國', NULL, '解放戰爭博物館', NULL, '孟加拉解放戰爭線上檔案庫（數位匯集）', '2026-08-01', 'ARR', '民間數位檔案庫，線上瀏覽', '已收錄 metadata', NULL, '解放戰爭民間檔案匯集', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1337, '孟加拉考古署', '孟加拉考古署', '史前～莫臥兒', 79, 7, '孟加拉考古署', 'BD-ST-06', 'https://archaeology.gov.bd/', 'bn;en', '主管帕哈爾普爾佛寺・巴蓋爾哈特清真寺城等世界遺產與各大遺址博物館之發掘與保護，官方網站刊載遺址圖錄與文物資料，為孟加拉古代考古之國家管理機關', '孟加拉;考古;世界遺產;帕哈爾普爾;遺址', '古孟加拉（史前～莫臥兒）', '孟加拉全國', NULL, '孟加拉國家博物館', NULL, '孟加拉考古署（遺址資料）', '2026-08-01', 'ARR', '官方機構典藏，線上瀏覽', '已收錄 metadata', NULL, '含帕哈爾普爾佛寺（世界遺產1985）', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1338, '瓦仁德拉研究博物館', '瓦仁德拉研究博物館（拉傑沙希大學）', '約前3世紀–13世紀', 79, 7, '瓦仁德拉研究博物館', 'BD-ST-07', 'http://vrmbd.ru.ac.bd/', 'bn;sa;en', '1910年設於拉傑沙希大學，為南亞最古老大學博物館，藏帕拉・森王朝佛教雕塑・碑銘與孟加拉語手稿，為古孟加拉史（瓦仁德拉地區）研究必查之學術館', '瓦仁德拉;古孟加拉;帕拉王朝;佛教雕塑;手稿', '古孟加拉（約前3世紀–13世紀）', '孟加拉（拉傑沙希）', NULL, '孟加拉國家博物館', NULL, '瓦仁德拉研究博物館（典藏）', '2026-08-01', 'ARR', '大學博物館典藏，線上瀏覽', '已收錄 metadata', NULL, '古孟加拉史必查館', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1339, '孟加拉學院', '孟加拉學院（Bangla Academy）', '1952–迄今', 83, 7, '孟加拉學院', 'BD-ST-08', 'http://banglaacademy.portal.gov.bd/', 'bn;en', '國家語文機構，編纂孟加拉語辭典與經典校訂本，並保存1952年語言運動（Martyrs Day）史料與紀念活動紀錄，為孟加拉語文研究與語言運動記憶之權威入口', '孟加拉語;語言運動;辭典;文學;語文政策', '孟加拉國（1952語言運動～迄今）', '孟加拉（達卡）', NULL, '孟加拉亞洲學會', NULL, '孟加拉學院（語文機構）', '2026-08-01', 'ARR', '官方文化機構，線上瀏覽', '已收錄 metadata', NULL, '孟加拉語文權威', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1340, '孟加拉亞洲學會暨孟加拉百科', '孟加拉亞洲學會', '史前～現代', 83, 2, '孟加拉亞洲學會', 'BD-ST-09', 'https://asiaticsociety.org.bd/', 'bn;en', '出版國家百科《Banglapedia》與學術期刊，中古孟加拉史・地理・族群條目齊全，為孟加拉國情與歷史之綜合參考文獻庫', 'Banglapedia;孟加拉百科;學術期刊;方志;國情', '孟加拉國（史前～現代）', '孟加拉全國', NULL, '孟加拉國家博物館', NULL, '孟加拉亞洲學會（百科）', '2026-08-01', 'ARR', '學術機構典藏，線上瀏覽', '已收錄 metadata', NULL, '國家百科全書', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1341, '孟加拉統計局', '孟加拉統計局（BBS）', '1971–迄今', 83, 6, '孟加拉統計局', 'BD-ST-10', 'http://nsds.bbs.gov.bd/en', 'bn;en', '歷次人口普查與社會經濟統計資料庫，含1974年首度普查與2022年普查，為孟加拉人口・農業・經濟社會史之基礎量化史料', '孟加拉;統計;人口普查;社會經濟;量化史料', '孟加拉國（1971–迄今）', '孟加拉全國', NULL, '孟加拉國家圖書館', NULL, '孟加拉統計局（統計資料庫）', '2026-08-01', 'ARR', '官方統計數位庫，線上瀏覽', '已收錄 metadata', NULL, '孟加拉量化史料主庫', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1342, '3月7日演講原稿（Bangabandhu）', '穆吉布・拉赫曼（Bangabandhu）', '1971', 83, 1, '孟加拉國政府', 'BD-ST-11', 'https://www.unesco.org/en/memory-world/7th-march-speech-bangabandhu-sheikh-mujibur-rahman', 'bn;en', '孟加拉國父穆吉布・拉赫曼1971年3月7日獨立宣言前之歷史演講，促使解放戰爭爆發，2017年登錄UNESCO世界記憶國際名錄，為孟加拉獨立運動之關鍵文獻', '3月7日演講;穆吉布;世界記憶;獨立宣言;演講錄音', '孟加拉國（1971）', '孟加拉（達卡・蘇拉瓦地公園）', NULL, '孟加拉解放戰爭線上檔案庫', NULL, '孟加拉國政府（世界記憶典藏）', '2026-08-01', 'ARR', '世界記憶遺產，官方典藏', '已收錄 metadata', NULL, 'UNESCO世界記憶2017', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1343, '孟加拉世界遺產', 'UNESCO世界遺產中心', '8–17世紀', 79, 7, 'UNESCO世界遺產中心', 'BD-ST-12', 'https://whc.unesco.org/en/statesparties/bd', 'bn;en', '孟加拉世界遺產：帕哈爾普爾佛寺（1985）・巴蓋爾哈特清真寺城（1985）・孫德爾本斯紅樹林（1997），網站提供各遺產完整圖文資料與登錄法規，為孟加拉古文明與自然遺產之國際權威紀錄', '世界遺產;帕哈爾普爾;巴蓋爾哈特;孫德爾本斯;UNESCO', '古孟加拉～莫臥兒（8–17世紀）', '孟加拉（帕哈爾普爾・巴蓋爾哈特・孫德爾本斯）', NULL, '孟加拉考古署', NULL, 'UNESCO世界遺產中心（官方紀錄）', '2026-08-01', 'ARR', '世界遺產官方資料，線上瀏覽', '已收錄 metadata', NULL, '世界遺產1985/1997', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1344, '《蘇丹娜之夢》手稿', '洛克雅・薩卡瓦特・侯賽因', '1905', 81, 7, '世界記憶亞太委員會（MOWCAP）', 'BD-ST-13', 'https://www.unesco.org/en/memory-world/sultanas-dream-rokaya-sakhawat-hossain', 'bn;en', '孟加拉首位女性主義作家洛克雅1905年所著婦女烏托邦科幻短篇《蘇丹娜之夢》原稿，2024年登錄UNESCO世界記憶亞太區域名錄，為南亞女性啟蒙與科幻文學之珍貴文獻', '蘇丹娜之夢;洛克雅;女性主義;科幻文學;世界記憶', '英屬孟加拉（1905）', '孟加拉（帕德瑪拉札）', NULL, '孟加拉學院', NULL, '世界記憶亞太委員會（數位化）', '2026-08-01', 'ARR', '世界記憶遺產，數位公開', '已收錄 metadata', NULL, 'MOWCAP登錄2024', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1345, '大英圖書館印度事務檔案（孟加拉）', '英國東印度公司／印度事務部', '1600–1947', 81, 1, '大英圖書館', 'BD-ST-14', 'https://searcharchives.bl.uk/', 'en;bn;fa', '大英圖書館藏東印度公司與孟加拉省行政檔案，涵蓋東孟加拉・吉大港等分治前紀錄，可檢索India Office Records，為孟加拉殖民統治之核心境外檔案', 'IOR;東印度公司;孟加拉省;英屬印度;殖民檔案', '英屬孟加拉（1600–1947）', '孟加拉（東孟加拉・吉大港）', NULL, '孟加拉國家檔案館', NULL, '大英圖書館（檔案館藏）', '2026-08-01', 'ARR', '官方檔案館典藏，線上檢索', '已收錄 metadata', NULL, '英印殖民檔案孟加拉部分', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1346, '劍橋大學數位圖書館孟加拉手稿', '印度各地抄書匠（佚名）', '8–18世紀', 80, 7, '劍橋大學圖書館', 'BD-ST-15', 'https://viewer.cudl.lib.cam.ac.uk/collections/sanskrit', 'sa;bn;pra', '劍橋大學圖書館數位化梵語・孟加拉語手稿，含孟加拉帕哈爾普爾（Somapura）出土之梵語寫本等1,600餘件，為古孟加拉佛教與文學文獻之境外開放數位庫', '梵語手稿;貝葉經;孟加拉語;佛教文獻;數位典藏', '伊斯蘭蘇丹～莫臥兒（8–18世紀）', '孟加拉（帕哈爾普爾等出土）', NULL, '瓦仁德拉研究博物館', NULL, '劍橋大學圖書館（數位圖書館）', '2026-08-01', 'ARR', '大學數位圖書館，免費開放', '已收錄 metadata', NULL, '境外開放孟加拉手稿庫', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1347, '1947 分治口述檔案庫（孟加拉）', '史丹佛大學1947分治口述檔案庫', '1947', 82, 9, '史丹佛大學1947分治口述檔案庫', 'BD-ST-16', 'https://www.1947partitionarchive.org/', 'bn;hi;ur;en', '分治見證者訪談庫含遷往東孟加拉／孟加拉之敘事，補足分治後東翼人口移動・流離與認同轉變之口述史料，可線上申請查閱', '1947分治;口述歷史;東孟加拉;移民;見證者', '東巴基斯坦（1947）', '孟加拉（東孟加拉）・印度・巴基斯坦', NULL, '孟加拉國家檔案館', NULL, '1947分治口述檔案庫（數位典藏）', '2026-08-01', 'ARR', '口述資料庫，線上申請查閱', '已收錄 metadata', NULL, '東翼分治口述史料', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1348, '瀕危檔案計畫（孟加拉）', '大英圖書館瀕危檔案計畫（EAP）', '16–20世紀', 81, 1, '大英圖書館', 'BD-ST-17', 'https://eap.bl.uk/', 'bn;en;sa', '大英圖書館瀕危檔案計畫資助搶救孟加拉各地珍稀手稿與地方文書並全文上線，可依國家過濾孟加拉案例，為殖民與前殖民孟加拉地方文獻之境外補強庫', '瀕危檔案;手稿;地方文書;孟加拉;數位化', '英屬孟加拉（16–20世紀）', '孟加拉各地', NULL, '大英圖書館印度事務檔案（孟加拉）', NULL, '大英圖書館（EAP）', '2026-08-01', 'ARR', '數位典藏，免費開放', '已收錄 metadata', NULL, '瀕危文獻搶救計畫', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1349, '《大史》（Mahavamsa）佩拉德尼亞大學藏本', '歷代僧伽羅編年史家', '西元前6世紀–1815', 84, 7, '佩拉德尼亞大學圖書館', 'LK-ST-01', 'https://www.unesco.org/en/memory-world/mahavamsa-great-chronicle-sri-lanka-covering-period-6th-century-bce-1815-ce', 'pi;si', '南亞最早且最完整之編年史書，記王統世系與佛教弘傳，巴利文以僧伽羅字書於棕櫚葉；登錄藏本為佩拉德尼亞大學圖書館貝葉特藏最古抄本（登錄號277587），2023年登錄UNESCO世界記憶國際名錄', '大史;編年史;佛教;世界記憶;貝葉抄本', '古斯里蘭卡（西元前6世紀–1815）', '斯里蘭卡（佩拉德尼亞）', NULL, '斯里蘭卡國家檔案館', NULL, '佩拉德尼亞大學圖書館（貝葉特藏）', '2026-08-01', 'ARR', '世界記憶遺產，官方典藏', '已收錄 metadata', NULL, 'UNESCO世界記憶2023', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1350, '斯里蘭卡國家檔案館', '斯里蘭卡國家檔案館', '1640–迄今', 86, 1, '斯里蘭卡國家檔案館', 'LK-ST-02', 'https://archives.gov.lk/English/our_catalogues', 'si;ta;en', '國家法定檔案典藏中心，保存荷蘭統治（1640–1796）、英屬殖民與獨立後政府檔案、thombu土地冊・頭銜文書・選舉名冊與公報，設檢索室並提供線上目錄與數位化申請', '斯里蘭卡;國家檔案館;荷蘭殖民;英屬錫蘭;thombu', '荷蘭殖民～英屬錫蘭～斯里蘭卡共和', '斯里蘭卡（可倫坡）', NULL, '《大史》（Mahavamsa）佩拉德尼亞大學藏本', NULL, '斯里蘭卡國家檔案館（目錄）', '2026-08-01', 'ARR', '官方檔案館典藏，線上檢索', '已收錄 metadata', NULL, '含荷蘭殖民檔案原件', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1351, '荷蘭VOC錫蘭統治檔案（1640–1796）', '荷蘭東印度公司（VOC）錫蘭總督暨評議會', '1640–1796', 86, 1, '荷蘭國家檔案館', 'LK-ST-03', 'https://www.nationaalarchief.nl/onderzoeken/zoekhulpen/sri-lanka', 'nl;si;ta', 'VOC錫蘭總督暨評議會檔案原藏哥倫坡約三百公尺，含決議錄・公私函件・thombu土地登記・人口名簿與司法案卷，荷蘭國家檔案館藏微縮影本並設Sri Lanka研究指引，為南亞最完整荷蘭殖民地檔案體系', 'VOC;荷蘭東印度公司;殖民檔案;thombu;斯里蘭卡', '荷蘭殖民（1640–1796）', '斯里蘭卡（哥倫坡・加勒・賈夫納）', NULL, '荷蘭歸正教會Wolvendaal教會檔案', NULL, '荷蘭國家檔案館（數位典藏）', '2026-08-01', 'ARR', '世界記憶（VOC總檔）微縮典藏', '已收錄 metadata', NULL, '荷蘭殖民檔案體系完整', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1352, '荷蘭歸正教會Wolvendaal教會檔案（1620–1936）', '哥倫坡荷蘭歸正教會', '1620–1936', 86, 4, '斯里蘭卡國家檔案館', 'LK-ST-04', 'https://www.nationaalarchief.nl/onderzoeken/archief/1.11.06.02', 'nl;si;ta', '哥倫坡荷蘭歸正教會Wolvendaal教堂檔案（48目錄號），含洗禮・結婚與喪葬登記簿及教務會議紀錄，為研究荷蘭殖民時期歐亞裔（Burgher）家族系譜與社會史之珍貴家族史料', 'Wolvendaal;教會檔案;家族系譜;Burgher;荷蘭殖民', '荷蘭殖民（1620–1936）', '斯里蘭卡（哥倫坡）', NULL, '荷蘭VOC錫蘭統治檔案', NULL, '荷蘭國家檔案館（微縮影本）', '2026-08-01', 'ARR', '官方檔案館典藏，線上檢索', '已收錄 metadata', NULL, '荷蘭時期家族史料', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1353, '可倫坡國家博物館', '斯里蘭卡國家博物館部', '史前～英屬錫蘭', 84, 7, '斯里蘭卡國家博物館部', 'LK-ST-05', 'https://www.museum.gov.lk/v1/museums', 'si;ta;en', '1877年英總督Gregory創立之首座國家博物館，藏史前至康提時期石雕・錢幣・銘文拓片・貝葉經卷與殖民時期照片，並附各地分館，為斯里蘭卡考古與物質文化總匯', '國家博物館;考古;貝葉經卷;錢幣;銘文', '古斯里蘭卡（史前～英屬錫蘭）', '斯里蘭卡（可倫坡）', NULL, '斯里蘭卡考古部銘文與錢幣', NULL, '斯里蘭卡國家博物館部（藏品資料）', '2026-08-01', 'ARR', '官方博物館典藏，線上瀏覽', '已收錄 metadata', NULL, '國家考古總匯', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1354, '國家圖書館暨文獻服務委員會', '國家圖書館暨文獻服務委員會（NLDSB）', '1948–迄今', 88, 7, '國家圖書館暨文獻服務委員會', 'LK-ST-06', 'https://www.natlib.lk/NLSL/', 'si;ta;en', '依1998年法案成立之國家文獻典藏機關，具法定送存地位，藏逾百萬冊圖書・期刊・報紙・地圖・貝葉與非物質文化遺產檔案，建國家書目・聯合目錄及國家數位圖書館入口', '國家圖書館;送存;書目;貝葉;非物質文化遺產', '斯里蘭卡共和（1948–迄今）', '斯里蘭卡（可倫坡）', NULL, '斯里蘭卡國家檔案館', NULL, '國家圖書館暨文獻服務委員會（數位入口）', '2026-08-01', 'ARR', '官方圖書館典藏，線上檢索', '已收錄 metadata', NULL, '國家文獻典藏中心', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1355, '國家數位圖書館（含政府公報）', '國家圖書館暨文獻服務委員會（NLDSB）', '1889–迄今', 87, 1, '國家圖書館暨文獻服務委員會', 'LK-ST-07', 'https://diglib.natlib.lk/handle/123456789/241', 'si;ta;en', '2016年啟用之國家數位典藏庫，收錄1889年以來《Ceylon Government Gazette》分卷・報紙・政府出版物・善本與行政年報數十萬筆數位影像，提供全文檢索與開放下載，為殖民文書數位查證主力', 'Ceylon Government Gazette;政府公報;報紙;數位典藏;殖民文書', '英屬錫蘭（1889–迄今）', '斯里蘭卡全國', NULL, '錫蘭人口普查史料', NULL, '國家圖書館暨文獻服務委員會（數位庫）', '2026-08-01', 'ARR', '官方數位典藏庫，免費開放', '已收錄 metadata', NULL, '殖民公報數位主庫', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1356, '錫蘭人口普查史料（1816–1946）', '斯里蘭卡人口普查暨統計部', '1816–1946', 87, 6, '斯里蘭卡人口普查暨統計部', 'LK-ST-08', 'http://repo.statistics.gov.lk/handle/1/299', 'en;si;ta', '官方數位庫完整收錄1816年沿海人口調查及1871・1891・1901・1911・1921・1931・1946年歷次普查報告，含人種・宗教・職業與鄉鎮統計，為英屬錫蘭社會結構研究之核心統計史料', '人口普查;統計;人種;宗教;量化史料', '英屬錫蘭（1816–1946）', '斯里蘭卡全國', NULL, '錫蘭藍皮書', NULL, '斯里蘭卡人口普查暨統計部（數位庫）', '2026-08-01', 'ARR', '官方統計數位庫，免費開放', '已收錄 metadata', NULL, '錫蘭社會結構統計主庫', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1357, '錫蘭藍皮書與殖民統計年報（Ceylon Blue Book）', '英屬錫蘭政府', '1866–1938', 87, 6, '英屬錫蘭政府', 'LK-ST-09', 'https://archive.org/details/ceylon-blue-book-1871', 'en', '英屬錫蘭年度官方統計彙編，載財政・人口・貿易・教育・司法等行政數據（約1866–1938年間各年），Internet Archive已開放數位掃描本，為殖民治理統計與產業經濟實錄', '藍皮書;殖民統計;財政;貿易;英屬錫蘭', '英屬錫蘭（1866–1938）', '斯里蘭卡全國', NULL, '錫蘭人口普查史料', NULL, '英屬錫蘭政府（Internet Archive掃描）', '2026-08-01', 'ARR', '開放數位典藏，免費下載', '已收錄 metadata', NULL, '殖民統計年報', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1358, '英國國家檔案館：殖民部錫蘭檔案（CO 54）', '英國殖民部', '1798–1949', 87, 1, '英國國家檔案館', 'LK-ST-10', 'https://discovery.nationalarchives.gov.uk/details/r/C4245', 'en', '殖民部錫蘭原始來往公文（CO 54，1798–1949，千餘卷），含總督公文・1830年代東方調查委員報告及行政經濟決策紀錄，另有CO 55等系列，為英屬錫蘭治理之第一手核心檔案', 'CO 54;殖民部;英屬錫蘭;總督公文;殖民檔案', '英屬錫蘭（1798–1949）', '斯里蘭卡・英國（Kew）', NULL, '大英圖書館印度事務檔案錫蘭廠檔', NULL, '英國國家檔案館（Discovery平台）', '2026-08-01', 'ARR', '官方檔案目錄，線上檢索', '已收錄 metadata', NULL, '英屬錫蘭治理總檔', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1359, '大英圖書館印度事務檔案錫蘭廠檔（IOR/G/11）', '英國東印度公司錫蘭廠', '1762–1806', 87, 1, '大英圖書館', 'LK-ST-11', 'https://searcharchives.bl.uk/catalog/032-000173250', 'en;nl;ta', '東印度公司錫蘭廠檔案（IOR/G/11，1762–1806，57冊）含使節記錄與諮議文書；另瀕危檔案計畫數位化賈夫納主教館手稿（EAP981，葡／坦／僧語），多語系互證價值高', 'IOR;東印度公司;錫蘭廠;賈夫納;多語系', '英屬錫蘭（1762–1806）', '斯里蘭卡（賈夫納・可倫坡）', NULL, '英國國家檔案館：殖民部錫蘭檔案（CO 54）', NULL, '大英圖書館（檔案館藏）', '2026-08-01', 'ARR', '官方檔案館典藏，線上檢索', '已收錄 metadata', NULL, '東印度公司錫蘭早期檔案', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1360, '葡萄牙國家檔案館Torre do Tombo（季風書）', '葡萄牙王室國家檔案館', '1505–1658', 86, 1, '葡萄牙國家檔案館', 'LK-ST-12', 'https://digitarq.arquivos.pt/', 'pt;si;ta', '保存《季風書》（Livros das Monções）等葡萄牙東方帝國與果阿總督往來文書，含錫蘭（Ceilão）征服・肉桂貿易與傳教紀錄，Digitarq平台提供跨館全文檢索，為葡治時期斯里蘭卡檔案之補全', '季風書;葡萄牙;錫蘭;肉桂貿易;殖民檔案', '葡荷殖民（1505–1658）', '斯里蘭卡（哥倫坡）・葡萄牙（里斯本）', NULL, '荷蘭VOC錫蘭統治檔案', NULL, '葡萄牙國家檔案館（Digitarq）', '2026-08-01', 'ARR', '官方檔案數位庫，線上檢索', '已收錄 metadata', NULL, '葡治時期檔案補全', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1361, '斯里蘭卡考古部銘文與錢幣', '斯里蘭卡考古部', '西元前3世紀–康提時期', 84, 8, '斯里蘭卡考古部', 'LK-ST-13', 'https://archaeology.gov.lk/index.php/about/sections/epigraphy-and-numismatic', 'si;ta;pa', '1890年成立之考古調查機構，銘文暨錢幣處負責島內碑銘拓製・登錄・譯註與出版（如《Inscriptions of Ceylon》系列），涵蓋婆羅米早期銘文至康提石刻與坦米爾銅板文書，為重建古代王統之實物證據庫', '碑銘;銘文;錢幣;婆羅米;銅板文書', '古斯里蘭卡（西元前3世紀–康提時期）', '斯里蘭卡全國', NULL, '可倫坡國家博物館', NULL, '斯里蘭卡考古部（銘文處）', '2026-08-01', 'ARR', '官方考古機構，線上瀏覽', '已收錄 metadata', NULL, '島內碑銘實物庫', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1362, '皇家亞洲學會斯里蘭卡期刊（JRASSL）', '皇家亞洲學會斯里蘭卡', '1845–迄今', 88, 3, '皇家亞洲學會斯里蘭卡', 'LK-ST-14', 'https://royalasiaticsociety.lk/publications/journal/', 'en;si;ta', '1845年創立之島上最古老學術組織，期刊自《Journal of the Ceylon Branch of the RAS》一脈相承，刊載考古・銘文・史學與民族誌研究（1845–1971部分收錄於JSTOR），並藏亞洲研究專書圖書館', '皇家亞洲學會;學術期刊;考古;民族誌;史學', '斯里蘭卡（1845–迄今）', '斯里蘭卡（可倫坡）', NULL, '斯里蘭卡考古部銘文與錢幣', NULL, '皇家亞洲學會斯里蘭卡（期刊）', '2026-08-01', 'ARR', '學術機構典藏，線上瀏覽', '已收錄 metadata', NULL, '島上最古老學術期刊', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1363, '阿努拉德普勒聖城', '斯里蘭卡考古部／中央文化基金會', '西元前4世紀–993', 84, 7, 'UNESCO世界遺產中心', 'LK-ST-15', 'https://whc.unesco.org/en/list/200/', 'si;en', '以菩提樹分枝所立佛教聖城，1300年間為錫蘭政治與宗教中心，993年遭朱羅人摧毀，存大佛塔・無畏山寺與巨構灌溉系統，1982年登錄UNESCO世界文化遺產，為早期僧伽羅文明與水利工程之代表', '阿努拉德普勒;佛教聖城;世界遺產;灌溉;大佛塔', '古斯里蘭卡（西元前4世紀–993）', '斯里蘭卡（北中省・阿努拉德普勒）', NULL, '波隆納魯瓦古城', NULL, 'UNESCO世界遺產中心（官方紀錄）', '2026-08-01', 'ARR', '世界遺產官方資料，線上瀏覽', '已收錄 metadata', NULL, 'UNESCO世界遺產1982', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1364, '波隆納魯瓦古城', '斯里蘭卡考古部', '11–13世紀', 84, 7, 'UNESCO世界遺產中心', 'LK-ST-16', 'https://whc.unesco.org/en/list/201/', 'si;en', '993年阿努拉德普勒毀城後之第二都城，含朱羅王朝印度教建築與帕拉克拉馬巴胡一世花園城遺跡及「帕拉克拉馬海」水庫，1982年登錄UNESCO世界文化遺產，為中世紀王權與農業文明之標誌', '波隆納魯瓦;世界遺產;帕拉克拉馬巴胡;花園城;水庫', '古斯里蘭卡（11–13世紀）', '斯里蘭卡（北中省・波隆納魯瓦）', NULL, '阿努拉德普勒聖城', NULL, 'UNESCO世界遺產中心（官方紀錄）', '2026-08-01', 'ARR', '世界遺產官方資料，線上瀏覽', '已收錄 metadata', NULL, 'UNESCO世界遺產1982', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1365, '錫吉里耶獅子岩', '斯里蘭卡考古部', '477–495', 84, 7, 'UNESCO世界遺產中心', 'LK-ST-17', 'https://whc.unesco.org/en/list/202/', 'si;en', '國王迦葉波一世所築磐石都城，高180公尺花崗岩峰存宮殿・知名彩繪壁畫與鏡牆銘文，1982年登錄UNESCO世界文化遺產，為斯里蘭卡最著名之文化景觀與美術寶庫', '錫吉里耶;獅子岩;世界遺產;壁畫;磐石都城', '古斯里蘭卡（477–495）', '斯里蘭卡（中央省・錫吉里耶）', NULL, '康提聖城與佛牙寺', NULL, 'UNESCO世界遺產中心（官方紀錄）', '2026-08-01', 'ARR', '世界遺產官方資料，線上瀏覽', '已收錄 metadata', NULL, 'UNESCO世界遺產1982', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1366, '康提聖城與佛牙寺', '斯里蘭卡考古部／中央文化基金會', '1592–1815', 85, 7, 'UNESCO世界遺產中心', 'LK-ST-18', 'https://whc.unesco.org/en/list/450/', 'si;en', '僧伽羅王朝最後都城，供奉佛牙舍利之達拉達馬利加瓦為最神聖聖地，1815年英軍入城終結王權，1988年登錄UNESCO世界文化遺產，為佛教信仰與王權政治結合之典範', '康提;佛牙寺;世界遺產;佛教;王權', '康提王國（1592–1815）', '斯里蘭卡（中央省・康提）', NULL, '錫吉里耶獅子岩', NULL, 'UNESCO世界遺產中心（官方紀錄）', '2026-08-01', 'ARR', '世界遺產官方資料，線上瀏覽', '已收錄 metadata', NULL, 'UNESCO世界遺產1988', 'SA') ON CONFLICT (id) DO NOTHING;

SELECT setval('sources_id_seq', 1366) WHERE NOT EXISTS (SELECT 1 FROM sources WHERE id = 1366);
SELECT setval('sources_id_seq', (SELECT COALESCE(MAX(id), 0) FROM sources));

-- === 3. 史料←→資料類型 ===
INSERT INTO source_materials (source_id, material_type_id) VALUES
  (1314, 1),
  (1314, 2),
  (1315, 1),
  (1315, 2),
  (1316, 1),
  (1317, 1),
  (1317, 2),
  (1318, 2),
  (1319, 2),
  (1320, 2),
  (1321, 2),
  (1321, 4),
  (1322, 1),
  (1322, 2),
  (1323, 1),
  (1323, 3),
  (1324, 1),
  (1325, 1),
  (1325, 3),
  (1326, 1),
  (1327, 4),
  (1327, 2),
  (1328, 1),
  (1329, 2),
  (1329, 1),
  (1330, 1),
  (1330, 2),
  (1330, 3),
  (1331, 4),
  (1331, 1),
  (1332, 1),
  (1332, 2),
  (1333, 1),
  (1334, 2),
  (1335, 2),
  (1335, 4),
  (1336, 2),
  (1336, 4),
  (1337, 2),
  (1338, 2),
  (1338, 1),
  (1339, 1),
  (1340, 1),
  (1340, 2),
  (1341, 1),
  (1341, 2),
  (1342, 4),
  (1342, 1),
  (1343, 2),
  (1343, 3),
  (1344, 1),
  (1344, 2),
  (1345, 1),
  (1345, 2),
  (1345, 3),
  (1346, 2),
  (1347, 4),
  (1347, 1),
  (1348, 1),
  (1348, 2),
  (1349, 2),
  (1349, 1),
  (1350, 1),
  (1350, 2),
  (1351, 1),
  (1351, 2),
  (1351, 3),
  (1352, 1),
  (1353, 2),
  (1353, 4),
  (1354, 1),
  (1354, 2),
  (1354, 4),
  (1355, 2),
  (1355, 1),
  (1356, 1),
  (1356, 2),
  (1357, 2),
  (1357, 1),
  (1358, 1),
  (1358, 2),
  (1359, 1),
  (1359, 2),
  (1360, 1),
  (1360, 2),
  (1360, 3),
  (1361, 2),
  (1361, 1),
  (1362, 1),
  (1362, 2),
  (1363, 2),
  (1363, 3),
  (1364, 2),
  (1364, 3),
  (1365, 2),
  (1365, 3),
  (1366, 2),
  (1366, 3)
ON CONFLICT DO NOTHING;

-- === 4. 史料←→來源機構 ===
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (1314, 364, 'source'),
  (1314, 364, 'contributor'),
  (1315, 364, 'source'),
  (1315, 364, 'contributor'),
  (1316, 363, 'source'),
  (1316, 363, 'contributor'),
  (1317, 387, 'source'),
  (1317, 387, 'contributor'),
  (1318, 361, 'source'),
  (1318, 361, 'contributor'),
  (1319, 362, 'source'),
  (1319, 362, 'contributor'),
  (1320, 381, 'source'),
  (1320, 381, 'contributor'),
  (1321, 397, 'source'),
  (1321, 397, 'contributor'),
  (1322, 365, 'source'),
  (1322, 365, 'contributor'),
  (1323, 388, 'source'),
  (1323, 388, 'contributor'),
  (1324, 382, 'source'),
  (1324, 382, 'contributor'),
  (1325, 386, 'source'),
  (1325, 386, 'contributor'),
  (1326, 394, 'source'),
  (1326, 394, 'contributor'),
  (1327, 383, 'source'),
  (1328, 370, 'source'),
  (1328, 369, 'contributor'),
  (1329, 359, 'source'),
  (1329, 359, 'contributor'),
  (1330, 6, 'source'),
  (1330, 6, 'contributor'),
  (1331, 367, 'source'),
  (1331, 358, 'contributor'),
  (1332, 377, 'source'),
  (1332, 377, 'contributor'),
  (1333, 376, 'source'),
  (1333, 376, 'contributor'),
  (1334, 375, 'source'),
  (1334, 375, 'contributor'),
  (1335, 396, 'source'),
  (1335, 396, 'contributor'),
  (1336, 379, 'source'),
  (1336, 379, 'contributor'),
  (1337, 372, 'source'),
  (1337, 372, 'contributor'),
  (1338, 368, 'source'),
  (1338, 368, 'contributor'),
  (1339, 380, 'source')
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (1339, 380, 'contributor'),
  (1340, 373, 'source'),
  (1340, 373, 'contributor'),
  (1341, 378, 'source'),
  (1341, 378, 'contributor'),
  (1342, 374, 'source'),
  (1342, 374, 'contributor'),
  (1343, 360, 'source'),
  (1343, 360, 'contributor'),
  (1344, 366, 'source'),
  (1344, 366, 'contributor'),
  (1345, 6, 'source'),
  (1345, 6, 'contributor'),
  (1346, 356, 'source'),
  (1346, 356, 'contributor'),
  (1347, 367, 'source'),
  (1347, 358, 'contributor'),
  (1348, 6, 'source'),
  (1348, 6, 'contributor'),
  (1349, 371, 'source'),
  (1349, 371, 'contributor'),
  (1350, 393, 'source'),
  (1350, 393, 'contributor'),
  (1351, 75, 'source'),
  (1351, 75, 'contributor'),
  (1352, 393, 'source'),
  (1352, 75, 'contributor'),
  (1353, 392, 'source'),
  (1353, 392, 'contributor'),
  (1354, 389, 'source'),
  (1354, 389, 'contributor'),
  (1355, 389, 'source'),
  (1355, 389, 'contributor'),
  (1356, 390, 'source'),
  (1356, 390, 'contributor'),
  (1357, 385, 'source'),
  (1357, 385, 'contributor'),
  (1358, 94, 'source'),
  (1358, 94, 'contributor'),
  (1359, 6, 'source'),
  (1359, 6, 'contributor'),
  (1360, 395, 'source'),
  (1360, 395, 'contributor'),
  (1361, 391, 'source'),
  (1361, 391, 'contributor'),
  (1362, 384, 'source'),
  (1362, 384, 'contributor'),
  (1363, 360, 'source'),
  (1363, 360, 'contributor'),
  (1364, 360, 'source')
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (1364, 360, 'contributor'),
  (1365, 360, 'source'),
  (1365, 360, 'contributor'),
  (1366, 360, 'source'),
  (1366, 360, 'contributor')
ON CONFLICT DO NOTHING;

-- === 完成 ===
