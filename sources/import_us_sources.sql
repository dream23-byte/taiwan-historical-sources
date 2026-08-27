-- ============================================================
-- 東亞歷史權威史料庫 — 美國史料匯入 SQL（增量模式）
-- 由 Import-UStoSupabase.ps1 v1 自動產生
-- ============================================================

-- === 0. 美國時期（僅首次執行） ===
INSERT INTO periods (id, code, name_zh, start_year, end_year, sort_order, region) OVERRIDING SYSTEM VALUE VALUES
  (113, 'us-colonial-revolution', '殖民地與獨立時期（1607–1789）', 1607, 1789, 113, 'US'),
  (114, 'us-early-republic', '早期共和國（1789–1861）', 1789, 1861, 114, 'US'),
  (115, 'us-civil-war', '南北戰爭時期（1861–1865）', 1861, 1865, 115, 'US'),
  (116, 'us-reconstruction-gilded', '重建與鍍金時代（1865–1929）', 1865, 1929, 116, 'US'),
  (117, 'us-great-depression-ww2', '大蕭條與二戰（1929–1945）', 1929, 1945, 117, 'US'),
  (118, 'us-cold-war', '冷戰時期（1945–1991）', 1945, 1991, 118, 'US'),
  (119, 'us-modern', '當代美國（1991–迄今）', 1991, NULL, 119, 'US')
ON CONFLICT (id) DO NOTHING;

-- === 1. 來源機構（僅新增者） ===
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (398, 'ADST') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (399, 'Association for Diplomatic Studies and Training') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (400, 'Avalon Project') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (401, 'Central Intelligence Agency') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (402, 'Digital Public Library of America') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (403, 'Ellis Island Foundation') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (404, 'Environmental Protection Agency') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (405, 'George Washington University') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (406, 'IPUMS') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (407, 'Library of Congress') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (408, 'NARA') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (409, 'National Archives') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (410, 'National Archives and Records Administration') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (411, 'National Endowment for the Humanities') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (412, 'National Park Service') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (413, 'National Security Archive') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (414, 'Office of the Federal Register') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (415, 'Office of the Historian') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (416, 'Smithsonian Institution') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (417, 'U.S. Census Bureau') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (418, 'U.S. Department of Defense') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (419, 'U.S. Department of Energy') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (420, 'U.S. Government Publishing Office') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (421, 'Various Institutions') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (422, 'Yale Law School') ON CONFLICT (name_zh) DO NOTHING;

SELECT setval('institutions_id_seq', 422);

-- === 2. 主要史料 ===
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1377, '美國建國文獻（獨立宣言、憲法、權利法案）', 'America''s Founding Documents', '1776–1791', 113, 1, 'National Archives and Records Administration (NARA)', 'US-ST-01', 'https://www.archives.gov/founding-docs', '英語', '美國三大建國文獻數位原件：《獨立宣言》（1776）、《美國憲法》（1787）與《權利法案》（1791），由 NARA 提供高解析度掃描與全文檢索。', '美國建國；憲政史；獨立戰爭；權利法案', '1776–1791', '美國', NULL, NULL, 'National Archives and Records Administration (NARA)', NULL, '2026-08-20', '公共領域', '美國聯邦政府文件，公共領域', '已收錄', NULL, 'NARA 核心館藏；美國建國三大文件', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1378, '美國國家檔案館目錄（NARA Catalog）', 'National Archives and Records Administration', '1775–迄今', 113, 1, 'National Archives and Records Administration (NARA)', 'US-ST-02', 'https://catalog.archives.gov', '英語', '美國國家檔案館線上目錄，收錄聯邦政府機構產生的檔案文書、照片、地圖、影音等，涵蓋獨立戰爭至當代，提供 API 可程式化查詢。', '聯邦檔案；政府記錄；歷史文獻', '1775–迄今', '美國', 'National Archives Catalog API 提供 JSON 格式查詢', NULL, 'National Archives and Records Administration (NARA)', NULL, '2026-08-20', '公共領域', '美國聯邦政府資料，公共領域', '已收錄', NULL, 'NARA 主目錄；100億+頁檔案記錄', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1379, '美國國會圖書館數位館藏', 'Library of Congress', '1800–迄今', 114, 1, 'Library of Congress', 'US-ST-03', 'https://www.loc.gov/collections/', '英語', '美國國會圖書館數位館藏總目錄，收錄 1500 萬件以上數位化文物，包括手稿、照片、地圖、報刊、影音等，提供 loc.gov JSON API 查詢。', '美國文化遺產；數位館藏；多媒體', '1800–迄今', '美國', 'loc.gov JSON API 支援結構化查詢', NULL, 'Library of Congress', NULL, '2026-08-20', '公共領域', '美國國會圖書館館藏，多數公共領域', '已收錄', NULL, '美國最大圖書館；15M+ 數位化文物', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1380, 'Chronicling America 美國歷史報紙', 'Library of Congress / NEH', '1777–1963', 113, 3, 'Library of Congress / National Endowment for the Humanities', 'US-ST-04', 'https://chroniclingamerica.loc.gov', '英語', '美國歷史報紙數位計畫（NDNP），由國會圖書館與 NEH 合作，收錄 1777–1963 年間美國各州數百萬頁報紙掃描，支援全文檢索與 API 查詢。', '美國報業史；新聞史；社會史', '1777–1963', '美國', 'Chronicling America API 提供 JSON 格式查詢', NULL, 'Library of Congress / National Endowment for the Humanities', NULL, '2026-08-20', '公共領域', '美國聯邦政府與 NEH 合作計畫，公共領域', '已收錄', NULL, '12M+ 頁歷史報紙；涵蓋全美各州', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1381, '美國外交關係叢書（FRUS）', 'U.S. Department of State', '1861–迄今', NULL, 1, 'Office of the Historian', 'U.S. Department of State', 'US-ST-05', 'https://history.state.gov/historicaldocuments', '英語', '美國政府官方外交政策文獻叢書，由國務院歷史辦公室編纂，收錄 1861 年至今主要外交決策文件，已出版 450+ 卷。', '美國外交史；國際關係；冷戰史；外交文件', '1861–迄今', '全球', NULL, NULL, 'Office of the Historian', 'U.S. Department of State', NULL, '2026-08-20', '公共領域', NULL, '美國聯邦政府出版品，公共領域', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1382, '美國國會立法資訊（Congress.gov）', 'Library of Congress', '1973–迄今', 119, 1, 'Library of Congress', 'US-ST-06', 'https://www.congress.gov', '英語', '美國國會官方立法資訊網站，提供法案文本、投票記錄、委員會紀錄、國會議員資訊等，涵蓋 1973 年至今，提供 API 查詢。', '美國國會；立法史；法案紀錄', '1973–迄今', '美國', 'Congress.gov API 支援 JSON 格式查詢', NULL, 'Library of Congress', NULL, '2026-08-20', '公共領域', '美國國會圖書館維護，公共領域', '已收錄', NULL, '美國國會官方資料；API 可用', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1383, '美國總統公開文件', 'Office of the Federal Register / National Archives', '1929–迄今', 117, 1, 'National Archives and Records Administration (NARA)', 'US-ST-07', 'https://www.govinfo.gov/app/collection/ppp', '英語', '美國總統公開文件叢書，收錄總統公開演說、聲明、行政命令等，由國家檔案館聯邦登記辦公室出版，1929 年至今。', '美國總統；行政命令；公開演說；政治史', '1929–迄今', '美國', NULL, NULL, 'Office of the Federal Register / NARA', NULL, '2026-08-20', '公共領域', '美國聯邦政府出版品，公共領域', '已收錄', NULL, '總統公開文件；GovInfo 數位化', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1384, 'Founders Online 美國開國元勳文獻', 'National Archives and Records Administration', '1763–1827', 113, 4, 'National Archives and Records Administration (NARA)', 'US-ST-08', 'https://founders.archives.gov', '英語', '美國六大開國元勳（華盛頓、富蘭克林、亞當斯、傑佛遜、漢米爾頓、麥迪遜）的書信與文件數位化計畫，由 NARA 與大學合作，收錄 1763–1827 年間文獻。', '開國元勳；美國革命；建國初期；書信', '1763–1827', '美國', NULL, NULL, 'National Archives and Records Administration (NARA)', NULL, '2026-08-20', '公共領域', '美國聯邦政府與學術機構合作，公共領域', '已收錄', NULL, '六大開國元勳文件數位化', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1385, '美國聯邦法典（CFR）', 'Office of the Federal Register', '1996–迄今', 119, 1, 'Office of the Federal Register / National Archives', 'US-ST-09', 'https://www.ecfr.gov', '英語', '美國聯邦法規彙編（Code of Federal Regulations），收錄聯邦政府機構發布的一般性與永久性規則，1996 年起數位化可查。', '美國聯邦法規；行政規則；政府治理', '1996–迄今', '美國', NULL, NULL, 'Office of the Federal Register / NARA', NULL, '2026-08-20', '公共領域', '美國聯邦政府法規彙編，公共領域', '已收錄', NULL, '美國聯邦法規全文；年度更新', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1386, '美國聯邦公報（Federal Register）', 'Office of the Federal Register', '2000–迄今', 119, 1, 'Office of the Federal Register / National Archives', 'US-ST-10', 'https://www.federalregister.gov', '英語', '美國聯邦政府的官方法律報紙，記錄聯邦機構的法規命令、公告、聽證通知等，2000 年起數位化。', '聯邦公報；行政命令；法規公告', '2000–迄今', '美國', 'Federal Register API 支援結構化查詢', NULL, 'Office of the Federal Register / NARA', NULL, '2026-08-20', '公共領域', '美國聯邦政府官方報紙，公共領域', '已收錄', NULL, '每日發行；API 可用', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1387, '美國人口普查歷史資料', 'U.S. Census Bureau', '1790–迄今', 114, 6, 'U.S. Census Bureau / National Archives', 'US-ST-11', 'https://www.census.gov/history', '英語', '美國十年一次人口普查的歷史資料與統計數據，從 1790 年第一次普查至今，提供人口、經濟、社會統計。', '人口普查；人口統計；美國社會史', '1790–迄今', '美國', NULL, NULL, 'U.S. Census Bureau', NULL, '2026-08-20', '公共領域', '美國聯邦政府統計資料，公共領域', '已收錄', NULL, '美國最長壽統計調查；230+ 年歷史', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1388, '美國歷史人口普查 1790–2020', 'IPUMS / U.S. Census Bureau', '1790–2020', 114, 6, 'IPUMS (University of Minnesota) / U.S. Census Bureau', 'US-ST-12', 'https://www.ipums.org', '英語', '由明尼蘇達大學 IPUMS 計畫整合的美國歷史人口普查微資料，涵蓋 1790–2020 年，提供標準化格式供學術研究使用。', '人口普查；微資料；社會經濟史；學術研究', '1790–2020', '美國', NULL, NULL, 'IPUMS (University of Minnesota) / U.S. Census Bureau', NULL, '2026-08-20', '學術授權', '學術研究使用，需註明出處', '已收錄', NULL, '美國人口普查微資料整合平台', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1389, '耶魯法律圖書館阿瓦隆計畫', 'Yale Law School', '古代–1960年代', 113, 7, 'Yale Law School / Avalon Project', 'US-ST-13', 'https://avalon.law.yale.edu', '英語', '耶魯大學法律圖書館「阿瓦隆計畫」，收錄法律、歷史、外交領域的重要數位文件，從古代到 1960 年代，包括美國獨立宣言、憲法、重要條約與判例。', '法律文獻；外交條約；憲政史；歷史文件', '古代–1960年代', '全球', NULL, NULL, 'Yale Law School', NULL, '2026-08-20', '公共領域', '學術機構數位典藏，公共領域', '已收錄', 'Yale Law School / Avalon Project', '耶魯大學法律圖書館；重要法律歷史文件', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1390, '美國國立史密森尼博物館', 'Smithsonian Institution', '1846–迄今', 116, 5, 'Smithsonian Institution', 'US-ST-14', 'https://www.si.edu/collections', '英語', '史密森尼學會旗下 19 座博物館與研究機構的線上館藏，包括美國歷史國家博物館、國家航空航天博物館等，提供 Smithsonian Open Access 開放取用。', '美國歷史；博物館館藏；科學文化；航空航天', '1846–迄今', '美國', NULL, NULL, 'Smithsonian Institution', NULL, '2026-08-20', '公共領域（多數館藏）', 'Smithsonian Open Access 開放計畫，多數館藏公共領域', '已收錄', NULL, '19 座博物館；全球最大博物館系統之一', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1391, '美國國家安全檔案館', 'George Washington University', '1940s–迄今', 118, 1, 'George Washington University / National Security Archive', 'US-ST-15', 'https://nsarchive.gwu.edu', '英語', '喬治華盛頓大學「國家安全檔案館」，專門收集美國政府解密文件的獨立研究機構，收錄冷戰至今各時期重要國安文件。', '解密文件；冷戰；國家安全；情報史', '1940s–迄今', '全球', NULL, NULL, 'George Washington University', NULL, '2026-08-20', '公共領域', '學術機構解密文件典藏，公共領域', '已收錄', NULL, '全球最大解密文件收藏；學術研究導向', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1392, '美國國會記錄（Congressional Record）', 'U.S. Government Publishing Office', '1873–迄今', 116, 1, 'U.S. Government Publishing Office (GPO)', 'US-ST-16', 'https://www.govinfo.gov/app/collection/crec', '英語', '美國國會會議的官方逐字記錄，涵蓋參眾兩院議事發言、投票紀錄、委員會報告等，1873 年至今。', '國會記錄；議事發言；立法史', '1873–迄今', '美國', NULL, NULL, 'U.S. Government Publishing Office (GPO)', NULL, '2026-08-20', '公共領域', '美國聯邦政府出版品，公共領域', '已收錄', NULL, '國會官方逐字記錄；150+ 年歷史', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1393, '美國獨立戰爭數位檔案', 'Library of Congress / Various', '1763–1800', 113, NULL, 'Library of Congress / Various Institutions', 'US-ST-17', 'https://www.loc.gov/collections/?q=revolutionary+war', '英語', '美國國會圖書館及其他機構的美國獨立戰爭相關數位館藏，包括手稿、軍事文件、地圖、版畫、照片等。', '獨立戰爭；美國革命；軍事史；殖民地', '1763–1800', '北美殖民地', NULL, NULL, 'Library of Congress / Various Institutions', NULL, '2026-08-20', '公共領域', '多機構合作館藏，多數公共領域', '已收錄', NULL, '獨立戰爭主要數位化文物', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1394, '美國南北戰爭數位檔案', 'National Archives / Library of Congress', '1861–1865', 115, NULL, 'National Archives and Records Administration / Library of Congress', 'US-ST-18', 'https://www.archives.gov/research/military/civil-war', '英語', '美國國家檔案館與國會圖書館的南北戰爭相關數位館藏，包括軍事記錄、照片、地圖、士兵名冊等。', '南北戰爭；內戰；軍事史；奴隸制度', '1861–1865', '美國', NULL, NULL, 'NARA / Library of Congress', NULL, '2026-08-20', '公共領域', '美國聯邦政府與圖書館館藏，公共領域', '已收錄', NULL, '南北戰爭主要數位化文物', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1395, '美國大蕭條與新政檔案', 'National Archives / Library of Congress', '1929–1941', 117, NULL, 'National Archives and Records Administration / Library of Congress', 'US-ST-19', 'https://www.archives.gov/research/great-depression', '英語', '美國國家檔案館與國會圖書館的大蕭條與新政時期相關數位館藏，包括羅斯福總統文件、WPA 計畫紀錄、社會調查等。', '大蕭條；新政；經濟史；羅斯福', '1929–1941', '美國', NULL, NULL, 'NARA / Library of Congress', NULL, '2026-08-20', '公共領域', '美國聯邦政府與圖書館館藏，公共領域', '已收錄', NULL, '大蕭條與新政數位化文物', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1396, '美國二戰數位檔案', 'National Archives', '1939–1945', 117, NULL, 'National Archives and Records Administration', 'US-ST-20', 'https://www.archives.gov/research/military/ww2', '英語', '美國國家檔案館的二戰相關數位館藏，包括軍事行動紀錄、戰爭罪行審判、戰俘記錄、軍事照片與影片等。', '第二次世界大戰；二戰；軍事史；戰爭罪行', '1939–1945', '全球', NULL, NULL, 'National Archives and Records Administration', NULL, '2026-08-20', '公共領域', '美國聯邦政府檔案，公共領域', '已收錄', NULL, '二戰主要數位化文物；軍事檔案', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1397, '美國越戰數位檔案', 'National Archives', '1955–1975', 118, NULL, 'National Archives and Records Administration', 'US-ST-21', 'https://www.archives.gov/research/military/vietnam-war', '英語', '美國國家檔案館的越戰相關數位館藏，包括軍事行動紀錄、戰俘與失蹤人員記錄、政治文件、照片與影音等。', '越南戰爭；越戰；軍事史；冷戰', '1955–1975', '越南；東南亞', NULL, NULL, 'National Archives and Records Administration', NULL, '2026-08-20', '公共領域', '美國聯邦政府檔案，公共領域', '已收錄', NULL, '越戰主要數位化文物；軍事檔案', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1398, '美國總統圖書館系統', 'National Archives / Presidential Libraries', '1921–迄今', 118, 1, 'National Archives and Records Administration', 'US-ST-22', 'https://www.archives.gov/presidential-libraries', '英語', 'NARA 維護的總統圖書館系統，收錄各任總統任內文件、文物、照片、影音等，從胡佛（1921）至今。', '美國總統；行政文件；政治史', '1921–迄今', '美國', NULL, NULL, 'National Archives and Records Administration', NULL, '2026-08-20', '公共領域', '美國聯邦政府檔案，公共領域', '已收錄', NULL, '15 座總統圖書館；各任總統文件', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1399, '美國婦女選舉權檔案', 'Library of Congress / National Archives', '1848–1920', NULL, NULL, 'Library of Congress / National Archives', 'US-ST-23', 'https://www.loc.gov/collections/?q=woman+suffrage', '英語', '美國婦女選舉權運動的相關歷史文件，包括國會圖書館與國家檔案館的數位化文物，涵蓋塞內卡瀑布會議到第十九修正案通過。', '婦女選舉權；女權運動；第十九修正案', '1848–1920', '美國', NULL, NULL, 'Library of Congress / National Archives', NULL, '2026-08-20', '公共領域', '美國聯邦政府與圖書館館藏，公共領域', '已收錄', NULL, '女權運動重要數位化文物', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1400, '美國民權運動檔案', 'Library of Congress / National Archives', '1954–1968', 118, NULL, 'Library of Congress / National Archives', 'US-ST-24', 'https://www.loc.gov/collections/?q=civil+rights', '英語', '美國民權運動的相關歷史文件與口述歷史，包括金恩博士演說、國會民權法案紀錄、法院判例等。', '民權運動；種族平等；金恩博士；民權法案', '1954–1968', '美國', NULL, NULL, 'Library of Congress / National Archives', NULL, '2026-08-20', '公共領域', '美國聯邦政府與圖書館館藏，公共領域', '已收錄', NULL, '民權運動重要數位化文物', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1401, '美國原住民歷史檔案', 'National Archives / Smithsonian', '1600s–迄今', 113, NULL, 'National Archives and Records Administration / Smithsonian Institution', 'US-ST-25', 'https://www.archives.gov/research/native-americans', '英語', '美國國家檔案館與史密森尼博物館的原住民歷史相關數位館藏，包括條約文件、人口調查、保留地紀錄等。', '原住民歷史；印第安條約；美洲原住民', '1600s–迄今', '北美', NULL, NULL, 'NARA / Smithsonian Institution', NULL, '2026-08-20', '公共領域', '美國聯邦政府與博物館館藏，公共領域', '已收錄', NULL, '原住民歷史重要數位化文物', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1402, '美國種植園紀錄與奴隸制度檔案', 'Library of Congress / National Archives', '1600s–1865', 113, NULL, 'Library of Congress / National Archives', 'US-ST-26', 'https://www.loc.gov/collections/?q=slavery', '英語', '美國奴隸制度與種植園的歷史文件數位化，包括奴隸買賣紀錄、種植園帳冊、 emancipation 相關文件等。', '奴隸制度；種植園；解放宣言；黑人歷史', '1600s–1865', '美國南部', NULL, NULL, 'Library of Congress / National Archives', NULL, '2026-08-20', '公共領域', '美國聯邦政府與圖書館館藏，公共領域', '已收錄', NULL, '奴隸制度歷史重要數位化文物', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1403, '美國移民與入境紀錄', 'National Archives / Ellis Island', '1820–1957', 114, 1, 'National Archives and Records Administration / Ellis Island Foundation', 'US-ST-27', 'https://www.archives.gov/research/immigration', '英語', '美國國家檔案館與愛麗絲島基金會的移民入境紀錄，包括乘客名單、入境審查、歸化紀錄等。', '移民史；入境紀錄；愛麗絲島；歸化', '1820–1957', '美國', NULL, NULL, 'NARA / Ellis Island Foundation', NULL, '2026-08-20', '公共領域', '美國聯邦政府檔案與非營利組織，公共領域', '已收錄', NULL, '移民歷史重要數位化文物', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1404, '美國科學與科技歷史檔案', 'Smithsonian Institution / National Archives', '1800s–迄今', 114, NULL, 'Smithsonian Institution / National Archives', 'US-ST-28', 'https://www.si.edu/collections/search', '英語', '史密森尼博物館與國家檔案館的科學與科技歷史相關數位館藏，包括航空航天、核能、太空探索、醫學等領域。', '科學史；科技史；航空航天；太空探索', '1800s–迄今', '美國；全球', NULL, NULL, 'Smithsonian Institution / NARA', NULL, '2026-08-20', '公共領域', '美國博物館與政府機構館藏，公共領域', '已收錄', NULL, '科學與科技歷史重要數位化文物', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1405, 'DPLA 數位公共圖書館', 'Digital Public Library of America', '1600s–迄今', 113, NULL, 'Digital Public Library of America (DPLA)', 'US-ST-29', 'https://dp.la', '英語', '美國數位公共圖書館聯盟（DPLA），聚合全美圖書館、博物館、檔案館的數位館藏元資料，提供跨機構統一搜尋，涵蓋從殖民時期至今。', '數位典藏；跨機構整合；美國文化遺產', '1600s–迄今', '美國', NULL, NULL, 'Digital Public Library of America (DPLA)', NULL, '2026-08-20', '各館授權不一', '聚合多館元資料，連結至原始館藏', '已收錄', NULL, '全美數位館藏聚合平台；3000 萬+ 筆', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1406, '美國外交口述歷史檔案', 'Library of Congress / ADST', '1950s–迄今', 118, 9, 'Library of Congress / Association for Diplomatic Studies and Training', 'US-ST-30', 'https://www.loc.gov/collections/foreign-affairs-oral-history/', '英語', '美國國會圖書館與外交研究與訓練協會（ADST）合作的外交口述歷史計畫，訪談美國外交官的職業生涯與重大外交事件。', '外交史；口述歷史；冷戰外交；國際關係', '1950s–迄今', '全球', NULL, NULL, 'Library of Congress / ADST', NULL, '2026-08-20', '公共領域', '美國國會圖書館與 ADST 合作，公共領域', '已收錄', NULL, '外交官口述歷史；20 世紀下半葉', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1407, '美國水門事件檔案', 'National Archives / Nixon Presidential Library', '1972–1974', 119, NULL, 'National Archives and Records Administration', 'US-ST-31', 'https://www.archives.gov/research/watergate', '英語', '美國國家檔案館的水門事件相關檔案，包括白宮錄音帶、尼克森總統文件、國會調查報告等。', '水門事件；尼克森；政治醜聞；憲政危機', '1972–1974', '美國', NULL, NULL, 'National Archives and Records Administration', NULL, '2026-08-20', '公共領域', '美國聯邦政府檔案，公共領域', '已收錄', NULL, '水門事件重要數位化文物', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1408, '美國國防部歷史檔案', 'Department of Defense / National Archives', '1947–迄今', 118, NULL, 'U.S. Department of Defense / National Archives', 'US-ST-32', 'https://www.history.defense.gov', '英語', '美國國防部歷史辦公室的數位館藏，包括軍事歷史報告、戰役紀錄、國防政策文件、軍事照片與影片等。', '國防史；軍事歷史；軍事政策；戰役紀錄', '1947–迄今', '全球', NULL, NULL, 'U.S. Department of Defense / NARA', NULL, '2026-08-20', '公共領域', '美國聯邦政府檔案，公共領域', '已收錄', NULL, '國防部歷史文件；冷戰至今', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1409, '美國情報檔案（CIA 解密檔案）', 'Central Intelligence Agency', '1940s–迄今', 118, 1, 'Central Intelligence Agency (CIA)', 'US-ST-33', 'https://www.cia.gov/readingroom/', '英語', '美國中央情報局解密文件檔案室，收錄冷戰至今各時期重要情報報告、分析文件、機密行動紀錄等，逐年解密公開。', '情報史；冷戰；國家安全；解密文件', '1940s–迄今', '全球', NULL, NULL, 'Central Intelligence Agency (CIA)', NULL, '2026-08-20', '公共領域', '美國聯邦政府解密文件，公共領域', '已收錄', NULL, '情報檔案解密室；冷戰情報文件', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1410, '美國能源部歷史檔案', 'Department of Energy / National Archives', '1940s–迄今', 118, 1, 'U.S. Department of Energy / National Archives', 'US-ST-34', 'https://www.energy.gov/history', '英語', '美國能源部歷史檔案，包括曼哈頓計畫、核能發展、能源政策等相關歷史文件與紀錄。', '核能史；曼哈頓計畫；能源政策；科學史', '1940s–迄今', '美國；全球', NULL, NULL, 'U.S. Department of Energy / NARA', NULL, '2026-08-20', '公共領域', '美國聯邦政府檔案，公共領域', '已收錄', NULL, '能源部歷史文件；核能發展', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1411, '美國環保署歷史檔案', 'Environmental Protection Agency', '1970–迄今', 119, 1, 'Environmental Protection Agency (EPA)', 'US-ST-35', 'https://www.epa.gov/history', '英語', '美國環保署歷史檔案，包括環保立法、環境污染事件、清潔空氣法等相關歷史文件。', '環保史；環境政策；清潔空氣法；環境保護', '1970–迄今', '美國', NULL, NULL, 'Environmental Protection Agency (EPA)', NULL, '2026-08-20', '公共領域', '美國聯邦政府檔案，公共領域', '已收錄', NULL, '環保署歷史文件', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1412, '美國國家公園管理局歷史檔案', 'National Park Service', '1872–迄今', 116, NULL, 'National Park Service / National Archives', 'US-ST-36', 'https://www.nps.gov/subjects/history', '英語', '美國國家公園管理局的歷史檔案，包括國家公園設立文件、保護區歷史、自然資源調查紀錄等。', '國家公園；自然保育；環境史；美國西部', '1872–迄今', '美國', NULL, NULL, 'National Park Service / NARA', NULL, '2026-08-20', '公共領域', '美國聯邦政府檔案，公共領域', '已收錄', 'National Park Service / National Archives', '國家公園歷史文件', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1413, '美國婦女歷史檔案', 'Library of Congress / National Archives', '1700s–迄今', 114, NULL, 'Library of Congress / National Archives', 'US-ST-37', 'https://www.loc.gov/collections/?q=women+history', '英語', '美國婦女歷史相關的數位化檔案，包括選舉權、勞工權益、女權運動等相關歷史文件。', '婦女史；女權運動；選舉權；勞工權益', '1700s–迄今', '美國', NULL, NULL, 'Library of Congress / NARA', NULL, '2026-08-20', '公共領域', '美國聯邦政府與圖書館館藏，公共領域', '已收錄', NULL, '婦女歷史重要數位化文物', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1414, '美國勞工運動檔案', 'Library of Congress / National Archives', '1800s–迄今', 114, NULL, 'Library of Congress / National Archives', 'US-ST-38', 'https://www.loc.gov/collections/?q=labor+history', '英語', '美國勞工運動的歷史檔案，包括工會紀錄、罷工事件、勞工立法、工人生活紀錄等。', '勞工運動；工會；罷工；勞工史', '1800s–迄今', '美國', NULL, NULL, 'Library of Congress / NARA', NULL, '2026-08-20', '公共領域', '美國聯邦政府與圖書館館藏，公共領域', '已收錄', NULL, '勞工運動重要數位化文物', 'US') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1415, '美國猶太歷史檔案', 'Library of Congress / Various', '1600s–迄今', 113, NULL, 'Library of Congress / Various Institutions', 'US-ST-39', 'https://www.loc.gov/collections/?q=jewish+history', '英語', '美國猶太歷史相關的數位化檔案，包括移民紀錄、社區文件、大屠殺倖存者證言等。', '猶太歷史；移民史；大屠殺；美國多元文化', '1600s–迄今', '美國；全球', NULL, NULL, 'Library of Congress / Various Institutions', NULL, '2026-08-20', '公共領域', '多機構合作館藏，多數公共領域', '已收錄', NULL, '猶太歷史重要數位化文物', 'US') ON CONFLICT (id) DO NOTHING;

SELECT setval('sources_id_seq', 1415) WHERE NOT EXISTS (SELECT 1 FROM sources WHERE id = 1415);
SELECT setval('sources_id_seq', (SELECT COALESCE(MAX(id), 0) FROM sources));

-- === 3. 史料←→資料類型 ===
INSERT INTO source_materials (source_id, material_type_id) VALUES
  (1377, 1),
  (1378, 1),
  (1379, 1),
  (1379, 2),
  (1380, 1),
  (1381, 1),
  (1382, 1),
  (1383, 1),
  (1384, 1),
  (1385, 1),
  (1386, 1),
  (1387, 1),
  (1388, 1),
  (1389, 1),
  (1390, 2),
  (1390, 1),
  (1391, 1),
  (1392, 1),
  (1393, 1),
  (1393, 2),
  (1394, 1),
  (1394, 2),
  (1395, 1),
  (1395, 2),
  (1396, 1),
  (1396, 2),
  (1397, 1),
  (1397, 2),
  (1398, 1),
  (1398, 2),
  (1399, 1),
  (1399, 2),
  (1400, 1),
  (1400, 2),
  (1400, 4),
  (1401, 1),
  (1401, 2),
  (1402, 1),
  (1402, 2),
  (1403, 1),
  (1404, 1),
  (1404, 2),
  (1405, 1),
  (1405, 2),
  (1406, 4),
  (1406, 1),
  (1407, 1),
  (1407, 2),
  (1408, 1),
  (1408, 2),
  (1409, 1),
  (1410, 1),
  (1411, 1),
  (1412, 1),
  (1412, 2),
  (1413, 1),
  (1413, 2),
  (1414, 1),
  (1414, 2),
  (1415, 1),
  (1415, 2)
ON CONFLICT DO NOTHING;

-- === 4. 史料←→來源機構 ===
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (1377, 410, 'source'),
  (1377, 410, 'publisher'),
  (1378, 410, 'source'),
  (1378, 410, 'publisher'),
  (1379, 407, 'source'),
  (1379, 407, 'publisher'),
  (1380, 407, 'source'),
  (1380, 411, 'source'),
  (1380, 407, 'publisher'),
  (1380, 411, 'publisher'),
  (1381, 415, 'source'),
  (1381, 415, 'contributor'),
  (1382, 407, 'source'),
  (1382, 407, 'publisher'),
  (1383, 410, 'source'),
  (1383, 414, 'publisher'),
  (1383, 408, 'publisher'),
  (1384, 410, 'source'),
  (1384, 410, 'publisher'),
  (1385, 414, 'source'),
  (1385, 409, 'source'),
  (1385, 414, 'publisher'),
  (1385, 408, 'publisher'),
  (1386, 414, 'source'),
  (1386, 409, 'source'),
  (1386, 414, 'publisher'),
  (1386, 408, 'publisher'),
  (1387, 417, 'source'),
  (1387, 409, 'source'),
  (1387, 417, 'publisher'),
  (1388, 406, 'source'),
  (1388, 417, 'source'),
  (1388, 406, 'publisher'),
  (1388, 417, 'publisher'),
  (1389, 422, 'source'),
  (1389, 400, 'source'),
  (1389, 422, 'publisher'),
  (1390, 416, 'source'),
  (1390, 416, 'publisher'),
  (1391, 405, 'source'),
  (1391, 413, 'source'),
  (1391, 405, 'publisher'),
  (1392, 420, 'source'),
  (1392, 420, 'publisher'),
  (1393, 407, 'source'),
  (1393, 421, 'source'),
  (1393, 407, 'publisher'),
  (1393, 421, 'publisher'),
  (1394, 410, 'source'),
  (1394, 407, 'source')
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (1394, 408, 'publisher'),
  (1394, 407, 'publisher'),
  (1395, 410, 'source'),
  (1395, 407, 'source'),
  (1395, 408, 'publisher'),
  (1395, 407, 'publisher'),
  (1396, 410, 'source'),
  (1396, 410, 'publisher'),
  (1397, 410, 'source'),
  (1397, 410, 'publisher'),
  (1398, 410, 'source'),
  (1398, 410, 'publisher'),
  (1399, 407, 'source'),
  (1399, 409, 'source'),
  (1399, 407, 'publisher'),
  (1399, 409, 'publisher'),
  (1400, 407, 'source'),
  (1400, 409, 'source'),
  (1400, 407, 'publisher'),
  (1400, 409, 'publisher'),
  (1401, 410, 'source'),
  (1401, 416, 'source'),
  (1401, 408, 'publisher'),
  (1401, 416, 'publisher'),
  (1402, 407, 'source'),
  (1402, 409, 'source'),
  (1402, 407, 'publisher'),
  (1402, 409, 'publisher'),
  (1403, 410, 'source'),
  (1403, 403, 'source'),
  (1403, 408, 'publisher'),
  (1403, 403, 'publisher'),
  (1404, 416, 'source'),
  (1404, 409, 'source'),
  (1404, 416, 'publisher'),
  (1404, 408, 'publisher'),
  (1405, 402, 'source'),
  (1405, 402, 'publisher'),
  (1406, 407, 'source'),
  (1406, 399, 'source'),
  (1406, 407, 'publisher'),
  (1406, 398, 'publisher'),
  (1407, 410, 'source'),
  (1407, 410, 'publisher'),
  (1408, 418, 'source'),
  (1408, 409, 'source'),
  (1408, 418, 'publisher'),
  (1408, 408, 'publisher'),
  (1409, 401, 'source'),
  (1409, 401, 'publisher')
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (1410, 419, 'source'),
  (1410, 409, 'source'),
  (1410, 419, 'publisher'),
  (1410, 408, 'publisher'),
  (1411, 404, 'source'),
  (1411, 404, 'publisher'),
  (1412, 412, 'source'),
  (1412, 409, 'source'),
  (1412, 412, 'publisher'),
  (1412, 408, 'publisher'),
  (1413, 407, 'source'),
  (1413, 409, 'source'),
  (1413, 407, 'publisher'),
  (1413, 408, 'publisher'),
  (1414, 407, 'source'),
  (1414, 409, 'source'),
  (1414, 407, 'publisher'),
  (1414, 408, 'publisher'),
  (1415, 407, 'source'),
  (1415, 421, 'source'),
  (1415, 407, 'publisher'),
  (1415, 421, 'publisher')
ON CONFLICT DO NOTHING;

-- === 完成 ===
