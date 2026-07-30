-- ============================================================
-- 台灣歷史權威史料資料庫 — 資料匯入 SQL
-- 由 Import-ToSupabase.ps1 v2 自動產生
-- ============================================================

-- === 1. 來源機構 ===
INSERT INTO institutions (id, name_zh) VALUES (1, 'Hurst and BlackettHurst and Blackett');
INSERT INTO institutions (id, name_zh) VALUES (2, 'THDL');
INSERT INTO institutions (id, name_zh) VALUES (3, 'VOC檔案');
INSERT INTO institutions (id, name_zh) VALUES (4, 'Wellcome Library');
INSERT INTO institutions (id, name_zh) VALUES (5, 'Wellcome Library 等');
INSERT INTO institutions (id, name_zh) VALUES (6, 'Wellcome LibraryWellcome Library');
INSERT INTO institutions (id, name_zh) VALUES (7, '二二八事件紀念基金會');
INSERT INTO institutions (id, name_zh) VALUES (8, '上海圖書館');
INSERT INTO institutions (id, name_zh) VALUES (9, '大英圖書館');
INSERT INTO institutions (id, name_zh) VALUES (10, '中央研究院歷史語言研究所');
INSERT INTO institutions (id, name_zh) VALUES (11, '中央氣象局中央氣象局');
INSERT INTO institutions (id, name_zh) VALUES (12, '中研院GIS');
INSERT INTO institutions (id, name_zh) VALUES (13, '中研院史語所');
INSERT INTO institutions (id, name_zh) VALUES (14, '中研院民族所數位典藏中研院民族學研究所');
INSERT INTO institutions (id, name_zh) VALUES (15, '中研院近史所');
INSERT INTO institutions (id, name_zh) VALUES (16, '中研院近史所檔案館');
INSERT INTO institutions (id, name_zh) VALUES (17, '中研院近史所檔案館中研院近史所');
INSERT INTO institutions (id, name_zh) VALUES (18, '中研院臺史所');
INSERT INTO institutions (id, name_zh) VALUES (19, '中研院臺史所中研院臺史所');
INSERT INTO institutions (id, name_zh) VALUES (20, '中研院臺史所碑碣資料庫中研院臺史所');
INSERT INTO institutions (id, name_zh) VALUES (21, '中研院臺史所檔案館');
INSERT INTO institutions (id, name_zh) VALUES (22, '中研院臺灣史研究所');
INSERT INTO institutions (id, name_zh) VALUES (23, '中研院臺灣史研究所中研院臺灣史研究所');
INSERT INTO institutions (id, name_zh) VALUES (24, '中研院臺灣史研究所碑碣資料庫');
INSERT INTO institutions (id, name_zh) VALUES (25, '中研院臺灣史研究所碑碣資料庫中研院臺史所');
INSERT INTO institutions (id, name_zh) VALUES (26, '中研院臺灣史研究所碑碣資料庫中研院臺灣史研究所中研院臺史所');
INSERT INTO institutions (id, name_zh) VALUES (27, '中研院歷史語言研究所檔案館中研院歷史語言研究所中研院史語所');
INSERT INTO institutions (id, name_zh) VALUES (28, '中國海關');
INSERT INTO institutions (id, name_zh) VALUES (29, '中國海關總稅務司');
INSERT INTO institutions (id, name_zh) VALUES (30, '中國第一歷史檔案館');
INSERT INTO institutions (id, name_zh) VALUES (31, '文化部文化資產局文化部文化資產局');
INSERT INTO institutions (id, name_zh) VALUES (32, '牛津大學出版社牛津大學出版社 前衛出版社');
INSERT INTO institutions (id, name_zh) VALUES (33, '成功大學成功大學');
INSERT INTO institutions (id, name_zh) VALUES (34, '成功大學考古學研究所成功大學考古學研究所');
INSERT INTO institutions (id, name_zh) VALUES (35, '成功大學建築系成功大學建築系');
INSERT INTO institutions (id, name_zh) VALUES (36, '宜蘭縣政府文化局宜蘭縣立蘭陽博物館');
INSERT INTO institutions (id, name_zh) VALUES (37, '東京大學總合研究博物館東京大學');
INSERT INTO institutions (id, name_zh) VALUES (38, '法國軍醫院檔案');
INSERT INTO institutions (id, name_zh) VALUES (39, '法國國家圖書館');
INSERT INTO institutions (id, name_zh) VALUES (40, '南天書局南天書局');
INSERT INTO institutions (id, name_zh) VALUES (41, '哈佛大學哈佛燕京圖書館');
INSERT INTO institutions (id, name_zh) VALUES (42, '哈佛燕京圖書館');
INSERT INTO institutions (id, name_zh) VALUES (43, '屏東縣政府文化處國立臺灣大學人類學系');
INSERT INTO institutions (id, name_zh) VALUES (44, '故宮清宮檔案');
INSERT INTO institutions (id, name_zh) VALUES (45, '美國耶魯大學出版社美國耶魯大學出版社');
INSERT INTO institutions (id, name_zh) VALUES (46, '美國國會圖書館');
INSERT INTO institutions (id, name_zh) VALUES (47, '英國海軍水文局');
INSERT INTO institutions (id, name_zh) VALUES (48, '英國檔案館');
INSERT INTO institutions (id, name_zh) VALUES (49, '香港大學圖書館香港大學圖書館');
INSERT INTO institutions (id, name_zh) VALUES (50, '海關報告');
INSERT INTO institutions (id, name_zh) VALUES (51, '海關檔案');
INSERT INTO institutions (id, name_zh) VALUES (52, '海關醫報');
INSERT INTO institutions (id, name_zh) VALUES (53, '真理大學校史館');
INSERT INTO institutions (id, name_zh) VALUES (54, '馬偕醫學院');
INSERT INTO institutions (id, name_zh) VALUES (55, '國史館臺灣文獻館');
INSERT INTO institutions (id, name_zh) VALUES (56, '國史館臺灣文獻館國史館臺灣文獻館');
INSERT INTO institutions (id, name_zh) VALUES (57, '國立自然科學博物館國立自然科學博物館');
INSERT INTO institutions (id, name_zh) VALUES (58, '國立故宮博物院');
INSERT INTO institutions (id, name_zh) VALUES (59, '國立故宮博物院國立故宮博物院');
INSERT INTO institutions (id, name_zh) VALUES (60, '國立臺灣大學');
INSERT INTO institutions (id, name_zh) VALUES (61, '國立臺灣大學、宋文薰');
INSERT INTO institutions (id, name_zh) VALUES (62, '國立臺灣大學人類學系國立臺灣大學');
INSERT INTO institutions (id, name_zh) VALUES (63, '國立臺灣大學人類學系張光直、國立臺灣大學、美國耶魯大學');
INSERT INTO institutions (id, name_zh) VALUES (64, '國立臺灣大學出版中心國立臺灣大學出版中心');
INSERT INTO institutions (id, name_zh) VALUES (65, '國立臺灣大學校史館國立臺灣大學校史館');
INSERT INTO institutions (id, name_zh) VALUES (66, '國立臺灣大學國立臺灣大學');
INSERT INTO institutions (id, name_zh) VALUES (67, '國立臺灣大學圖書館');
INSERT INTO institutions (id, name_zh) VALUES (68, '國立臺灣大學圖書館國立臺灣大學圖書館');
INSERT INTO institutions (id, name_zh) VALUES (69, '國立臺灣大學數位人文研究中心');
INSERT INTO institutions (id, name_zh) VALUES (70, '國立臺灣大學醫學院附設醫院國立臺灣大學醫學院');
INSERT INTO institutions (id, name_zh) VALUES (71, '國立臺灣大學醫學院國立臺灣大學醫學院');
INSERT INTO institutions (id, name_zh) VALUES (72, '國立臺灣史前文化博物館');
INSERT INTO institutions (id, name_zh) VALUES (73, '國立臺灣史前文化博物館卑南遺址公園連照美、宋文薰、國立臺灣大學');
INSERT INTO institutions (id, name_zh) VALUES (74, '國立臺灣史前文化博物館南科考古館');
INSERT INTO institutions (id, name_zh) VALUES (75, '國立臺灣史前文化博物館南科考古館國立臺灣史前文化博物館');
INSERT INTO institutions (id, name_zh) VALUES (76, '國立臺灣史前文化博物館國立臺灣史前文化博物館');
INSERT INTO institutions (id, name_zh) VALUES (77, '國立臺灣博物館');
INSERT INTO institutions (id, name_zh) VALUES (78, '國立臺灣博物館國立臺灣博物館');
INSERT INTO institutions (id, name_zh) VALUES (79, '國立臺灣博物館國立臺灣博物館國立臺灣博物館');
INSERT INTO institutions (id, name_zh) VALUES (80, '國立臺灣圖書館');
INSERT INTO institutions (id, name_zh) VALUES (81, '國立臺灣圖書館國立臺灣圖書館');
INSERT INTO institutions (id, name_zh) VALUES (82, '國立臺灣歷史博物館');
INSERT INTO institutions (id, name_zh) VALUES (83, '國立臺灣歷史博物館國立臺灣歷史博物館');
INSERT INTO institutions (id, name_zh) VALUES (84, '國立臺灣歷史博物館臺灣教會公報社國立臺灣歷史博物館');
INSERT INTO institutions (id, name_zh) VALUES (85, '國家人權博物館');
INSERT INTO institutions (id, name_zh) VALUES (86, '國家文化資產網');
INSERT INTO institutions (id, name_zh) VALUES (87, '國家文化資產網張光直、國立臺灣大學');
INSERT INTO institutions (id, name_zh) VALUES (88, '國家圖書館');
INSERT INTO institutions (id, name_zh) VALUES (89, '國家圖書館臺灣記憶');
INSERT INTO institutions (id, name_zh) VALUES (90, '國家圖書館臺灣記憶國家圖書館');
INSERT INTO institutions (id, name_zh) VALUES (91, '基隆市文化局');
INSERT INTO institutions (id, name_zh) VALUES (92, '婦女救援基金會婦女救援基金會');
INSERT INTO institutions (id, name_zh) VALUES (93, '清代檔案');
INSERT INTO institutions (id, name_zh) VALUES (94, '荷蘭東印度公司');
INSERT INTO institutions (id, name_zh) VALUES (95, '荷蘭海牙中央檔案館');
INSERT INTO institutions (id, name_zh) VALUES (96, '荷蘭海牙皇家圖書館曹永和文教基金會');
INSERT INTO institutions (id, name_zh) VALUES (97, '荷蘭海牙皇家圖書館荷蘭海牙皇家圖書館');
INSERT INTO institutions (id, name_zh) VALUES (98, '荷蘭海牙國立中央檔案館');
INSERT INTO institutions (id, name_zh) VALUES (99, '荷蘭海牙國家檔案館荷蘭海牙國家檔案館');
INSERT INTO institutions (id, name_zh) VALUES (100, '荷蘭國家檔案館荷蘭國家檔案館');
INSERT INTO institutions (id, name_zh) VALUES (101, '菲律賓檔案館');
INSERT INTO institutions (id, name_zh) VALUES (102, '新北市立十三行博物館');
INSERT INTO institutions (id, name_zh) VALUES (103, '新北市立十三行博物館新北市立十三行博物館');
INSERT INTO institutions (id, name_zh) VALUES (104, '新北市立十三行博物館臧振華、中央研究院歷史語言研究所');
INSERT INTO institutions (id, name_zh) VALUES (105, '新北市立黃金博物館');
INSERT INTO institutions (id, name_zh) VALUES (106, '漢珍數位');
INSERT INTO institutions (id, name_zh) VALUES (107, '臺大數位人文中心國立臺灣大學');
INSERT INTO institutions (id, name_zh) VALUES (108, '臺中市文化資產處國立自然科學博物館');
INSERT INTO institutions (id, name_zh) VALUES (109, '臺北市文獻委員會');
INSERT INTO institutions (id, name_zh) VALUES (110, '臺北市立文獻委員會');
INSERT INTO institutions (id, name_zh) VALUES (111, '臺南市文化局');
INSERT INTO institutions (id, name_zh) VALUES (112, '臺南市文化局臺南市文化局');
INSERT INTO institutions (id, name_zh) VALUES (113, '臺南市文化局學術研究論文，數位版散見');
INSERT INTO institutions (id, name_zh) VALUES (114, '臺南市政府文化局中研院臺史所');
INSERT INTO institutions (id, name_zh) VALUES (115, '臺灣銀行經濟研究室');
INSERT INTO institutions (id, name_zh) VALUES (116, '臺灣銀行經濟研究室臺灣銀行經濟研究室');
INSERT INTO institutions (id, name_zh) VALUES (117, '遠流出版公司遠流出版公司');
INSERT INTO institutions (id, name_zh) VALUES (118, '澎湖縣文化局');
INSERT INTO institutions (id, name_zh) VALUES (119, '學術文獻散見');
INSERT INTO institutions (id, name_zh) VALUES (120, '學術出版社散見');
INSERT INTO institutions (id, name_zh) VALUES (121, '聯經出版公司聯經出版公司');

SELECT setval('institutions_id_seq', 121);

-- === 2. 主要史料 ===
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (1, '考古資料數位典藏資料庫', '中央研究院歷史語言研究所', '2011', 1, 7, '中研院史語所', 'IHP-ARCHDB-01', 'https://ndweb.iis.sinica.edu.tw/ihparchaeo/index.jsp', 'zh', '中研院史語所建置之考古數位典藏資料庫，收錄臺灣與大陸考古遺址、遺跡、遺物三子庫，含大量照片、線繪圖、田野記載表', '考古;資料庫;遺址;遺物;史語所', '舊石器時代–金屬器時代', '全臺灣', NULL, NULL, '中央研究院', NULL, '2026-07-30', 'UNCLEAR', '資料庫免費查詢；數位影像授權申請依史語所規定辦理', '已收錄 metadata', NULL, '臺灣最大之考古學數位典藏資料庫');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (2, '臺灣考古遺址地理資訊系統', '中央研究院歷史語言研究所', '2015', 1, 7, '中研院史語所', 'IHP-ARCHGIS-01', 'https://archaeogis.ihp.sinica.edu.tw/map/#/gis', 'zh', '中研院史語所建置之臺灣考古遺址GIS系統，整合遺址位置、文化層、相關文獻等空間資訊', '考古;GIS;遺址;空間分析', '舊石器時代–金屬器時代', '全臺灣', NULL, '考古資料數位典藏資料庫', '中央研究院', NULL, '2026-07-30', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '考古遺址空間查詢之基礎平臺');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (3, '國立臺灣史前文化博物館藏品查詢系統', '國立臺灣史前文化博物館', '2010', 1, 7, '國立臺灣史前文化博物館', 'NMP-COL-01', 'https://collections.culture.tw/nmp_collectionsweb/', 'zh', '史前館館藏查詢系統，含考古標本、臺灣南島民族、大洋洲南島民族等分類查詢', '史前文化;考古;博物館;藏品', '舊石器時代–金屬器時代', '全臺灣', NULL, NULL, '國立臺灣史前文化博物館', NULL, '2026-07-30', 'UNCLEAR', '網站公開瀏覽；數位授權需申請', '已收錄 metadata', NULL, '臺灣最重要的史前文物典藏機構');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (4, '考古文物3D資料庫', '國立臺灣史前文化博物館', '2018', 1, 7, '國立臺灣史前文化博物館', 'NMP-3D-01', 'https://3d.nmp.gov.tw/', 'zh', '史前館建置之考古文物3D數位模型資料庫，含300+筆文物高精度3D掃描資料', '3D;考古;文物;史前文化', '舊石器時代–金屬器時代', '全臺灣', NULL, '國立臺灣史前文化博物館藏品查詢系統', '國立臺灣史前文化博物館', NULL, '2026-07-30', 'UNCLEAR', '網站公開瀏覽；3D列印需另申請授權', '已收錄 metadata', NULL, '臺灣唯一之考古文物3D資料庫');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (5, '南科考古館出土文物藏品查詢系統', '國立臺灣史前文化博物館南科考古館', '2019', 1, 7, '國立臺灣史前文化博物館南科考古館', 'STSP-COL-01', 'https://stspcoll.nmp.gov.tw/', 'zh', '南科考古館出土文物查詢系統，收錄南科園區32處遺址搶救發掘出土文物，涵蓋大坌坑至西拉雅文化層', '南科;考古;搶救發掘;文物', '大坌坑文化–西拉雅文化（約5000–300 BP）', '臺南科學園區（南科）;新市;善化', NULL, '國立臺灣史前文化博物館藏品查詢系統', '國立臺灣史前文化博物館', NULL, '2026-07-30', 'UNCLEAR', '網站公開瀏覽；研究申請另需審核', '已收錄 metadata', NULL, '南科園區為臺灣密度最高之考古遺址群');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (6, '國家文化資產網—考古遺址查詢', '文化部文化資產局', '2006', 1, 7, '文化部文化資產局', 'NCHDB-ARCH-01', 'https://nchdb.boch.gov.tw/assets/overview/archaeologicalSite', 'zh', '文化部建置之國定與縣定考古遺址查詢系統，登錄全臺各級考古遺址基本資訊與保存狀態', '文化資產;考古遺址;法定保護', '舊石器時代–金屬器時代', '全臺灣', NULL, NULL, '文化部文化資產局', NULL, '2026-07-30', 'UNCLEAR', '政府公開資料；免費查詢', '已收錄 metadata', NULL, '官方考古遺址名錄之權威來源');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (7, '十三行數位博物館', '新北市立十三行博物館', '2020', 1, 7, '新北市立十三行博物館', 'SSHM-DIGITAL-01', 'https://sshm.vm.ntpc.gov.tw/', 'zh', '十三行博物館數位化展示平臺，含十三行遺址、大坌坑遺址之虛擬導覽與數位典藏', '十三行;大坌坑;數位博物館;遺址', '大坌坑文化;十三行文化（約7000–400 BP）', '新北市八里區', NULL, NULL, '新北市立十三行博物館', NULL, '2026-07-30', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '北臺灣最重要的史前遺址博物館數位平臺');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (8, '八仙洞考古遺址（長濱文化）', '國立臺灣大學考古人類學系', '1968-1970', 1, 7, '國立臺灣史前文化博物館／國家文化資產網', 'BX-DONG-001', 'https://nchdb.boch.gov.tw/assets/overview/archaeologicalSite/20060501000001', 'zh', '八仙洞遺址為臺灣舊石器時代長濱文化之代表遺址，年代距今約3萬至5千年，位於臺東縣長濱鄉，為臺灣最早發現的舊石器時代文化', '長濱文化;舊石器時代;八仙洞;海蝕洞穴', '長濱文化（約30000–5000 BP）', '臺東縣長濱鄉', NULL, NULL, NULL, '國立臺灣大學（發掘）、宋文薰（發掘）', '2026-07-30', 'UNCLEAR', '國定考古遺址；公開查閱', '已收錄 metadata', NULL, '臺灣舊石器時代最早確認的文化層');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (9, '左鎮人研究', '連照美／國立臺灣大學', '1970-2015', 1, 7, '國立臺灣大學人類學系', 'TLJ-ZUOZHEN-01', NULL, 'zh', '左鎮菜寮溪發現之人類化石研究，包括頭骨碎片與牙齒，年代推定約2至3萬年前，為臺灣最早的人類化石證據', '左鎮人;舊石器時代;人類化石;菜寮溪', '左鎮人（約30000–20000 BP）', '臺南市左鎮區', NULL, '八仙洞考古遺址（長濱文化）', NULL, '國立臺灣大學（研究）', '2026-07-30', 'UNCLEAR', '研究文獻散見學術期刊', '僅收錄 metadata', NULL, '臺灣最早人類化石之關鍵證據');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (10, '網形文化研究', '劉益昌／中央研究院', '1990-2020', 1, 7, '中央研究院', 'THL-WANGXING-01', NULL, 'zh', '苗栗網形地區發現之舊石器時代文化研究，年代推定約5萬年至1萬年前，含網形遺址與伯公壟遺址發掘資料', '網形文化;舊石器時代;苗栗;伯公壟', '網形文化（約50000–10000 BP）', '苗栗縣公館鄉', NULL, '八仙洞考古遺址（長濱文化）', NULL, '中央研究院（研究）', '2026-07-30', 'UNCLEAR', '學術論文散見期刊', '僅收錄 metadata', '中央研究院', '臺灣已知最早之舊石器文化層之一');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (11, '大坌坑考古遺址', '張光直／國立臺灣大學', '1962-1964', 1, 7, '國立臺灣大學人類學系', 'TPK-DABENKENG-01', 'https://nchdb.boch.gov.tw/assets/overview/archaeologicalSite/20060501000004', 'zh', '大坌坑遺址位於新北市八里區，為臺灣新石器時代最早文化層大坌坑文化之命名遺址，年代距今約7000至4700年前，張光直主持1964年發掘', '大坌坑文化;新石器時代;繩紋陶;南島語族', '大坌坑文化（約7000–4700 BP）', '新北市八里區', NULL, NULL, NULL, '張光直（發掘）、國立臺灣大學、美國耶魯大學', '2026-07-30', 'UNCLEAR', '國定考古遺址；公開查閱', '已收錄 metadata', NULL, '臺灣新石器時代最早文化之命名遺址');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (12, '大坌坑文化繩紋陶研究', '張光直（Kwang-chih Chang）', '1969', 1, 7, '美國耶魯大學出版社', 'FengpitouTapenkeng-1969', NULL, 'en', '張光直經典專書《Fengpitou Tapenkeng and the Prehistory of Taiwan》系統性論述大坌坑文化與鳳鼻頭文化之年代、器物與文化內涵', '大坌坑文化;鳳鼻頭;繩紋陶;臺灣考古學', '大坌坑文化（約7000–4700 BP）', '全臺灣', NULL, '大坌坑考古遺址', '美國耶魯大學出版社', NULL, '2026-07-30', 'ARR', '紙本書；需購閱或圖書館查閱', '僅收錄 metadata', NULL, '臺灣考古學奠基性英文學術專著');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (13, '大坌坑文化與南島語族起源研究', '臧振華／中央研究院', '2000-2020', 1, 7, '中央研究院歷史語言研究所', 'ACAD-SINICA-DK-AUSTR', NULL, 'zh;en', '大坌坑文化被學界視為南島語族祖先型文化之關鍵研究，含跨國比較與考古語言學整合分析', '大坌坑文化;南島語族;起源;擴散', '大坌坑文化（約7000–4700 BP）', '全臺灣;東南亞;太平洋', NULL, '大坌坑考古遺址', '中央研究院', NULL, '2026-07-30', 'UNCLEAR', '學術論文散見期刊與專書', '僅收錄 metadata', NULL, '大坌坑文化之國際學術重要性核心命題');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (14, '圓山考古遺址', '國立臺灣大學考古人類學系', '1897-1990', 1, 7, '國家文化資產網／臺北市立文獻委員會', 'YUANSHAN-01', 'https://nchdb.boch.gov.tw/assets/overview/archaeologicalSite/20060501000006', 'zh', '圓山遺址位於臺北市中山區圓山，為圓山文化命名遺址，年代距今約4500至3500年，以貝塚與有肩石斧、段石錛為特色，為臺灣北部最大之史前貝塚遺址', '圓山文化;貝塚;新石器時代;有肩石斧', '圓山文化（約4500–3500 BP）', '臺北市中山區', NULL, NULL, NULL, '伊能嘉矩（發現1897）、國分直一、臺大考古隊', '2026-07-30', 'UNCLEAR', '國定考古遺址；公開查閱', '已收錄 metadata', NULL, '北臺灣最著名之新石器時代遺址');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (15, '芝山岩考古遺址', '國立臺灣大學人類學系', '1896-1990', 1, 7, '國家文化資產網／臺北市文獻委員會', 'ZHISHANYAN-01', 'https://nchdb.boch.gov.tw/assets/overview/archaeologicalSite/20060501000005', 'zh', '芝山岩遺址位於臺北市士林區，為芝山岩文化命名遺址，年代距今約4500至3500年，以黑陶、彩陶與豐富植物遺留為特色，反映與中國大陸東南沿海之文化聯繫', '芝山岩文化;黑陶;彩陶;新石器時代', '芝山岩文化（約4500–3500 BP）', '臺北市士林區', NULL, '圓山考古遺址', NULL, NULL, '2026-07-30', 'UNCLEAR', '國定考古遺址；公開查閱', '已收錄 metadata', NULL, '臺灣唯一出土彩陶之史前遺址');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (16, '訊塘埔遺址（訊塘埔文化）', '劉益昌／中央研究院', '1990-2005', 1, 7, '中央研究院歷史語言研究所', 'XUNTANGPU-01', NULL, 'zh', '訊塘埔遺址位於新北市八里區，為訊塘埔文化命名遺址，年代距今約4500至3000年，屬臺灣北部新石器時代中期至晚期過渡文化', '訊塘埔文化;新石器時代;八里;繩紋陶', '訊塘埔文化（約4500–3000 BP）', '新北市八里區', NULL, '大坌坑遺址', NULL, '中央研究院（發掘）', '2026-07-30', 'UNCLEAR', '學術報告文件；查閱有限', '僅收錄 metadata', NULL, '填補大坌坑與圓山文化之間的文化序列缺口');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (17, '牛罵頭遺址（牛罵頭文化）', '國立自然科學博物館／國立臺灣大學', '1990-2010', 1, 7, '臺中市文化資產處', 'NIUMATOU-01', NULL, 'zh', '牛罵頭遺址位於臺中市清水區，為牛罵頭文化命名遺址，年代距今約4500至3500年，屬臺灣中部新石器時代中期文化', '牛罵頭文化;新石器時代;中部臺灣;紅陶', '牛罵頭文化（約4500–3500 BP）', '臺中市清水區', NULL, NULL, NULL, '國立自然科學博物館（研究）', '2026-07-30', 'UNCLEAR', '學術報告文件；查閱有限', '僅收錄 metadata', NULL, '臺灣中部最重要之新石器時代中期文化');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (18, '卑南考古遺址', '連照美、宋文薰／國立臺灣大學', '1980-1990', 1, 7, '國立臺灣史前文化博物館卑南遺址公園', 'BEINAN-01', 'https://nchdb.boch.gov.tw/assets/overview/archaeologicalSite/20060501000009', 'zh', '卑南遺址位於臺東市，為卑南文化命名遺址，年代距今約3500至2000年，為臺灣規模最大、出土最豐富之史前遺址，已發現2000餘座石板棺墓葬與大量玉器', '卑南文化;石板棺;玉器;新石器時代;墓葬', '卑南文化（約3500–2000 BP）', '臺東市南王里', NULL, NULL, NULL, '連照美、宋文薰（發掘）、國立臺灣大學', '2026-07-30', 'UNCLEAR', '國定考古遺址；已成立卑南遺址公園公開展示', '已收錄 metadata', NULL, '臺灣出土規模最大之史前遺址，現為卑南遺址公園');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (19, '卑南玉器研究', '連照美／國立臺灣大學', '1990-2010', 1, 7, '國立臺灣大學人類學系', 'BEINAN-JADE-01', NULL, 'zh;en', '卑南遺址出土大量玉器（玉鐲、玉玦、玉管珠等）之系統性研究，為臺灣玉文化圈之核心資料', '卑南文化;玉器;臺灣玉;交換體系;工藝', '卑南文化（約3500–2000 BP）', '臺東市', NULL, '卑南考古遺址', NULL, '國立臺灣大學（研究）', '2026-07-30', 'UNCLEAR', '學術論文與專書', '僅收錄 metadata', NULL, '臺灣玉文化圈之關鍵證據');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (20, '麒麟遺址（麒麟文化/巨石文化）', '全國考古學會／國立臺灣大學', '1980-2000', 1, 7, '國立臺灣史前文化博物館', 'QILIN-01', NULL, 'zh', '麒麟遺址位於臺東縣成功鎮，為麒麟文化（巨石文化）代表遺址，年代距今約3500至2000年，以巨大石壁、石柱、石像等巨石結構為特色', '麒麟文化;巨石文化;新石器時代;臺東;巨石', '麒麟文化（約3500–2000 BP）', '臺東縣成功鎮', NULL, '卑南考古遺址', NULL, NULL, '2026-07-30', 'UNCLEAR', '遺址現地保存；報告查閱有限', '僅收錄 metadata', NULL, '臺灣唯一之巨石文化代表');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (21, '鳳鼻頭（中坑門）考古遺址', '張光直／國立臺灣大學', '1965-1970', 1, 7, '國家文化資產網', 'FENGBITOU-01', 'https://nchdb.boch.gov.tw/assets/overview/archaeologicalSite/20090824000002', 'zh', '鳳鼻頭遺址位於高雄市林園區，為鳳鼻頭文化命名遺址，年代距今約3500至2000年，屬臺灣南部新石器時代晚期文化，以細繩紋紅陶為特徵', '鳳鼻頭文化;新石器時代;紅陶;南部臺灣', '鳳鼻頭文化（約3500–2000 BP）', '高雄市林園區', NULL, '大坌坑文化繩紋陶研究', NULL, '張光直（發掘）、國立臺灣大學', '2026-07-30', 'UNCLEAR', '國定考古遺址；公開查閱', '已收錄 metadata', NULL, '南臺灣新石器時代晚期文化標竿');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (22, '大湖遺址（大湖文化）', '國立臺灣大學考古人類學系', '1970-1990', 1, 7, '國家文化資產網', 'DAHU-01', NULL, 'zh', '大湖遺址位於高雄市湖內區，為大湖文化命名遺址，年代距今約3500至2000年，屬南部新石器時代晚期，以黑陶與灰黑陶為特色，含豐富貝塚遺留', '大湖文化;黑陶;新石器時代;貝塚;南部臺灣', '大湖文化（約3500–2000 BP）', '高雄市湖內區;臺南市', NULL, '鳳鼻頭遺址', NULL, NULL, '2026-07-30', 'UNCLEAR', '縣定考古遺址；報告查閱有限', '僅收錄 metadata', NULL, '大湖文化為南部新石器晚期重要文化相');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (23, '花岡山遺址（花岡山文化）', '國立臺灣大學人類學系', '1970-2000', 1, 7, '國家文化資產網', 'HUAGANGSHAN-01', NULL, 'zh', '花岡山遺址位於花蓮縣花蓮市，為花岡山文化命名遺址，年代距今約3500至2000年，屬東部新石器時代晚期，以打製石鋤與本站式文化層為特色', '花岡山文化;新石器時代;東部臺灣;花蓮', '花岡山文化（約3500–2000 BP）', '花蓮縣花蓮市', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '報告查閱有限', '僅收錄 metadata', NULL, '臺灣東部重要新石器時代晚期文化');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (24, '丸山遺址（丸山文化）', '宜蘭縣立蘭陽博物館／國立臺灣大學', '1990-2010', 1, 7, '宜蘭縣政府文化局', 'WANSHAN-01', NULL, 'zh', '丸山遺址位於宜蘭縣冬山鄉，為丸山文化命名遺址，年代距今約3500至2000年，屬東北部新石器時代晚期文化，以磨製石器與繩紋陶為特色', '丸山文化;新石器時代;宜蘭;繩紋陶', '丸山文化（約3500–2000 BP）', '宜蘭縣冬山鄉', NULL, NULL, NULL, '宜蘭縣立蘭陽博物館（研究）', '2026-07-30', 'UNCLEAR', '縣定考古遺址；報告查閱有限', '僅收錄 metadata', NULL, '宜蘭地區史前文化之關鍵定年標竿');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (25, '臺南科學園區考古遺址群總論', '臧振華、李匡悌／中央研究院', '2001-2020', 1, 7, '國立臺灣史前文化博物館南科考古館', 'STSP-SITES-SYNTHESIS', NULL, 'zh', '南科園區85處以上考古遺址之綜合研究成果，涵蓋大坌坑、牛稠子、大湖、蔦松、西拉雅等連續文化層，為臺灣密度最高、時序最完整之考古遺址群', '南科;考古;搶救發掘;文化序列;科學園區', '大坌坑文化–西拉雅文化（約5000–300 BP）', '臺南科學園區（新市;善化）', NULL, '南科考古館出土文物藏品查詢系統', NULL, '臧振華、李匡悌（主持發掘）', '2026-07-30', 'UNCLEAR', '發掘報告已出版多冊；查閱有限', '僅收錄 metadata', NULL, '南科為臺灣考古學研究之重鎮');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (26, '十三行考古遺址', '臧振華／中央研究院', '1991-1998', 1, 7, '新北市立十三行博物館', 'SSHSANHANG-01', 'https://nchdb.boch.gov.tw/assets/overview/archaeologicalSite/20060501000003', 'zh', '十三行遺址位於新北市八里區，為十三行文化命名遺址，年代距今約1800至400年，屬臺灣北部金屬器時代文化，以煉鐵遺留與中國唐宋錢幣、瓷器為特色，顯示與大陸貿易往來', '十三行文化;金屬器時代;煉鐵;貿易;臺灣北部', '十三行文化（約1800–400 BP）', '新北市八里區', NULL, NULL, NULL, '臧振華（主持搶救發掘）、中央研究院', '2026-07-30', 'UNCLEAR', '國定考古遺址；現為十三行博物館公開展示', '已收錄 metadata', NULL, '臺灣首座考古遺址博物館');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (27, '番仔園遺址（番仔園文化）', '國立自然科學博物館', '1990-2010', 1, 7, '國立自然科學博物館', 'FANZAIYUAN-01', NULL, 'zh', '番仔園遺址位於臺中市大甲區，為番仔園文化命名遺址，年代距今約2000至400年，屬中部金屬器時代文化，以鐵器、玻璃珠與墓葬出土為特色', '番仔園文化;金屬器時代;中部臺灣;鐵器', '番仔園文化（約2000–400 BP）', '臺中市大甲區', NULL, NULL, NULL, '國立自然科學博物館（研究）', '2026-07-30', 'UNCLEAR', '學術報告；查閱有限', '僅收錄 metadata', NULL, '臺灣中部金屬器時代關鍵文化');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (28, '蔦松遺址（蔦松文化）', '國立臺灣大學考古人類學系', '1980-2000', 1, 7, '國家文化資產網', 'NIAOSONG-01', NULL, 'zh', '蔦松遺址位於臺南市永康區，為蔦松文化命名遺址，年代距今約2000至400年，屬南部金屬器時代文化，以陶環紡輪、鐵器與玻璃瑪瑙珠為特色', '蔦松文化;金屬器時代;南部臺灣;鐵器;西拉雅', '蔦松文化（約2000–400 BP）', '臺南市永康區', NULL, '南科考古遺址群', NULL, NULL, '2026-07-30', 'UNCLEAR', '考古遺址；報告查閱有限', '僅收錄 metadata', NULL, '蔦松文化為西拉雅族之直接祖型文化');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (29, '靜浦遺址（靜浦文化）', '中央研究院歷史語言研究所', '1990-2010', 1, 7, '中央研究院', 'JINGPU-01', NULL, 'zh', '靜浦遺址位於花蓮縣豐濱鄉，為靜浦文化命名遺址，年代距今約2000至400年，屬東部金屬器時代文化，以打製石鋤、陶器與玻璃珠為特色，為阿美族之可能祖型文化', '靜浦文化;金屬器時代;東部臺灣;阿美族;花蓮', '靜浦文化（約2000–400 BP）', '花蓮縣豐濱鄉', NULL, '花岡山遺址', NULL, NULL, '2026-07-30', 'UNCLEAR', '考古遺址；報告查閱有限', '僅收錄 metadata', '中央研究院', '阿美族可能之祖型文化');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (30, '舊社遺址群（舊社文化/排灣族）', '國立臺灣大學人類學系／屏東縣政府', '1990-2020', 1, 7, '屏東縣政府文化處', 'KLIEW-01', NULL, 'zh', '屏東地區舊社遺址群為舊社文化（排灣族祖型文化）之代表，年代距今約1000至400年，含石板屋、石器、陶器、玻璃珠等遺留', '舊社文化;金屬器時代;排灣族;屏東;石板屋', '舊社文化（約1000–400 BP）', '屏東縣泰武鄉;來義鄉', NULL, NULL, NULL, '國立臺灣大學人類學系（研究）', '2026-07-30', 'UNCLEAR', '學術研究報告；查閱有限', '已收錄 metadata', NULL, '屏東排灣族地區之考古學文化序列');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (31, '臺灣考古學（通論性專書）', '劉益昌、劉瑩三、陳有貝、顏廷伃等', '2019', 1, 7, '南天書局', 'ISBN 9789869927200', NULL, 'zh', '臺灣考古學通論專書，系統性介紹臺灣從舊石器時代到歷史時期之考古學研究成果、理論與方法', '臺灣考古學;通論;史前文化;研究方法', '舊石器時代–歷史時期', '全臺灣', NULL, NULL, '南天書局', NULL, '2026-07-30', 'ARR', '紙本書；需購閱', '僅收錄 metadata', NULL, '臺灣考古學最新通論專書');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (32, '臺灣的史前文化（科普專書）', '劉益昌', '2011', 1, 7, '新北市立十三行博物館', NULL, NULL, 'zh', '以通俗易懂方式介紹臺灣各時期史前文化之科普專書，含豐富插圖與遺址分布', '史前文化;科普;臺灣;遺址導覽', '舊石器時代–金屬器時代', '全臺灣', NULL, NULL, '新北市立十三行博物館', NULL, '2026-07-30', 'ARR', '紙本書；需購閱', '僅收錄 metadata', NULL, '最佳入門級臺灣史前文化讀物');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (33, '臺灣原住民史—史前篇', '劉益昌', '2002', 1, 7, '國史館臺灣文獻館', 'ISBN 9789570119848', NULL, 'zh', '國史館臺灣文獻館出版之臺灣原住民史系列史前篇，系統性論述史前文化與原住民族群之關聯', '原住民;史前文化;族群起源;考古學', '舊石器時代–金屬器時代', '全臺灣', NULL, NULL, '國史館臺灣文獻館', NULL, '2026-07-30', 'ARR', '紙本書；需購閱或圖書館查閱', '僅收錄 metadata', NULL, '連結考古學與原住民族史之重要橋樑著作');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (34, '十三行遺址搶救考古報告', '臧振華（主持）', '1998-2003', 1, 7, '新北市立十三行博物館', 'SSH-EXCAV-REPORT', NULL, 'zh', '十三行遺址因八里污水處理廠工程而進行大規模搶救發掘之完整報告，出土大量鐵器、陶器、玻璃珠、錢幣等', '十三行文化;搶救考古;發掘報告;鐵器', '十三行文化（約1800–400 BP）', '新北市八里區', NULL, '十三行考古遺址', NULL, '臧振華（主持）、中央研究院歷史語言研究所', '2026-07-30', 'UNCLEAR', '發掘報告出版品；查閱有限', '僅收錄 metadata', NULL, '臺灣最大規模之搶救考古發掘');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (35, '南科考古發掘報告系列（1995-2020）', '臧振華、李匡悌', '2001-2020', 1, 7, '國立臺灣史前文化博物館南科考古館', 'STSP-EXCAV-SERIES', NULL, 'zh', '南科園區歷年搶救考古發掘報告系列，涵蓋道爺、三抱竹、五間厝、右先方等數十處遺址之系統性發掘成果', '南科;發掘報告;大坌坑;牛稠子;大湖;蔦松', '大坌坑文化–蔦松文化（約5000–300 BP）', '臺南科學園區', NULL, '南科考古遺址群', NULL, '臧振華、李匡悌（主持）、中央研究院', '2026-07-30', 'UNCLEAR', '發掘報告多冊；部分公開出版', '僅收錄 metadata', NULL, '臺灣規模最大的連續性搶救考古成果');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (36, '卑南遺址發掘報告（1986-1989）', '連照美、宋文薰', '1989', 1, 7, '國立臺灣大學出版中心', 'BEINAN-EXCAV-REPORT', NULL, 'zh', '卑南遺址1986至1989年大規模搶救發掘報告，詳述2000餘座石板棺墓葬出土資料與分析', '卑南文化;石板棺;墓葬;發掘報告;玉器', '卑南文化（約3500–2000 BP）', '臺東市', NULL, '卑南考古遺址', '國立臺灣大學出版中心', '連照美、宋文薰（發掘）', '2026-07-30', 'ARR', '學術出版品需購閱', '僅收錄 metadata', NULL, '臺灣最大規模墓葬發掘資料');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (37, '臺灣玉文化圈研究—史前玉器與東南亞交換體系', '臧振華、洪曉純等', '2000-2020', 1, 7, '中央研究院歷史語言研究所', 'TW-JADE-CIRCLE-01', NULL, 'zh;en', '臺灣史前時期玉器（臺灣玉/豐田玉）之產地、工藝技術與交換網絡研究，臺灣玉器分布範圍涵蓋臺灣、菲律賓、越南、泰國等地', '玉器;臺灣玉;交換體系;南島語族;工藝', '新石器時代–金屬器時代（約3500–1000 BP）', '全臺灣;東南亞;太平洋', NULL, '卑南玉器研究', '中央研究院', NULL, '2026-07-30', 'UNCLEAR', '學術論文散見國際期刊', '僅收錄 metadata', NULL, '臺灣在史前東南亞貿易圈之核心地位');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (38, '臺灣史前貝塚研究', '學術研究團隊', '1980-2020', 1, 7, '各大學／博物館', 'TW-SHELLMIDDEN-01', NULL, 'zh;en', '臺灣數百處史前貝塚之綜合研究，含貝類物種分析、環境重建、生業型態與季節性推斷', '貝塚;生態;生業;古環境;新石器時代', '新石器時代–金屬器時代', '全臺灣', NULL, '圓山考古遺址;大湖遺址', NULL, NULL, '2026-07-30', 'UNCLEAR', '學術研究論文散見', '僅收錄 metadata', '各大學; 博物館', '貝塚為史前生業與環境之重要窗口');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (39, '臺灣史前人類學研究（古代DNA與人骨）', '陳叔倬等', '2000-2020', 1, 7, '中央研究院／國立臺灣大學', 'TW-ANCIENT-DNA-01', NULL, 'zh;en', '臺灣史前人骨與古代DNA研究，探討史前人群起源、遷徙與現代原住民族群之遺傳關係', '古代DNA;人骨;體質人類學;族群起源;基因', '舊石器時代–金屬器時代', '全臺灣', NULL, '臺灣原住民史—史前篇', '中央研究院', NULL, '2026-07-30', 'UNCLEAR', '學術論文散見國際期刊', '僅收錄 metadata', '中央研究院', '從遺傳學角度印證考古文化推論');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (40, '卑南遺址空拍與出土文物影像集', '國立臺灣史前文化博物館', '2000-2020', 1, 7, '國立臺灣史前文化博物館', 'NMP-BEINAN-IMG', 'https://collections.culture.tw/nmp_collectionsweb/', 'zh', '卑南遺址空拍照、石板棺墓葬影像、玉器與陶器精選影像之數位圖檔集合', '卑南文化;空拍;玉器;石板棺;考古影像', '卑南文化（約3500–2000 BP）', '臺東市', NULL, '卑南考古遺址;卑南玉器研究', '國立臺灣史前文化博物館', NULL, '2026-07-30', 'UNCLEAR', '藏品查詢系統公開瀏覽', '已收錄 metadata', NULL, '卑南遺址視覺資料之重要數位來源');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (41, '十三行遺址出土文物影像集', '新北市立十三行博物館', '2003-2020', 1, 7, '新北市立十三行博物館', 'SSH-IMG-COLLECTION', 'https://sshm.vm.ntpc.gov.tw/', 'zh', '十三行遺址出土文物之精選數位影像，含鐵器、陶器、玻璃珠、錢幣、墓葬出土狀況等', '十三行文化;鐵器;墓葬;玻璃珠;考古影像', '十三行文化（約1800–400 BP）', '新北市八里區', NULL, '十三行考古遺址', '新北市立十三行博物館', NULL, '2026-07-30', 'UNCLEAR', '數位博物館公開瀏覽', '已收錄 metadata', NULL, '北臺灣金屬器時代最重要之視覺資料庫');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (42, '史前館3D文物影像精選', '國立臺灣史前文化博物館', '2018-2020', 1, 7, '國立臺灣史前文化博物館', 'NMP-3D-SELECTION', 'https://3d.nmp.gov.tw/', 'zh', '史前館精選30件以上3D文物模型，含卑南玉器、陶罐、石刀、紡輪、人獸形玦等', '3D;文物;史前;數位模型', '舊石器時代–金屬器時代', '全臺灣', NULL, '考古文物3D資料庫', '國立臺灣史前文化博物館', NULL, '2026-07-30', 'UNCLEAR', '3D資料庫公開瀏覽', '已收錄 metadata', NULL, '線上互動式探索史前文物之最佳資源');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (43, '南科考古館展示影像與出土文物精選', '國立臺灣史前文化博物館南科考古館', '2019-2020', 1, 7, '國立臺灣史前文化博物館南科考古館', 'STSP-IMG-01', 'https://stspcoll.nmp.gov.tw/', 'zh', '南科考古館展場影像與出土文物精選，含大坌坑繩紋陶、牛稠子紅陶、蔦松玻璃珠等各文化層代表文物', '南科;考古;展示;文物精選', '大坌坑文化–蔦松文化（約5000–300 BP）', '臺南科學園區', NULL, '南科考古館出土文物藏品查詢系統', '國立臺灣史前文化博物館', NULL, '2026-07-30', 'UNCLEAR', '展示館與藏品系統公開瀏覽', '已收錄 metadata', NULL, '南科各文化層連續序列之視覺呈現');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (44, '臺灣史前史紀錄片—發現史前館', '國立臺灣史前文化博物館', '2010', 1, 7, '國立臺灣史前文化博物館', 'NMP-DOC-PREHISTORY', 'https://www.nmp.gov.tw/', 'zh', '史前館製作之臺灣史前史紀錄片，介紹舊石器至金屬器時代之重要遺址、文化內涵與考古工作方法', '紀錄片;史前文化;考古;博物館', '舊石器時代–金屬器時代', '全臺灣', NULL, NULL, '國立臺灣史前文化博物館', NULL, '2026-07-30', 'UNCLEAR', '史前館授權播映', '僅收錄 metadata', NULL, '少數以臺灣全史前史為主題之紀錄片');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (45, '臺灣史前石器與陶器工藝技術研究', '學術研究團隊', '1980-2020', 1, 7, '各大學／博物館', 'TW-LITHIC-POTTERY-TECH', NULL, 'zh;en', '臺灣史前時期石器打製與磨製技術、陶器製作與燒製技術之系統性工藝學研究', '石器;陶器;工藝技術;實驗考古', '舊石器時代–金屬器時代', '全臺灣', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '學術論文散見期刊與專書', '僅收錄 metadata', '各大學; 博物館', '工藝技術面之史前研究統整');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (46, '臺灣史前生態與古環境重建研究', '學術研究團隊', '1990-2020', 1, 12, '中央研究院／臺灣大學等', 'TW-PALEOENV-01', NULL, 'zh;en', '結合考古遺留動植物遺存、花粉分析、樹輪、珊瑚等資料重建臺灣史前時期古氣候與生態環境之綜合研究', '古環境;古氣候;花粉;生態;植群變遷', '舊石器時代–金屬器時代', '全臺灣', NULL, '臺灣史前貝塚研究', NULL, NULL, '2026-07-30', 'UNCLEAR', '學術論文散見國際期刊', '僅收錄 metadata', '中央研究院; 臺灣大學等', '史前人類活動之自然環境背景');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (47, '臺灣考古學國際期刊論文選輯', '國際學者群', '1960-2020', 1, 7, '國際學術期刊群', 'TW-ARCH-JOURNAL-01', NULL, 'en', '臺灣史前考古學之代表性國際期刊論文選輯（涵蓋Nature、Science、Asian Perspectives等國際期刊）', '臺灣考古;國際期刊;學術論文;史前文化', '舊石器時代–金屬器時代', '全臺灣', NULL, NULL, '國際學術期刊', NULL, '2026-07-30', 'UNCLEAR', '學術論文需購閱或圖書館查詢', '僅收錄 metadata', '國際學術期刊群', '臺灣史前考古學國際學術地位之展現');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (48, '臺灣史前玉玦與人獸形玦研究', '學術研究團隊', '1990-2020', 1, 7, '中央研究院／國立臺灣史前文化博物館', 'TW-JADE-EARRING-01', NULL, 'zh;en', '臺灣史前玉玦（耳飾）及人獸形玉玦之類型學、工藝技術與社會意義研究，玉玦為東南亞史前重要交換物品', '玉玦;人獸形玦;玉器;裝飾品;社會階層', '新石器時代–金屬器時代（約3500–1000 BP）', '全臺灣;東南亞', NULL, '臺灣玉文化圈研究', NULL, NULL, '2026-07-30', 'UNCLEAR', '學術論文散見期刊', '僅收錄 metadata', '中央研究院', '臺灣史前玉玦為東南亞與太平洋地區共通之文化要素');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (49, '熱蘭遮城日誌卷一（1629-1641）', '荷蘭東印度公司', '1629-1641', 2, 4, '臺灣日記知識庫（中研院臺史所）', 'TACO-Zeelandia-01', 'https://taco.ith.sinica.edu.tw/tdk/', 'nl', '荷蘭東印度公司於大員之日誌，中譯本收錄1629年至1641年逐日記載', '熱蘭遮城日誌;荷治;大員;VOC', '荷西時期', '大員（臺南安平）', '江樹生（中譯）', 'De dagregisters van het Kasteel Zeelandia DEEL I', '臺南市政府文化局', '中研院臺史所（數位化）', '2026-07-30', 'UNCLEAR', '授權中研院臺史所收錄於日記知識庫，線上閱覽需申請帳號', '已收錄 metadata', '臺灣日記知識庫', '207萬字中譯本；2024年再版改為10冊');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (50, '熱蘭遮城日誌卷二（1641-1648）', '荷蘭東印度公司', '1641-1648', 2, 4, '臺灣日記知識庫（中研院臺史所）', 'TACO-Zeelandia-02', 'https://taco.ith.sinica.edu.tw/tdk/', 'nl', '收錄1641年至1648年之逐日記載，含荷人與原住民互動、貿易等', '熱蘭遮城日誌;荷治;大員;VOC', '荷西時期', '大員（臺南安平）', '江樹生（中譯）', 'De dagregisters van het Kasteel Zeelandia DEEL II', '臺南市政府文化局', '中研院臺史所（數位化）', '2026-07-30', 'UNCLEAR', '同上', '已收錄 metadata', '臺灣日記知識庫', NULL);
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (51, '熱蘭遮城日誌卷三（1648-1655）', '荷蘭東印度公司', '1648-1655', 2, 4, '臺灣日記知識庫（中研院臺史所）', 'TACO-Zeelandia-03', 'https://taco.ith.sinica.edu.tw/tdk/', 'nl', '收錄1648年至1655年之逐日記載，荷治中期之穩定統治時期', '熱蘭遮城日誌;荷治;大員;VOC', '荷西時期', '大員（臺南安平）', '江樹生（中譯）', 'De dagregisters van het Kasteel Zeelandia DEEL III', '臺南市政府文化局', '中研院臺史所（數位化）', '2026-07-30', 'UNCLEAR', '同上', '已收錄 metadata', '臺灣日記知識庫', NULL);
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (52, '熱蘭遮城日誌卷四（1655-1662）', '荷蘭東印度公司', '1655-1662', 2, 4, '臺灣日記知識庫（中研院臺史所）', 'TACO-Zeelandia-04', 'https://taco.ith.sinica.edu.tw/tdk/', 'nl', '收錄1655年至1662年，含鄭成功攻臺至熱蘭遮城投降之完整紀錄', '熱蘭遮城日誌;荷治;鄭成功;大員', '荷西時期', '大員（臺南安平）', '江樹生（中譯）', 'De dagregisters van het Kasteel Zeelandia DEEL IV', '臺南市政府文化局', '中研院臺史所（數位化）', '2026-07-30', 'UNCLEAR', '同上', '已收錄 metadata', '臺灣日記知識庫', '鄭成功攻臺關鍵史料');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (53, '巴達維亞城日記—臺灣相關記事（1624-1629）', '荷蘭東印度公司巴達維亞政府', '1624-1629', 2, 1, '荷蘭海牙國立中央檔案館（中譯本）', NULL, NULL, 'nl', '巴達維亞城日記中與臺灣相關之紀錄，含荷人自澎湖轉進大員初期統治情況', '巴達維亞城日記;荷治;VOC;澎湖', '荷西時期', '巴達維亞;大員;澎湖', '曹永和等（中譯）', '熱蘭遮城日誌', NULL, '曹永和、中村孝志等（編譯）', '2026-07-30', 'UNCLEAR', '中譯本散見各出版品，數位版未完備', '僅收錄 metadata', NULL, '目前無單一數位資料庫收錄完整中譯本');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (54, '明清臺灣行政檔案—福建巡撫南居益疏報逐荷夷出澎湖', '南居益', '1624', 2, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-MQ-1624001', 'http://thdl.ntu.edu.tw/', 'zh', '天啟4年福建巡撫南居益奏報驅逐荷蘭人出澎湖之經過，為荷治開啟之關鍵史料', '澎湖之戰;荷蘭;明代海事;鄭芝龍', '荷西時期', '澎湖;福建', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', 'THDL 提供免登入全文檢索', '已收錄 metadata', '臺灣歷史數位圖書館', 'THDL 全文已數位化');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (55, '明清臺灣行政檔案—兵部尚書張鶴鳴題澎湖捷音疏', '張鶴鳴', '1624', 2, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-MQ-1624002', 'http://thdl.ntu.edu.tw/', 'zh', '兵部尚書張鶴鳴題報澎湖驅荷戰役捷音，詳述明軍與荷軍交戰過程', '澎湖之戰;明荷戰爭;明代兵部', '荷西時期', '澎湖;福建', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', '同上', '已收錄 metadata', '臺灣歷史數位圖書館', NULL);
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (56, '明清臺灣行政檔案—福建巡撫鄒維璉請禁海疏', '鄒維璉', '1633', 2, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-MQ-1633001', 'http://thdl.ntu.edu.tw/', 'zh', '崇禎6年鄒維璉請禁海以制荷夷之奏疏，涉及料羅灣海戰前後局勢', '明荷關係;海禁;料羅灣', '荷西時期', '福建;料羅灣', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', '同上', '已收錄 metadata', '臺灣歷史數位圖書館', NULL);
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (57, '明清臺灣行政檔案—福建巡撫沈猶龍請恤陣亡將士疏', '沈猶龍', '1639', 2, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-MQ-1639001', 'http://thdl.ntu.edu.tw/', 'zh', '崇禎12年沈猶龍奏請撫卹與荷蘭作戰陣亡將士', '明荷戰爭;陣亡撫卹;福建', '荷西時期', '福建', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', '同上', '已收錄 metadata', '臺灣歷史數位圖書館', NULL);
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (58, '明清臺灣行政檔案—鄭芝龍題報海上捷音疏', '鄭芝龍', '1640', 2, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-MQ-1640001', 'http://thdl.ntu.edu.tw/', 'zh', '鄭芝龍題報剿平海寇及與荷人交涉及賞賚事宜', '鄭芝龍;海商;明代海事', '荷西時期', '福建;臺灣海峽', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', '同上', '已收錄 metadata', '臺灣歷史數位圖書館', NULL);
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (59, '明清臺灣行政檔案—招諭鄭芝龍勳賞稿', '兵部', '1628', 2, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-MQ-1628001', 'http://thdl.ntu.edu.tw/', 'zh', '崇禎元年兵部招撫鄭芝龍之文書，涉及鄭氏勢力與臺海局勢', '鄭芝龍;招安;海上勢力', '荷西時期', '福建;臺灣海峽', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', '同上', '已收錄 metadata', '臺灣歷史數位圖書館', NULL);
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (60, '明清臺灣行政檔案—福建巡撫朱一馮請剿海寇疏', '朱一馮', '1627', 2, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-MQ-1627001', 'http://thdl.ntu.edu.tw/', 'zh', '天啟7年福建巡撫朱一馮奏請剿辦海寇李魁奇，涉及荷蘭人與海商勢力之交錯', '海寇;明代海事;荷蘭', '荷西時期', '福建;臺灣海峽', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', '同上', '已收錄 metadata', '臺灣歷史數位圖書館', NULL);
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (61, '新港文書（西拉雅語羅馬字契約文書）', '西拉雅族人／荷蘭宣教師', '1630-1800', 2, 1, '中研院民族所數位典藏', 'IANTHRO-SIRAYA-001', 'https://www.ianthro.org/p/89', 'fos', '17至18世紀西拉雅族人以羅馬拼音書寫之契約文書，含土地買賣、借貸等，約存180件', '新港文書;西拉雅;平埔;契約', '荷西時期', '新港（臺南新市）; 南部臺灣', '荷蘭宣教師（羅馬字系統）', NULL, NULL, '中研院民族學研究所（數位典藏）', '2026-07-30', 'UNCLEAR', '中研院民族所網站公開瀏覽', '已收錄 metadata', NULL, '目前已知約180件；含單語與雙語兩種');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (62, '荷蘭改革宗教會臺灣教區洗禮登錄簿（1640年代）', '荷蘭改革宗教會', '1640-1649', 2, 1, '荷蘭海牙皇家圖書館（中譯本）', 'Plakaatboek 70A', NULL, 'nl', '荷蘭時期臺灣教會之洗禮登錄簿，記錄宣教師在原住民社群之傳教成果', '基督教;荷治;教會;洗禮', '荷西時期', '大員;新港;南部臺灣', '韓家寶、鄭維中（中編譯）', '荷蘭時代臺灣告令集、婚姻與洗禮登錄簿', NULL, '曹永和文教基金會（出版）', '2026-07-30', 'UNCLEAR', '中譯本已出版，數位版未完備', '僅收錄 metadata', NULL, '2005年出版中英譯本');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (63, '荷蘭東印度公司福爾摩沙告令集（Plakaatboek van Formosa）', '荷蘭東印度公司臺灣長官會議', '1630-1662', 2, 1, '荷蘭海牙皇家圖書館（中譯本）', 'Plakaatboek 70A', NULL, 'nl', '荷蘭時期臺灣長官會議頒布之法令規章彙編，含土地政策、貿易管制等', '荷治;法令;VOC;殖民', '荷西時期', '大員;全臺灣', '韓家寶（Pol Heyns）、鄭維中（中編譯）', '荷蘭時代臺灣告令集、婚姻與洗禮登錄簿', NULL, '曹永和文教基金會（出版）', '2026-07-30', 'UNCLEAR', '中譯本已出版，數位版未完備', '僅收錄 metadata', NULL, '殖民統治法規之第一手史料');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (64, '被遺誤的台灣（''t Verwaerloosde Formosa）', 'C.E.S. (揆一)', '1675', 2, 1, '荷蘭（原件中譯本）', NULL, NULL, 'nl', '荷蘭末代長官揆一回國後撰寫之福爾摩沙回憶錄，為鄭成功攻臺之另一方觀點', '揆一;鄭成功;荷治;熱蘭遮城', '荷西時期', '大員;全臺灣', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '中譯本散見，數位版未完備', '僅收錄 metadata', NULL, '書名取自荷文''t Verwaerloosde Formosa');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (65, '西班牙統治臺灣時期文獻（1626-1642）', '多明我會傳教士', '1626-1642', 2, 1, '西班牙 / 菲律賓檔案館', NULL, NULL, 'es', '西班牙統治雞籠、淡水時期之傳教報告與行政文書（1626-1642年），中譯極少', '西班牙;雞籠;淡水;天主教', '荷西時期', '雞籠（基隆）; 淡水', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '原件藏西班牙與菲律賓檔案館，數位化程度極低', '僅收錄 metadata', '西班牙', '中文文字史料幾乎不存在');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (66, '荷據時代台灣史', '楊彥杰', '2000-11', 2, 4, '聯經出版公司', 'ISBN 9789570821482', NULL, 'zh', '系統性研究荷蘭據臺38年之專著，含政治、經濟、社會、人口等分析', '荷治;臺灣史;專書研究', '荷西時期', '全臺灣', NULL, NULL, '聯經出版公司', NULL, '2026-07-30', 'ARR', '紙本書，需購閱', '僅收錄 metadata', NULL, '二手研究專書');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (67, '福爾摩沙如何變成臺灣府（How Taiwan Became Chinese）', '歐陽泰（Tonio Andrade）', '2007', 2, 4, '遠流出版公司', 'ISBN 9573259400', NULL, 'zh', '荷治臺灣史經典著作，探討荷蘭殖民如何改變臺灣社會', '荷治;殖民;臺灣開發', '荷西時期', '全臺灣', '鄭維中（中譯）', NULL, '遠流出版公司', NULL, '2026-07-30', 'ARR', '紙本書，需購閱', '僅收錄 metadata', NULL, '二手研究專書');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (68, '決戰熱蘭遮（Lost Colony）', '歐陽泰（Tonio Andrade）', '2012', 2, 4, '時報文化', 'ISBN 9789571356822', NULL, 'zh', '鄭成功圍攻熱蘭遮城之戰役史，以荷蘭與中文史料交叉比對', '鄭成功;熱蘭遮城;荷治;戰爭', '荷西時期', '大員（臺南安平）', '陳信宏（中譯）', NULL, '時報文化', NULL, '2026-07-30', 'ARR', '紙本書，需購閱', '僅收錄 metadata', '時報文化', '二手研究專書；中譯本2012年出版');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (69, '臺灣早期歷史研究', '曹永和', '1979', 2, 4, '聯經出版公司', 'ISBN 9570806982', NULL, 'zh', '曹永和院士論文集，含荷治時期臺灣研究開創性論文', '荷治;臺灣早期;曹永和', '荷西時期', '全臺灣', NULL, NULL, '聯經出版公司', NULL, '2026-07-30', 'ARR', '紙本書，需購閱', '僅收錄 metadata', NULL, '二手研究專書；奠定臺灣荷治史研究基礎');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (70, '新港語聖經（馬太福音）', '荷蘭宣教師', '1661', 2, 4, '荷蘭（原件）', NULL, NULL, 'nl', '17世紀荷蘭宣教師以新港語（西拉雅語）翻譯之聖經章節，為原住民語言重要文獻', '新港語;西拉雅;基督教;荷治', '荷西時期', '新港（今臺南新市）', NULL, NULL, '荷蘭東印度公司', NULL, '2026-07-30', 'UNCLEAR', '原件藏荷蘭，數位版未完備', '僅收錄 metadata', NULL, '語言學與文化史重要史料');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (71, '費佛朗語詞典', '荷蘭宣教師', '1650', 2, 4, '荷蘭（原件）', NULL, NULL, 'nl', '荷蘭宣教師編撰之費佛朗語（Favorlang，巴布薩族語）詞典，為平埔語言珍貴紀錄', '費佛朗語;巴布薩;語言;荷治', '荷西時期', '中臺灣（虎尾壠地區）', NULL, NULL, '荷蘭東印度公司', NULL, '2026-07-30', 'UNCLEAR', '原件藏荷蘭，數位版未完備', '僅收錄 metadata', NULL, '目前僅存之費佛朗語系統性語言紀錄');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (72, '荷蘭人在臺灣的經營（數位學習教材）', '國立臺灣大學數位人文研究中心', '2020', 2, 4, '臺大數位人文中心', 'NTU-DH-2020-Dutch', 'http://education.digital.ntu.edu.tw/taiwanhistory/jcg02.html', 'zh', '臺大數位人文中心製作之荷治時期數位教材，含東印度公司、貿易網絡、大員市鎮', '荷治;數位教材;東印度公司;大員', '荷西時期', '大員;全臺灣', NULL, '探索臺灣歷史數位學習知識網', '國立臺灣大學', NULL, '2026-07-30', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '教學使用之二次文獻');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (73, '手繪福爾摩沙地圖', '約翰·芬伯翁（Jan F. van der Eynde）', '1636', 2, 2, '荷蘭海牙皇家圖書館', 'NL-KB-FOR-1636', NULL, 'nl', '1636年荷蘭製圖師約翰·芬伯翁手繪福爾摩沙與周邊海域地圖，為現存最早的臺灣荷治時期專屬地圖之一', '古地圖;荷治;大員;製圖', '荷西時期', '臺灣周邊海域', NULL, NULL, NULL, '荷蘭海牙皇家圖書館（典藏）', '2026-07-30', 'UNCLEAR', '原件藏荷蘭，有數位影像但解析度受限', '僅收錄 metadata', NULL, '荷治時期最重要之單幅臺灣地圖');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (74, '大員港灣圖（Tayouan Harbour Map）', 'VOC 製圖師', '1630-1650', 2, 2, '荷蘭海牙國家檔案館', 'NL-HaNA-VOC-AA-1630', NULL, 'nl', '17世紀中葉荷蘭東印度公司繪製之大員港灣深度測繪圖，標示航道、熱蘭遮城與普羅民遮城位置', '古地圖;大員;熱蘭遮城;VOC', '荷西時期', '大員（臺南安平）', NULL, NULL, NULL, '荷蘭海牙國家檔案館（典藏）', '2026-07-30', 'UNCLEAR', '原件藏荷蘭，數位版有限', '僅收錄 metadata', NULL, '航海與軍事地理重要史料');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (75, '熱蘭遮城平面圖', 'VOC 工程處', '1630-1662', 2, 2, '荷蘭（原件）', NULL, NULL, 'nl', '荷蘭時期繪製之熱蘭遮城平面構造圖，含稜堡、城牆、城內建築配置', '熱蘭遮城;城防;VOC;建築', '荷西時期', '大員（臺南安平）', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '原件藏荷蘭，數位版未完備', '僅收錄 metadata', NULL, '熱蘭遮城復原研究之基礎參考');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (76, '臺灣及澎湖群島圖', 'VOC 製圖師', '1640-1660', 2, 2, '荷蘭（原件）', NULL, NULL, 'nl', '17世紀荷蘭東印度公司繪製之臺灣本島及澎湖群島地圖，含沿海水文資訊', '古地圖;澎湖;VOC;航行', '荷西時期', '臺灣;澎湖', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '原件藏荷蘭，數位版未完備', '僅收錄 metadata', NULL, '荷治時期最完整之臺灣全島地圖之一');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (77, '西班牙雞籠港圖', '西班牙製圖師', '1626-1642', 2, 2, '西班牙（原件）', NULL, NULL, 'es', '西班牙統治北臺灣時期繪製之雞籠港（今基隆）地形與防禦配置圖', '古地圖;西班牙;雞籠;城防', '荷西時期', '雞籠（基隆）', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '原件藏西班牙或菲律賓檔案館，數位化程度極低', '僅收錄 metadata', '西班牙', '西班牙時期北臺灣唯一之港灣地圖');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (78, '熱蘭遮城版畫', '未知（刊於《被遺誤的台灣》）', '1675', 2, 5, '荷蘭（原刊）', NULL, NULL, 'nl', '《被遺誤的台灣》1675年原刊本所附熱蘭遮城銅版畫，為該城最著名的歷史圖像', '熱蘭遮城;版畫;荷治;建築', '荷西時期', '大員（臺南安平）', NULL, '被遺誤的台灣（''t Verwaerloosde Formosa）', NULL, NULL, '2026-07-30', 'UNCLEAR', '原刊本藏荷蘭圖書館，數位影像散見', '僅收錄 metadata', NULL, '最常被引用的荷治臺灣圖像');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (79, '荷蘭人繪臺灣原住民圖像', '荷蘭繪師／VOC 人員', '1640-1660', 2, 5, '荷蘭（原件）', NULL, NULL, 'nl', '17世紀荷蘭繪師描繪臺灣原住民（西拉雅族等）之生活、服飾與體貌圖像', '原住民;西拉雅;荷治;風俗', '荷西時期', '南部臺灣', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '原件藏荷蘭，數位版未完備', '僅收錄 metadata', NULL, '視覺人類學之原始資料');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (80, '大員市鎮復原圖（現代繪製）', '翁嘉聲／成大建築系', '2000', 2, 5, '成功大學建築系', 'NCKU-ANPING-2000', NULL, 'zh', '成功大學建築系根據荷蘭史料繪製之大員市鎮（今臺南安平）17世紀可能樣貌復原圖', '大員;市鎮;復原;建築', '荷西時期', '大員（臺南安平）', NULL, '荷治時期熱蘭遮城與大員市鎮研究', NULL, '成功大學建築系', '2026-07-30', 'ARR', '學術研究成果，重製或引用需取得授權', '僅收錄 metadata', NULL, '現代學術復原研究成果');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (81, '福爾摩沙—尋找十七世紀的臺灣（紀錄片）', '國立臺灣歷史博物館', '2008', 2, 5, '國立臺灣歷史博物館', 'NMTH-FORMOSA-2008', 'https://www.nmth.gov.tw/', 'zh', '國立臺灣歷史博物館製作之17世紀臺灣歷史紀錄片，以荷西時期為主要背景，含學者訪談、古地圖動畫與遺址拍攝', '紀錄片;荷治;西班牙;大員', '荷西時期', '全臺灣', NULL, NULL, '國立臺灣歷史博物館', NULL, '2026-07-30', 'UNCLEAR', '國立臺灣歷史博物館發行，展場播放或館方授權', '僅收錄 metadata', NULL, '少數公開播映之荷西時期歷史紀錄片');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (82, '熱蘭遮城數位 3D 復原模型', '成功大學考古學研究所', '2015', 2, 5, '成功大學', 'NCKU-3DZL-2015', NULL, 'zh', '成功大學團隊以考古發掘成果與荷蘭史料數位重建之熱蘭遮城3D模型，含城牆、稜堡與主要建築', '熱蘭遮城;3D;數位復原;考古', '荷西時期', '大員（臺南安平）', NULL, NULL, '成功大學', NULL, '2026-07-30', 'ARR', '學術研究成果，公開展示版本有限', '僅收錄 metadata', NULL, '數位時代之研究展示成果');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (83, '熱蘭遮城考古發掘報告（第一期至第四期）', '成功大學考古學研究所', '2000-2015', 2, 7, '成功大學考古學研究所', 'NCKU-ZL-EX-2000', NULL, 'zh', '成功大學團隊對熱蘭遮城（安平古堡）進行之四期考古發掘報告，出土大量荷蘭時期陶瓷、錢幣、建築構件等', '熱蘭遮城;考古;發掘;陶瓷;VOC', '荷西時期', '大員（臺南安平）', NULL, '熱蘭遮城平面圖; 熱蘭遮城數位3D復原模型', NULL, '成功大學考古學研究所', '2026-07-30', 'ARR', '學術發掘報告，公開出版但數位版有限', '僅收錄 metadata', NULL, '直接印證與補充荷蘭文獻之關鍵考古資料');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (84, '大員市鎮考古調查與試掘報告', '成功大學考古學研究所 / 臺南市考古中心', '2010-2020', 2, 7, '成功大學考古學研究所', 'NCKU-TAYOU-ARCH-2010', NULL, 'zh', '荷治時期大員市鎮（今安平舊聚落）考古試掘報告，發現荷蘭時期市街遺構與生活遺物', '大員;市鎮;考古;安平', '荷西時期', '大員（臺南安平）', NULL, '大員市鎮復原圖', NULL, '成功大學考古學研究所', '2026-07-30', 'ARR', '學術報告，尚未完整公開', '僅收錄 metadata', NULL, '為文字記載之大員市鎮提供物質證據');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (85, '普羅民遮城遺構調查報告', '臺南市文化局', '2005-2015', 2, 7, '臺南市文化局', 'TNC-PROV-ARCH-2005', NULL, 'zh', '赤嵌樓（原普羅民遮城）歷次修復與考古調查紀錄，含荷蘭時期地基與城垣遺構', '普羅民遮城;赤嵌樓;考古;建築', '荷西時期', '赤嵌（臺南市區）', NULL, NULL, '臺南市文化局', NULL, '2026-07-30', 'UNCLEAR', '分散於歷次修復報告中，未集中數位化', '僅收錄 metadata', NULL, '普羅民遮城文字史料有限，考古為主要重建依據');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (86, '荷蘭東印度公司福爾摩沙貿易帳冊（1630-1662）', 'VOC 巴達維亞會計部', '1630-1662', 2, 10, '荷蘭國家檔案館', 'VOC-TRADE-FOR-1630', NULL, 'nl', '荷蘭東印度公司臺員商館之貿易帳冊，詳載鹿皮、砂糖、米、絲綢、硫磺等進出口數量與價格', '貿易;VOC;鹿皮;砂糖;帳冊', '荷西時期', '大員;全臺灣', NULL, '熱蘭遮城日誌', NULL, '荷蘭國家檔案館（典藏）', '2026-07-30', 'UNCLEAR', '原件藏荷蘭，未數位化或僅有微捲', '僅收錄 metadata', NULL, '荷治時期經濟史最直接的量化史料');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (87, '荷治時期臺灣鹿皮出口記錄', 'VOC 貿易記錄', '1630-1660', 2, 10, '荷蘭國家檔案館', 'VOC-DEERSKIN-FOR', NULL, 'nl', '荷治時期鹿皮出口至日本之統計資料，年出口量曾達10萬張以上，為17世紀臺灣最重要的出口商品', '鹿皮;貿易;VOC;日本;生態', '荷西時期', '大員;日本', NULL, '荷蘭東印度公司福爾摩沙貿易帳冊', NULL, '荷蘭國家檔案館（典藏）', '2026-07-30', 'UNCLEAR', '僅有原始檔案，無中譯數位版', '僅收錄 metadata', NULL, '鹿皮貿易是荷治經濟核心，兼涉生態史與原住民獵場');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (88, '熱蘭遮城日誌氣象記錄與古氣候重建研究', '學術研究團隊', '1629-1662', 2, 12, '臺灣日記知識庫／國際期刊論文', 'CLIMATE-ZLD-1629', 'https://taco.ith.sinica.edu.tw/tdk/', 'zh;en', '《熱蘭遮城日誌》逐日記載氣象（風向、降雨、颱風），當代氣候學者利用此資料重建17世紀東亞古氣候', '古氣候;氣象;颱風;ENSO', '荷西時期', '大員;東亞', NULL, '熱蘭遮城日誌卷一至卷四', NULL, '國際古氣候學期刊（研究發表）', '2026-07-30', 'UNCLEAR', '學術論文需購閱，原始日誌資料免費', '僅收錄 metadata', '臺灣日記知識庫／國際期刊論文', '17世紀全球最密集的逐日氣象記錄之一');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (89, '臺江內海變遷研究（16-19世紀）', '學術研究團隊', '1990-2020', 2, 12, '各大學地理系／臺南市文化局', 'TAIJIANG-GEO', NULL, 'zh;en', '結合荷蘭地圖與清代方志重建臺江內海海岸線與港口淤積變遷，解釋大員港道消失原因', '臺江內海;海岸變遷;地形;大員', '荷西時期', '臺江內海;大員', NULL, '大員港灣圖; 手繪福爾摩沙地圖', NULL, '學術研究論文，數位版散見', '2026-07-30', 'UNCLEAR', '學術論文需購閱，部分開放取用', '僅收錄 metadata', '各大學地理系', '自然環境變遷直接影響政治史：大員港道淤積是鄭軍登岸之因');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (90, '荷西時期臺灣火山與地震史料', '荷蘭東印度公司官員', '1624-1662', 2, 12, '熱蘭遮城日誌／VOC檔案', 'EQ-FORMOSA-1600', NULL, 'nl;en', '《熱蘭遮城日誌》及其他VOC檔案中記載之地震事件，為臺灣最早的地震歷史記錄', '地震;火山;自然災害;VOC', '荷西時期', '全臺灣', NULL, '熱蘭遮城日誌', NULL, NULL, '2026-07-30', 'UNCLEAR', '原始檔案荷蘭文，部分已中譯', '僅收錄 metadata', '熱蘭遮城日誌', '臺灣地震史之起點');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (91, '從征實錄', '楊英（延平王戶官）', '1664-1674', 3, 1, '國立臺灣圖書館（原件）／臺灣銀行經濟研究室（刊本）', 'YANGYING-CONQ-01', NULL, 'zh', '延平王戶官楊英隨鄭成功征臺前後之逐日紀錄，詳載登陸、圍城、屯墾、撫番等軍政大事，為明鄭時期第一手官方史料', '明鄭;鄭成功;征臺;從征實錄;戶官', '明鄭時期（1661–1683）', '大員（臺南安平）;全臺灣', NULL, NULL, '臺灣銀行經濟研究室（臺灣文獻叢刊第32種）', NULL, '2026-07-30', 'ARR', '臺灣文獻叢刊已絕版，需圖書館查閱', '已收錄 metadata', NULL, '為明鄭時期最核心之原始官方紀錄');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (92, '臺灣外記', '江日昇', '1704-1710', 3, 1, '國立臺灣圖書館（原件）／臺灣銀行經濟研究室（刊本）', 'JIANGRS-TW-OUT-01', NULL, 'zh', '江日昇以章回體撰寫明鄭四代（鄭芝龍至鄭克塽）興亡編年史，凡10卷，取材自鄭氏故將口述與見聞', '明鄭;鄭成功;鄭經;鄭克塽;臺灣', '明鄭時期（1661–1683）', '全臺灣;福建', NULL, NULL, '臺灣銀行經濟研究室（臺灣文獻叢刊第60種）', NULL, '2026-07-30', 'ARR', '臺灣文獻叢刊已絕版', '已收錄 metadata', NULL, '體例最特殊之明鄭史書，含諸多他書未載細節');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (93, '閩海紀要', '夏琳', '1670-1695', 3, 1, '國立臺灣圖書館（原件）／臺灣銀行經濟研究室（刊本', 'XIALIN-MH-01', NULL, 'zh', '夏琳據親身見聞撰寫鄭成功至鄭克塽之鄭氏興亡史，二卷，為明鄭研究重要基本史料', '明鄭;夏琳;閩海;鄭成功', '明鄭時期（1661–1683）', '全臺灣;福建', NULL, NULL, '臺灣銀行經濟研究室（臺灣文獻叢刊第11種）', NULL, '2026-07-30', 'ARR', '臺灣文獻叢刊絕版', '已收錄 metadata', NULL, '夏琳為鄭經朝臣，具當事人身分');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (94, '海紀輯要', '夏琳', '1670-1695', 3, 1, '國立臺灣圖書館（原件）／臺灣銀行經濟研究室（刊本）', 'XIALIN-HJJY-01', NULL, 'zh', '夏琳《閩海紀要》之簡編編年本，一卷，以年繫事記鄭氏三代史事', '明鄭;夏琳;編年', '明鄭時期（1661–1683）', '全臺灣;福建', NULL, '閩海紀要', '臺灣銀行經濟研究室（臺灣文獻叢刊第11種附）', NULL, '2026-07-30', 'ARR', '同上', '已收錄 metadata', NULL, '為閩海紀要之簡編本');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (95, '靖海紀事', '施琅', '1683-1696', 3, 1, '國立臺灣圖書館（原件）／臺灣銀行經濟研究室（刊本）', 'SHILANG-JH-01', NULL, 'zh', '施琅平臺後奏疏文獻彙編，含澎湖大捷、臺灣棄留、善後撫番等關鍵奏疏，為1683年清廷攻取臺灣之第一手官方紀錄', '施琅;平臺;奏疏;臺灣棄留', '明鄭時期（1661–1683）', '澎湖;臺灣;福建', NULL, NULL, '臺灣銀行經濟研究室（臺灣文獻叢刊第13種）', NULL, '2026-07-30', 'ARR', '臺灣文獻叢刊絕版', '已收錄 metadata', NULL, '恭陳臺灣棄留疏為臺灣歸屬清廷之關鍵文獻');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (96, 'THDL—施琅題報澎湖大捷疏', '施琅', '1683-08', 3, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-MQ-1683001', 'http://thdl.ntu.edu.tw/', 'zh', '康熙22年閏6月施琅題報澎湖海戰大捷奏疏，詳述鄭軍與清軍交戰過程、俘斬人數、船隻損毀等', '施琅;澎湖海戰;明鄭;清代奏疏', '明鄭時期（1661–1683）', '澎湖;福建', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', 'THDL 提供免登入全文檢索', '已收錄 metadata', '臺灣歷史數位圖書館', '澎湖海戰決定明鄭存亡');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (97, 'THDL—施琅恭陳臺灣棄留疏', '施琅', '1684-04', 3, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-MQ-1684001', 'http://thdl.ntu.edu.tw/', 'zh', '康熙23年施琅上疏力主臺灣不可棄，詳陳臺灣戰略價值、物產、民情，為臺灣納入清版圖之關鍵文獻', '臺灣棄留;施琅;清代;戰略', '明鄭時期（1661–1683）', '全臺灣;福建', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', 'THDL免登入全文檢索', '已收錄 metadata', '臺灣歷史數位圖書館', '決定臺灣歸屬之關鍵奏疏');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (98, 'THDL—鄭克塽降清文書', '鄭克塽（署）', '1683-08', 3, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-MQ-1683002', 'http://thdl.ntu.edu.tw/', 'zh', '鄭克塽降清之降表與來往文書，含鄭克塽、劉國軒、馮錫範等明鄭要員降清相關文獻', '鄭克塽;降清;明鄭;清代', '明鄭時期（1661–1683）', '臺灣;福建', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', 'THDL免登入全文檢索', '已收錄 metadata', '臺灣歷史數位圖書館', '明鄭政權終結之官方記錄');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (99, 'THDL—清廷招撫鄭經往來文書', '康熙朝政府', '1663-1678', 3, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-MQ-1663001-1678', 'http://thdl.ntu.edu.tw/', 'zh', '康熙朝多次招撫鄭經之往來文書，含明珠、李光地等官員招撫建議、鄭經回覆、談判條件等', '招撫;鄭經;明鄭;和談', '明鄭時期（1661–1683）', '臺灣;福建;京師', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', 'THDL免登入全文檢索', '已收錄 metadata', '臺灣歷史數位圖書館', '清廷對鄭經之和平攻勢第一手史料');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (100, 'THDL—明末清初臺灣海事相關奏疏選', '多件明朝／南明官員', '1644-1661', 3, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-MQ-1644-1661-ALL', 'http://thdl.ntu.edu.tw/', 'zh', 'THDL收錄明清臺灣行政檔案中與鄭芝龍、鄭成功相關之崇禎末年至永曆年間奏疏，構成鄭氏勢力崛起之官方文書脈絡', '鄭芝龍;鄭成功;奏疏;海事;明清', '明鄭時期（1661–1683）', '福建;臺灣海峽', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', 'THDL免登入全文檢索', '已收錄 metadata', '臺灣歷史數位圖書館', '鄭氏由海商集團轉變為政權之歷史背景');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (101, '華夷變態—臺灣鄭氏相關卷', '林春勝、林信篤（編）', '1644-1720', 3, 1, '國立臺灣大學圖書館（日文原版）', 'KA-I-HENTAI-ZHENG', NULL, 'ja', '日本長崎唐通事蒐集中國情報彙編《華夷變態》中與臺灣鄭氏相關之卷冊，含1661年鄭成功攻臺傳入長崎之第一時間消息', '華夷變態;唐通事;鄭成功;明鄭;日本情報', '明鄭時期（1661–1683）', '福建;臺灣;長崎', NULL, NULL, '日本內閣文庫（抄本典藏）', NULL, '2026-07-30', 'UNCLEAR', '日文原版國圖有藏，中譯散見學術論文', '僅收錄 metadata', NULL, '為外國情報系統中最早的鄭成功攻臺記錄');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (102, '鄭成功致荷蘭人書信（英文譯本）', '鄭成功', '1661-04', 3, 1, '荷蘭海牙中央檔案館／C.E.S. 《被遺誤的台灣》', 'KOXINGA-LETTER-ZLD', NULL, 'en', '鄭成功於1661年4月渡海前後致荷蘭長官揆一之書信，要求投降讓出熱蘭遮城，收錄於《被遺誤的台灣》附錄', '鄭成功;揆一;書信;熱蘭遮城', '明鄭時期（1661–1683）', '大員;金門', NULL, '被遺誤的台灣（''t Verwaerloosde Formosa）', NULL, NULL, '2026-07-30', 'UNCLEAR', '原件藏荷蘭，中譯散見', '僅收錄 metadata', 'C.E.S. 《被遺誤的台灣》', '鄭荷之間最後通牒原始文件');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (103, '海外發現的鄭成功文物與文書研究', '翁佳音、陳宗仁等', '1990-2020', 3, 1, '中研院臺史所等', 'ZHENG-WENWU-OVERSEAS', NULL, 'zh;en', '日本、歐洲等地陸續發現之鄭成功相關文物與文書研究，含荷蘭海牙檔案館、日本宮城縣等新發現史料', '鄭成功;海外史料;文物;新發現', '明鄭時期（1661–1683）', '全臺灣;日本;荷蘭', NULL, NULL, NULL, '中研院臺灣史研究所', '2026-07-30', 'UNCLEAR', '學術論文散見', '僅收錄 metadata', '中研院臺史所等', '海外新發現史料補中文文獻之不足');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (104, 'THDL—姚啟聖題報攻臺機宜疏', '姚啟聖', '1681-1683', 3, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-MQ-1681-YQS', 'http://thdl.ntu.edu.tw/', 'zh', '福建總督姚啟聖題報籌畫攻取臺灣之機宜方略奏疏，詳陳戰備、招撫與善後策略，為清廷決策攻臺之關鍵文書', '姚啟聖;攻臺;籌畫;清鄭戰爭', '明鄭時期（1661–1683）', '福建;臺灣', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', 'THDL免登入全文檢索', '已收錄 metadata', '臺灣歷史數位圖書館', '姚啟聖為施琅之外另一攻臺關鍵人物');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (105, 'THDL—明珠等奏與鄭經和談始末疏', '明珠等', '1669-1670', 3, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-MQ-1669-MZ', 'http://thdl.ntu.edu.tw/', 'zh', '康熙朝大學士明珠等奏報清廷與鄭經和談交涉全過程，含雙方條件與破裂原因，為清鄭外交最重要紀錄', '明珠;鄭經;和談;清鄭外交', '明鄭時期（1661–1683）', '福建;京師;臺灣', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', 'THDL免登入全文檢索', '已收錄 metadata', '臺灣歷史數位圖書館', '清鄭和談為明鄭得以延續20年之關鍵');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (106, 'THDL—李率泰題報遷界事宜疏', '李率泰', '1662-1665', 3, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-MQ-1662-LST', 'http://thdl.ntu.edu.tw/', 'zh', '福建總督李率泰題報清廷遷界令（瀕海居民內遷30–50里）之執行情況，反映清廷以經濟封鎖困鄭之政策', '遷界;李率泰;清鄭;經濟封鎖', '明鄭時期（1661–1683）', '福建沿海;廣東;浙江', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', 'THDL免登入全文檢索', '已收錄 metadata', '臺灣歷史數位圖書館', '遷界令為明鄭時期東南沿海最大規模社會變動');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (107, 'THDL—吳興祚題報閩省海洋情形疏', '吳興祚', '1678-1682', 3, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-MQ-1678-WXZ', 'http://thdl.ntu.edu.tw/', 'zh', '福建巡撫吳興祚題報閩省海洋軍事部署、鄭經艦隊動向、沿海防務等，反映清鄭對峙期之日常軍事情報', '吳興祚;閩海;軍事;清鄭', '明鄭時期（1661–1683）', '福建沿海;臺灣海峽', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', 'THDL免登入全文檢索', '已收錄 metadata', '臺灣歷史數位圖書館', '清鄭長年軍事對峙之第一手軍情報告');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (108, '中研院史語所內閣大庫明鄭相關檔案', '明清內閣', '1644-1683', 3, 1, '中研院歷史語言研究所檔案館', 'IHP-GK-MZ-01', 'https://archives.ihp.sinica.edu.tw/', 'zh;en', '中研院史語所藏明清內閣大庫檔案中與臺灣鄭氏相關之題本、奏本、揭帖等，數量可觀但分散未專輯', '內閣大庫;明鄭;史語所;明清檔案', '明鄭時期（1661–1683）', '全臺灣;福建', NULL, NULL, '中研院歷史語言研究所', '中研院史語所（數位化）', '2026-07-30', 'UNCLEAR', '檔案館線上目錄查詢；數位影像部分需到館閱覽', '僅收錄 metadata', NULL, '內閣大庫檔案為明清官方最大檔案收藏');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (109, '臺灣府志（蔣毓英本）', '蔣毓英（編）', '1685', 3, 2, '國立臺灣圖書館（原件）／臺灣銀行經濟研究室（刊本）', 'JYY-TW-GAZETTEER-01', NULL, 'zh', '蔣毓英（首任臺灣知府）編纂之第一部清領臺灣府志，凡10卷，含明鄭舊事、沿革、山川、物產、風俗等', '明鄭;方志;臺灣府志;清領初期;蔣毓英', '明鄭時期（1683–1685記載）', '全臺灣', NULL, NULL, NULL, NULL, '2026-07-30', 'ARR', '已數位化部分可線上查閱', '已收錄 metadata', NULL, '為清治臺灣第一本方志，保留大量明鄭遺事');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (110, '臺灣府志（高拱乾本）', '高拱乾（編）', '1696', 3, 2, '國立臺灣圖書館（原件）／臺灣銀行經濟研究室（刊本）', 'GGQ-TW-GAZETTEER-01', NULL, 'zh', '高拱乾（分巡臺廈道）編纂之康熙臺灣府志，10卷，為康熙朝最完整之臺灣府志', '方志;臺灣府志;清領;高拱乾', '明鄭時期（1696記載）', '全臺灣', NULL, '臺灣府志（蔣毓英本）', NULL, NULL, '2026-07-30', 'ARR', '國臺圖TSDL數位典藏', '已收錄 metadata', NULL, '引用率最高之康熙臺灣府志');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (111, '諸羅縣志', '周鍾瑄（編）、陳夢林（纂）', '1717', 3, 2, '國立臺灣圖書館（原件）／臺灣銀行經濟研究室（刊本）', 'ZCC-TW-CCL-01', NULL, 'zh', '周鍾瑄主修、陳夢林總纂之諸羅縣志，凡12卷，載明鄭時期屯墾、撫番、水利開發等詳情', '方志;諸羅;明鄭;屯墾;陳夢林', '明鄭時期（1717記載）', '諸羅縣（今嘉義、雲林、彰化）', NULL, NULL, '臺灣銀行經濟研究室（臺灣文獻叢刊第141種）', NULL, '2026-07-30', 'ARR', '臺灣文獻叢刊', '已收錄 metadata', NULL, '明鄭屯墾與中部開發之重要文獻來源');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (112, '臺灣縣志', '王禮（編）、陳文達等（纂）', '1720', 3, 2, '國立臺灣圖書館（原件）', 'TW-CON-GAZETTEER-01', NULL, 'zh', '王禮主修之臺灣縣志（轄今臺南市區），凡12卷，記明鄭承天府一帶之沿革、古蹟與人物', '方志;臺灣縣;承天府;明鄭', '明鄭時期（1720記載）', '臺灣縣（今臺南市區）', NULL, NULL, NULL, NULL, '2026-07-30', 'ARR', '數位版有限', '已收錄 metadata', NULL, '明鄭政治中心承天府之地方志記載');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (113, '鳳山縣志', '陳文達（纂）', '1720', 3, 2, '國立臺灣圖書館（原件）', 'FS-GAZETTEER-01', NULL, 'zh', '陳文達纂修之鳳山縣志，凡10卷，記明鄭時期南部屯墾與原住民互動', '方志;鳳山;明鄭;屯墾', '明鄭時期（1720記載）', '鳳山縣（今高雄、屏東）', NULL, NULL, NULL, NULL, '2026-07-30', 'ARR', '數位版有限', '已收錄 metadata', NULL, '南臺灣明鄭屯墾史區域記載');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (114, '明鄭時期臺灣地圖（清繪）', '清廷繪圖官', '1683-1700', 3, 2, '國立故宮博物院／美國國會圖書館', 'QING-MAP-TW-1683', NULL, 'zh', '清廷平定臺灣後繪製之臺灣輿圖，標示明鄭時期承天府、安平鎮、北路/南路諸屯墾營盤等地名', '古地圖;明鄭;清繪;臺灣輿圖', '明鄭時期（1683–1700繪製）', '全臺灣', NULL, NULL, NULL, '國立故宮博物院（清宮舊藏）', '2026-07-30', 'UNCLEAR', '原件藏故宮或海外圖書館，數位版有限', '僅收錄 metadata', NULL, '明鄭屯墾地名之空間證據');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (115, '鄭成功攻臺路線圖（現代編繪）', '近現代研究者', '1900-2000', 3, 2, '學術文獻散見', 'KOXINGA-ROUTE-MAP', NULL, 'zh', '近現代學者根據《從征實錄》、《臺灣外記》等文獻編繪之鄭成功1661年登陸與進軍路線圖', '鄭成功;攻臺;路線;鹿耳門', '明鄭時期（1661–1683）', '鹿耳門;大員;赤嵌', NULL, '從征實錄;臺灣外記', NULL, NULL, '2026-07-30', 'UNCLEAR', '散見各論著', '已收錄 metadata', NULL, '1661年鄭軍由鹿耳門入臺江之內線作戰路線');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (116, '重修福建臺灣府志（劉良璧本）', '劉良璧（編）', '1741', 3, 2, '國立臺灣圖書館（原件）', 'LLB-TW-GAZETTEER-02', NULL, 'zh', '劉良璧主修之《重修福建臺灣府志》，凡20卷，為乾隆朝最詳備之臺灣府志，其中明鄭沿革記事較康熙府志更為完整', '方志;臺灣府志;乾隆;劉良璧', '明鄭時期（1741記載）', '全臺灣', NULL, '臺灣府志（高拱乾本）', NULL, NULL, '2026-07-30', 'ARR', 'TSDL數位典藏', '已收錄 metadata', NULL, '乾隆朝臺灣府志為明鄭記事最詳者');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (117, '續修臺灣府志（余文儀本）', '余文儀（編）', '1774', 3, 2, '國立臺灣圖書館（原件）', 'YWT-TW-GAZETTEER-03', NULL, 'zh', '余文儀主修之《續修臺灣府志》，凡26卷，為清代最後一部臺灣府志，保存明鄭時期制度與人物之回顧性記載', '方志;臺灣府志;續修;余文儀', '明鄭時期（1774記載）', '全臺灣', NULL, '重修福建臺灣府志', NULL, NULL, '2026-07-30', 'ARR', 'TSDL數位典藏', '已收錄 metadata', NULL, '清代臺灣府志之集大成者');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (118, '澎湖廳志', '林豪（纂）', '1893', 3, 2, '國立臺灣圖書館（原件）', 'PH-TING-GAZETTEER-01', NULL, 'zh', '林豪纂修之《澎湖廳志》，凡14卷，載明鄭與清軍澎湖海戰（1683年）、施琅登陸、媽宮城沿革等澎湖相關明鄭史事', '方志;澎湖;明鄭;施琅;海戰', '明鄭時期（1893記載）', '澎湖', NULL, '靖海紀事', NULL, NULL, '2026-07-30', 'ARR', 'TSDL數位典藏', '已收錄 metadata', NULL, '澎湖為1683年明鄭滅亡之決戰地');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (119, '連橫《臺灣通史》（明鄭部分）', '連橫', '1918-1920', 3, 4, '國立臺灣圖書館（原件）', 'LIANHENG-TW-HISTORY-MZ', NULL, 'zh', '連橫《臺灣通史》36卷中關於明鄭時期之紀、志、傳，為日治時期臺灣人自撰之第一部通史，明鄭部分為全書精華', '連橫;臺灣通史;明鄭;鄭成功;鄭氏', '明鄭時期（1661–1683）', '全臺灣', NULL, NULL, '臺灣通史（原刊）', NULL, '2026-07-30', 'PD', '著作權已消滅', '已收錄 metadata', NULL, '臺灣人自撰第一部通史之明鄭卷');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (120, '鄭成功傳（明清官修）', '明清國史館', '1700-1895', 3, 4, '國立故宮博物院（清宮檔案）', 'ZHENGSUCCESS-STAT-SHI', NULL, 'zh', '明清官修史書中鄭成功之傳記，含《清史稿·鄭成功傳》、明鄭相關本紀等', '鄭成功;官修;傳記;清史稿', '明鄭時期（1661–1683）', '全臺灣;福建', NULL, NULL, '清國史館', NULL, '2026-07-30', 'UNCLEAR', '清宮檔案散見各處', '僅收錄 metadata', NULL, '官方視角的鄭成功傳記');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (121, '明鄭人物合集（沈光文、陳永華、鄭經等）', '明清文獻／現代學者', '1661-1895', 3, 4, 'THDL／國立臺灣圖書館等', 'MZ-PEOPLE-COMPENDIUM', NULL, 'zh', '明鄭時期重要人物（沈光文、陳永華、鄭經、劉國軒、馮錫範、何斌等）之生平史料合集，含人物傳記、奏議、書信等', '明鄭;人物;沈光文;陳永華;鄭經', '明鄭時期（1661–1683）', '全臺灣', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '史料散見各書，未有系統性數位合集', '僅收錄 metadata', '國立臺灣圖書館等', '次要人物史料不如鄭成功集中，散佚嚴重');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (122, '沈光文文獻與明鄭文學史料', '沈光文（斯庵）', '1661-1680', 3, 4, '中研院臺史所／國立臺灣圖書館', 'SHENGUANGWEN-WORKS', NULL, 'zh', '明遺民沈光文隨鄭成功來臺，為臺灣文學鼻祖，其詩文作品為明鄭時期最珍貴的純文學史料', '沈光文;明鄭;文學;遺民', '明鄭時期（1661–1683）', '全臺灣', NULL, '明鄭人物合集', NULL, NULL, '2026-07-30', 'UNCLEAR', '作品散見；部分收錄於臺灣文獻叢刊', '僅收錄 metadata', NULL, '臺灣文學史起點的關鍵人物');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (123, '陳永華與明鄭文教制度研究', '現代學術研究', '1900-2020', 3, 4, '學術研究文獻', 'CHENYONGHUA-STUDIES', NULL, 'zh', '陳永華（鄭經時期東寧總制）輔政期間建立孔廟、推行科舉、屯田製糖等文教經濟改革之研究', '陳永華;明鄭;文教;孔廟;屯墾', '明鄭時期（1661–1683）', '全臺灣', NULL, NULL, '學術論文與專書散見', NULL, '2026-07-30', 'UNCLEAR', '學術文獻散見', '僅收錄 metadata', '學術研究文獻', '陳永華為明鄭制度建立者，影響深遠');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (124, '明鄭時期現代學術研究選輯', '近現代學者（曹永和、翁佳音、陳秋坤等）', '1970-2020', 3, 4, '學術論文與專書', 'MZ-MODERN-SCHOLAR', NULL, 'zh;en', '1970年代以來明鄭史重要學術研究選輯，含曹永和、翁佳音、陳秋坤、林偉盛、鄭維中等學者專論', '明鄭;學術研究;曹永和;翁佳音', '明鄭時期（1661–1683）', '全臺灣', NULL, NULL, '學術期刊與出版社散見', NULL, '2026-07-30', 'UNCLEAR', '學術文獻需購閱', '僅收錄 metadata', '學術論文與專書', '明鄭史研究之現代學術脈絡');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (125, '郁永河《裨海紀遊》', '郁永河', '1697', 3, 4, '國立臺灣圖書館（原件）／臺灣銀行經濟研究室（刊本）', 'YUYONGHE-BH-01', NULL, 'zh', '清初郁永河來臺採硫磺之遊記，為清領後最早之臺灣實地踏查紀錄，其中追述明鄭遺事與早期漢人開發情形', '郁永河;裨海紀遊;清初;臺灣踏查', '明鄭時期（1697記載）', '全臺灣（北路為主）', NULL, NULL, '臺灣銀行經濟研究室（臺灣文獻叢刊第44種）', NULL, '2026-07-30', 'ARR', '臺灣文獻叢刊絕版', '已收錄 metadata', NULL, '清初唯一之臺灣親歷遊記，含明鄭末期見聞');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (126, '黃叔璥《臺海使槎錄》', '黃叔璥', '1722-1736', 3, 4, '國立臺灣圖書館（原件）／臺灣銀行經濟研究室（刊本）', 'HSJ-THSCL-01', NULL, 'zh', '首任巡臺御史黃叔璥考察全臺之紀錄，凡8卷，含赤嵌筆談、番俗六考等，系統性記載明鄭遺留制度與原住民政', '黃叔璥;巡臺;使槎錄;番俗;制度', '明鄭時期（1722–1736記載）', '全臺灣', NULL, NULL, '臺灣銀行經濟研究室（臺灣文獻叢刊第4種）', NULL, '2026-07-30', 'ARR', '臺灣文獻叢刊絕版', '已收錄 metadata', NULL, '明鄭制度在清初之延續與變遷');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (127, '陳碧笙《鄭成功歷史研究》', '陳碧笙', '1980-2000', 3, 4, '學術專書', 'CBS-ZHENG-HIST-01', NULL, 'zh', '陳碧笙（廈門大學）系統性研究鄭成功之學術專著，為中國大陸學界鄭成功研究之代表作', '陳碧笙;鄭成功;學術研究;明鄭', '明鄭時期（1661–1683）', '全臺灣;福建', NULL, '明鄭時期現代學術研究選輯', NULL, '陳碧笙', '2026-07-30', 'ARR', '紙本書需購閱', '僅收錄 metadata', '學術專書', '中國大陸鄭成功研究代表性著作');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (128, '鄭成功畫像（國立臺灣博物館藏）', '不明（清代摹本）', '1700-1895', 3, 5, '國立臺灣博物館', 'NTM-KOXINGA-PORTRAIT', 'https://collections.culture.tw/ntm_collectionsweb/', 'zh', '國立臺灣博物館藏鄭成功全身官服坐像畫，為最廣為流傳之鄭成功標準肖像，清代摹本', '鄭成功;畫像;肖像;清代摹本', '明鄭時期（清代摹本）', NULL, NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '藏品系統公開瀏覽', '已收錄 metadata', NULL, '鄭成功最經典之視覺形象');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (129, '延平郡王祠歷史影像', '19世紀末–20世紀初攝影師', '1870-1945', 3, 5, '國家圖書館臺灣記憶／國立臺灣圖書館', 'YANPING-TEMPLE-PHOTO', 'https://tm.ncl.edu.tw/', 'zh', '延平郡王祠（原開山王廟）之19世紀末至日治時期歷史照片，見證鄭成功崇拜由民間祭祀到官方祠祀之歷程', '延平郡王祠;鄭成功;祠祀;歷史照片', '明鄭時期（清代–日治修建）', '臺南市（延平郡王祠）', NULL, NULL, NULL, '國家圖書館（數位化）', '2026-07-30', 'UNCLEAR', '臺灣記憶系統公開瀏覽', '已收錄 metadata', NULL, '鄭成功信仰場域之視覺史料');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (130, '明鄭時期文物圖檔（國立臺灣博物館藏品精選）', '國立臺灣博物館', '2020', 3, 5, '國立臺灣博物館', 'NTM-MZ-ARTIFACTS', 'https://collections.culture.tw/ntm_collectionsweb/', 'zh', '國立臺灣博物館藏品中明鄭時期相關文物（鄭成功印、令牌、兵器、陶瓷器等）之數位圖檔', '明鄭;文物;館藏;兵器;陶瓷', '明鄭時期（1661–1683）', '全臺灣', NULL, NULL, '國立臺灣博物館', '國立臺灣博物館（攝影數位化）', '2026-07-30', 'UNCLEAR', '藏品系統公開瀏覽', '已收錄 metadata', NULL, '博物館藏明鄭實物之視覺資料');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (131, '明鄭臺灣（國立臺灣歷史博物館紀錄片）', '國立臺灣歷史博物館', '2011', 3, 5, '國立臺灣歷史博物館', 'NMTH-MZ-DOC-2011', 'https://www.nmth.gov.tw/', 'zh', '國立臺灣歷史博物館製作之明鄭時期歷史紀錄片，含學者訪談、CG動畫重現、遺址拍攝', '明鄭;鄭成功;紀錄片;歷史;國立臺灣歷史博物館', '明鄭時期（1661–1683）', '全臺灣', NULL, NULL, '國立臺灣歷史博物館', NULL, '2026-07-30', 'UNCLEAR', '館方授權播映', '僅收錄 metadata', NULL, '史博館通史型展示之明鄭部分');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (132, '發現臺灣—明鄭時期特展（3D影像與虛擬導覽）', '國立臺灣博物館', '2018', 3, 5, '國立臺灣博物館', 'NTM-MZ-EXPO-2018', 'https://www.ntm.gov.tw/', 'zh', '國立臺灣博物館2018年「發現臺灣」特展之明鄭時期展區數位影像，含鄭成功文物、熱蘭遮城模型等', '明鄭;特展;博物館;鄭成功', '明鄭時期（1661–1683）', '全臺灣', NULL, NULL, '國立臺灣博物館', NULL, '2026-07-30', 'UNCLEAR', '展覽已結束，部分數位內容留存', '僅收錄 metadata', NULL, '明鄭文物之展覽紀錄');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (133, '鄭成功文物專題展（國立臺灣歷史博物館）', '國立臺灣歷史博物館', '2015', 3, 5, '國立臺灣歷史博物館', 'NMTH-MZ-EXPO-2015', 'https://www.nmth.gov.tw/', 'zh', '國立臺灣歷史博物館舉辦之鄭成功文物專題展數位影像，含明代軍械、鄭成功印、鄭氏家族文物等', '鄭成功;特展;國立臺灣歷史博物館;文物', '明鄭時期（1661–1683）', '全臺灣', NULL, NULL, '國立臺灣歷史博物館', NULL, '2026-07-30', 'UNCLEAR', '展覽已結束，部分內容留存', '僅收錄 metadata', NULL, '史博館專題展之視覺記錄');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (134, '熱蘭遮城明鄭時期考古層', '成功大學考古學研究所', '2000-2020', 3, 7, '成功大學考古學研究所', 'NCKU-ZL-MZ-ARCH', NULL, 'zh', '熱蘭遮城考古發掘中明鄭時期地層（1662–1683年）出土遺留，含中國明清陶瓷、鄭氏時期錢幣、建築構件等', '熱蘭遮城;明鄭;考古;地層;陶瓷', '明鄭時期（1661–1683）', '大員（臺南安平）', NULL, '熱蘭遮城考古發掘報告（荷西時期第36筆）', NULL, '成功大學考古學研究所', '2026-07-30', 'ARR', '發掘報告出版品', '僅收錄 metadata', NULL, '明鄭時期之物質文化直接證據');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (135, '明鄭軍事遺址調查（安平與臺南地區）', '臺南市文化局／成功大學', '2000-2020', 3, 7, '臺南市文化局', 'TNC-MZ-MILITARY-ARCH', NULL, 'zh', '明鄭時期軍事設施（安平鎮、砲臺、營盤等）之考古調查與地面遺構調查報告', '明鄭;軍事;遺址;安平;營盤', '明鄭時期（1661–1683）', '安平;臺南市', NULL, NULL, '臺南市文化局', NULL, '2026-07-30', 'UNCLEAR', '調查報告分散，未集中數位化', '僅收錄 metadata', NULL, '明鄭軍事部署之空間證據');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (136, '明鄭時期屯墾遺址與水利設施考古調查', '學術研究團隊', '2000-2020', 3, 7, '學術研究文獻', 'MZ-TUNKEN-ARCH', NULL, 'zh', '明鄭時期屯墾聚落（林圯埔、斗六門、水沙連等）遺址與水利設施（通埒圳、王田圳等）之考古與田野調查', '明鄭;屯墾;水利;遺址;田野調查', '明鄭時期（1661–1683）', '南投;雲林;彰化;臺南', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '學術報告散見', '僅收錄 metadata', '學術研究文獻', '明鄭北向屯墾之考古學證據');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (137, '明鄭時期陶瓷出土與貿易陶瓷研究', '學術研究團隊', '1990-2020', 3, 7, '學術期刊論文', 'MZ-CERAMICS-TRADE', NULL, 'zh;en', '明鄭時期出土陶瓷之類型學與產地分析研究，反映明鄭與中國大陸、日本、東南亞之貿易網絡', '陶瓷;貿易;明鄭;考古;外銷瓷', '明鄭時期（1661–1683）', '全臺灣;東亞', NULL, NULL, '學術期刊（如《田野考古》）', NULL, '2026-07-30', 'UNCLEAR', '學術論文需購閱', '僅收錄 metadata', '學術期刊論文', '明鄭貿易之物質證據');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (138, '陳永華墓調查與明鄭墓葬群考古', '學術研究團隊', '2000-2020', 3, 7, '學術論文／田野報告', 'MZ-BURIAL-ARCH', NULL, 'zh', '陳永華墓（臺南柳營）、鄭氏家族墓葬、明鄭時期將士墓葬群之考古調查與發掘研究', '陳永華;墓葬;明鄭;考古;柳營', '明鄭時期（1661–1683）', '臺南柳營;全臺', NULL, '陳永華與明鄭文教制度研究', NULL, NULL, '2026-07-30', 'UNCLEAR', '調查報告散見', '僅收錄 metadata', '學術論文／田野報告', '明鄭人物墓葬之考古學研究');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (139, '明鄭時期文化層辨識方法與應用', '學術研究團隊', '2000-2020', 3, 7, '學術期刊論文', 'MZ-CULTURAL-LAYER', NULL, 'zh;en', '考古學中明鄭時期文化層之辨識方法（與荷西層、清初層之區分），含陶瓷類型學、地層學、碳十四定年等', '明鄭;考古;文化層;定年;陶瓷', '明鄭時期（1661–1683）', '全臺灣', NULL, '熱蘭遮城明鄭時期考古層', NULL, '學術期刊', NULL, '2026-07-30', 'UNCLEAR', '學術論文需購閱', '學術期刊論文', '僅收錄 metadata');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (140, '明鄭時期碑碣拓本（中研院臺史所碑碣資料庫）', '不詳（明鄭時期）', '1661-1683', 3, 8, '中研院臺灣史研究所碑碣資料庫', 'ACAD-SINICA-ITH-RUB-MZ', 'https://rub.ith.sinica.edu.tw/', 'zh', '中研院臺史所臺灣碑碣拓本資料庫收錄之明鄭時期碑碣拓本，數量極少但極珍貴', '碑碣;明鄭;拓本;中研院', '明鄭時期（1661–1683）', '全臺灣', NULL, NULL, '中研院臺灣史研究所', '中研院臺史所（數位典藏）', '2026-07-30', 'UNCLEAR', '資料庫公開查詢；拓本授權需申請', '已收錄 metadata', NULL, '明鄭時期留存碑碣極少，每通皆為國寶級');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (141, '延平郡王祠碑記（清代至日治）', '清代至日治官員', '1875-1945', 3, 8, '延平郡王祠／中研院臺史所', 'YANPING-INSCRIPTIONS', 'https://rub.ith.sinica.edu.tw/', 'zh', '延平郡王祠內清代至日治時期歷次修建碑記，反映鄭成功官方祭祀地位之演變', '延平郡王祠;碑記;鄭成功;祠祀', '明鄭時期（清代–日治紀念）', '臺南市延平郡王祠', NULL, '延平郡王祠歷史影像', NULL, '中研院臺史所（數位化）', '2026-07-30', 'UNCLEAR', '資料庫公開查詢', '已收錄 metadata', '延平郡王祠', '鄭成功崇拜之官方碑刻史料');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (142, '明鄭時期寺廟碑記', '眾多', '1661-1895', 3, 8, '中研院臺史所碑碣資料庫', 'MZ-TEMPLE-INSCRIPTIONS', 'https://rub.ith.sinica.edu.tw/', 'zh', '全臺寺廟中保存之明鄭時期或紀念明鄭人物之碑記，如北港朝天宮、臺南大天后宮、開基玉皇宮等明鄭開基廟宇碑刻', '寺廟;碑記;明鄭;民間信仰', '明鄭時期（1661–1895）', '全臺灣', NULL, NULL, NULL, '中研院臺史所（數位化）', '2026-07-30', 'UNCLEAR', '資料庫公開查詢', '已收錄 metadata', NULL, '開基廟宇碑記多保存明鄭創建記憶');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (143, '臺南大天后宮碑記', '清代–日治時期', '1700-1945', 3, 8, '大天后宮／中研院臺史所碑碣資料庫', 'DA-TIAN-HOU-INSCRIPTIONS', 'https://rub.ith.sinica.edu.tw/', 'zh', '臺南大天后宮（明鄭時期建立之官祀媽祖廟）歷代碑記，含施琅平臺後擴建碑記、歷次重修碑記，為明鄭至清領延續之宗教空間見證', '大天后宮;媽祖;明鄭;碑記;府城', '明鄭時期（1661–1895）', '臺南市', NULL, '明鄭時期寺廟碑記', NULL, '中研院臺史所（數位化）', '2026-07-30', 'UNCLEAR', '資料庫公開查詢', '已收錄 metadata', '大天后宮', '明鄭官祀媽祖廟之碑刻史料');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (144, '臺南開基武廟碑記', '清代–日治時期', '1700-1945', 3, 8, '開基武廟／中研院臺史所碑碣資料庫', 'KAIJI-WU-INSCRIPTIONS', 'https://rub.ith.sinica.edu.tw/', 'zh', '臺南開基武廟（關帝廟，明鄭時期創建，傳為鄭成功部將所立）歷代碑記見證明鄭武將信仰', '開基武廟;關帝;明鄭;碑記;府城', '明鄭時期（1661–1895）', '臺南市', NULL, '明鄭時期寺廟碑記', NULL, '中研院臺史所（數位化）', '2026-07-30', 'UNCLEAR', '資料庫公開查詢', '已收錄 metadata', '開基武廟', '明鄭武將信仰之碑刻證據');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (145, '五妃廟碑記與墓塋', '清代官員', '1746-1945', 3, 8, '五妃廟／中研院臺史所碑碣資料庫', 'WU-FEI-INSCRIPTIONS', 'https://rub.ith.sinica.edu.tw/', 'zh', '五妃廟（明寧靖王五妃殉節處）碑記與墓塋，含乾隆年間官方立碑、清代重修碑記，見證明鄭宗室殉國之歷史記憶', '五妃廟;明鄭;殉節;寧靖王;碑記', '明鄭時期（1661–1746記載）', '臺南市五妃街', NULL, '明鄭時期寺廟碑記', NULL, '中研院臺史所（數位化）', '2026-07-30', 'UNCLEAR', '資料庫公開查詢', '已收錄 metadata', '五妃廟', '明鄭宗室最後之歷史記憶');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (146, '開基玉皇宮沿革碑記', '清代–日治時期', '1700-1945', 3, 8, '開基玉皇宮／中研院臺史所碑碣資料庫', 'KAIJI-YUH-INSCRIPTIONS', 'https://rub.ith.sinica.edu.tw/', 'zh', '臺南開基玉皇宮（天公廟，傳為鄭成功部將所立）之沿革碑記與歷史文獻，府城最早天公信仰祭祀場所', '開基玉皇宮;天公;明鄭;碑記;府城', '明鄭時期（1661–1895）', '臺南市', NULL, '明鄭時期寺廟碑記', NULL, '中研院臺史所（數位化）', '2026-07-30', 'UNCLEAR', '資料庫公開查詢', '已收錄 metadata', '開基玉皇宮', '府城天公信仰之源頭碑刻');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (147, '明鄭屯墾制度與土地開發研究', '現代學術研究', '1900-2020', 3, 10, '學術論文與專書', 'MZ-TUNKEN-LAND-STUDY', NULL, 'zh', '明鄭時期軍屯、民屯、墾荒制度之綜合研究，含各營盤田分布、王田/私田/官田三類土地制度分析', '明鄭;屯墾;土地;制度;王田', '明鄭時期（1661–1683）', '全臺灣', NULL, NULL, '學術期刊與專書散見', NULL, '2026-07-30', 'UNCLEAR', '學術文獻需購閱', '僅收錄 metadata', '學術論文與專書', '明鄭土地制度為清代臺灣土地關係之基礎');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (148, '明鄭時期對外貿易史料', '學術研究團隊', '1990-2020', 3, 10, '學術論文', 'MZ-TRADE-DATA', NULL, 'zh;en', '明鄭時期與英國（東印度公司EIC）、日本、呂宋、東南亞等地貿易往來之相關文獻與研究', '明鄭;貿易;英國東印度公司;日本;東南亞', '明鄭時期（1661–1683）', '全臺灣;東亞', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '史料極分散，系統性整理尚不足', '僅收錄 metadata', '學術論文', '明鄭與英國EIC之貿易為清領前最後的國際貿易時期');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (149, '明鄭時期軍工與技術發展（造船、火藥、鑄砲）', '現代學術研究', '2000-2020', 3, 10, '學術論文', 'MZ-MILITARY-TECH', NULL, 'zh', '明鄭時期在臺造船、火藥製造、鑄砲等軍事工業之史料與研究，明鄭水師為東亞最強海上武力之一', '明鄭;軍事;造船;火藥;鑄砲', '明鄭時期（1661–1683）', '全臺灣', NULL, '熱蘭遮城明鄭時期考古層', NULL, NULL, '2026-07-30', 'UNCLEAR', '史料極少，研究有限', '僅收錄 metadata', '學術論文', '軍工史料匱乏，多靠推論與間接證據');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (150, '明鄭時期度量衡與貨幣制度', '現代學術研究', '2000-2020', 3, 10, '學術論文', 'MZ-CURRENCY-MEASURE', NULL, 'zh', '明鄭時期在臺使用之貨幣（永曆錢、西班牙銀圓、荷蘭銀幣）與度量衡制度之研究', '明鄭;貨幣;度量衡;永曆錢;銀圓', '明鄭時期（1661–1683）', '全臺灣', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '史料分散', '僅收錄 metadata', '學術論文', '明鄭貨幣考古發現為重要實證來源');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (151, '明鄭與英國東印度公司（EIC）往來文書', '英國東印度公司', '1670-1683', 3, 10, '大英圖書館／英國檔案館', 'EIC-TAIWAN-1670', NULL, 'en', '1670年英國東印度公司船艦「萬丹號」首次抵臺與鄭經簽訂通商協定，至1683年間英鄭貿易之往來文書', '英國東印度公司;明鄭;貿易;萬丹號', '明鄭時期（1661–1683）', '大員;安平;倫敦', NULL, '明鄭時期對外貿易史料', NULL, '大英圖書館（典藏）', '2026-07-30', 'UNCLEAR', '原件藏英國，數位版有限，中譯散見', '僅收錄 metadata', NULL, '明鄭與歐洲國家之正式外交與商業文書');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (152, '明鄭時期鹿皮產銷與原住民獵區', '現代學術研究', '2000-2020', 3, 10, '學術論文', 'MZ-DEERSKIN-TRADE', NULL, 'zh;en', '明鄭時期鹿皮出口貿易延續荷蘭時期，但因過度獵捕致產量驟降之相關研究，兼論原住民獵場變遷', '鹿皮;明鄭;原住民;生態;貿易', '明鄭時期（1661–1683）', '全臺灣', NULL, '荷治時期臺灣鹿皮出口記錄（荷西第40筆）', NULL, NULL, '2026-07-30', 'UNCLEAR', '學術論文散見', '僅收錄 metadata', '學術論文', '鹿皮貿易為臺灣早期重要經濟命脈');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (153, '明鄭時期古氣候與自然災害記錄', '《從征實錄》、《熱蘭遮城日誌》等', '1661-1683', 3, 12, '學術研究', 'MZ-CLIMATE-RECORDS', NULL, 'zh;en', '《從征實錄》、《臺灣外記》等文獻中記載之明鄭時期氣候、颱風、地震、饑荒等自然事件記錄', '明鄭;古氣候;颱風;地震;自然災害', '明鄭時期（1661–1683）', '全臺灣', NULL, '從征實錄;臺灣外記', NULL, NULL, '2026-07-30', 'UNCLEAR', '散見各文獻，未有系統彙整', '僅收錄 metadata', '學術研究', '1661年鄭軍利用鹿耳門漲潮登陸為氣候影響軍事之經典案例');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (154, '明鄭時期臺江內海與海岸變遷', '學術研究團隊', '1990-2020', 3, 12, '地理學／考古學期刊', 'MZ-TAIJIANG-GEOGRAPHY', NULL, 'zh;en', '明鄭時期臺江內海、鹿耳門港道等海岸地形變遷之研究，解釋1661年鄭軍何以能由鹿耳門入臺登陸', '臺江內海;鹿耳門;海岸變遷;地形', '明鄭時期（1661–1683）', '臺江內海;鹿耳門;大員', NULL, '臺江內海變遷研究（荷西時期第42筆）', NULL, '學術期刊', NULL, '2026-07-30', 'UNCLEAR', '學術論文需購閱', '地理學／考古學期刊', '已收錄 metadata');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (155, '明鄭時期疫病與人口變遷', '學術研究團隊', '2000-2020', 3, 12, '學術期刊論文', 'MZ-EPIDEMIC-POP', NULL, 'zh;en', '明鄭時期因遷徙、戰爭、衛生條件所引發之疫病記錄（天花、瘧疾等）與人口結構變遷研究', '明鄭;疫病;人口;天花;公共衛生', '明鄭時期（1661–1683）', '全臺灣', NULL, '明鄭時期古氣候與自然災害記錄', NULL, '學術期刊', NULL, '2026-07-30', 'UNCLEAR', '學術論文需購閱', '學術期刊論文', '僅收錄 metadata');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (156, '臺灣銀行經濟研究室臺灣文獻叢刊—明鄭相關專輯導論', '臺灣銀行經濟研究室', '1957-1972', 3, 1, '臺灣銀行經濟研究室', 'BOT-MZ-SERIES-GUIDE', NULL, 'zh', '臺灣銀行經濟研究室出版之臺灣文獻叢刊中明鄭相關專輯（從征實錄、臺灣外記、靖海紀事等）之編者導論、校勘記與版本說明', '臺灣文獻叢刊;明鄭;版本;導論', '明鄭時期（1661–1683）', '全臺灣', NULL, '從征實錄;臺灣外記;靖海紀事', '臺灣銀行經濟研究室', NULL, '2026-07-30', 'ARR', '叢刊已絕版', '已收錄 metadata', NULL, '臺灣文獻叢刊為明鄭史料最主要之中文刊本來源');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (157, 'THDL—清代臺灣職官奏疏選（1683–1795）', '多件官員（閩浙總督、福建巡撫、臺灣道等）', '1683-1795', 4, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-QG-1683-1795', 'http://thdl.ntu.edu.tw/', 'zh', 'THDL收錄之清領前期臺灣相關奏疏，含康熙至乾隆年間行政、軍事、墾務、原住民治理等各類題本', '清代;奏疏;臺灣;THDL;清領前期', '清領前期（1683–1795）', '全臺灣;福建', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', 'THDL 免登入全文檢索', '已收錄 metadata', '臺灣歷史數位圖書館', '康熙至乾隆為清領前期制度建立階段');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (158, 'THDL—清代臺灣職官奏疏選（1796–1860）', '多件官員（閩浙總督、福建巡撫、臺灣道等）', '1796-1860', 4, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-QG-1796-1860', 'http://thdl.ntu.edu.tw/', 'zh', 'THDL收錄嘉慶至咸豐年間臺灣相關奏疏，含蔡牽海盜、分類械鬥、噶瑪蘭設廳等議題', '清代;奏疏;臺灣;THDL;清領中期', '清領前期（1796–1860）', '全臺灣;福建', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', 'THDL 免登入全文檢索', '已收錄 metadata', '臺灣歷史數位圖書館', '嘉慶至咸豐為臺灣社會動盪與開發加速階段');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (159, '淡新檔案（行政篇）', '淡水廳／新竹縣衙', '1770-1895', 4, 1, '國立臺灣大學圖書館（原件）／THDL（數位版）', 'DS-ADMIN-THDL', 'http://thdl.ntu.edu.tw/', 'zh', '清代淡水廳至新竹縣衙門行政檔案，涵蓋土地、戶口、分類械鬥、原住民治理等，為清代臺灣最完整的基層行政檔案', '淡新檔案;清代;行政;淡水廳;新竹', '清領前期（1770–1895）', '淡水廳;新竹', NULL, NULL, NULL, '國立臺灣大學數位人文研究中心（數位化）', '2026-07-30', 'UNCLEAR', 'THDL 全文公開查詢', '已收錄 metadata', NULL, '清代臺灣三大檔案之一，基層行政實錄');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (160, '淡新檔案（民事篇）', '淡水廳／新竹縣衙', '1780-1895', 4, 1, '國立臺灣大學圖書館（原件）／THDL（數位版）', 'DS-CIVIL-THDL', 'http://thdl.ntu.edu.tw/', 'zh', '淡新檔案民事門收錄清代臺灣民間土地買賣、典借、鬮分、婚姻等訴訟案件，為臺灣社會經濟史最珍貴的第一手檔案', '淡新檔案;民事;土地;清代;社會', '清領前期（1780–1895）', '淡水廳;新竹', NULL, NULL, NULL, '國立臺灣大學數位人文研究中心（數位化）', '2026-07-30', 'UNCLEAR', 'THDL 全文公開查詢', '已收錄 metadata', NULL, '清代臺灣民間社會生活最直接證據');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (161, '藍鼎元《平臺紀略》', '藍鼎元', '1723', 4, 1, '國立臺灣圖書館（原件）／臺灣銀行經濟研究室（刊本）', 'LDD-PINGTAI-01', NULL, 'zh', '藍鼎元隨族兄藍廷珍平定朱一貴事件（1721年）後撰寫之平臺紀事，兼論臺灣善後之策，含「治臺三策」等經典論述', '藍鼎元;平臺紀略;朱一貴;清代;治臺', '清領前期（1721–1723）', '全臺灣', NULL, NULL, '臺灣銀行經濟研究室（臺灣文獻叢刊第11種）', NULL, '2026-07-30', 'ARR', '臺灣文獻叢刊絕版', '已收錄 metadata', NULL, '朱一貴事件為清領首次大規模民變');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (162, '藍鼎元《東征集》', '藍鼎元', '1722-1724', 4, 1, '國立臺灣圖書館（原件）／臺灣銀行經濟研究室（刊本）', 'LDD-DONGZHENG-01', NULL, 'zh', '藍鼎元隨軍征臺期間之書信、公牘與論策合集，為清領前期臺灣經營與原住民治理之重要政論文獻', '藍鼎元;東征集;臺灣;公文;清代', '清領前期（1721–1724）', '全臺灣', NULL, '平臺紀略', '臺灣銀行經濟研究室（臺灣文獻叢刊第12種）', NULL, '2026-07-30', 'ARR', '臺灣文獻叢刊絕版', '已收錄 metadata', NULL, '藍鼎元治臺主張影響清代臺灣政策至深');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (163, 'THDL—朱一貴事件相關奏疏', '閩浙總督覺羅滿保等官員', '1721-1722', 4, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-QG-1721-ZYG', 'http://thdl.ntu.edu.tw/', 'zh', 'THDL收錄朱一貴事件發生與平定過程中清廷與閩省官員往來奏疏，含覺羅滿保、藍廷珍、施世驃等題本', '朱一貴;民變;THDL;奏疏;清代', '清領前期（1721–1722）', '全臺灣;福建', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', 'THDL 免登入全文檢索', '已收錄 metadata', '臺灣歷史數位圖書館', '朱一貴事件為清代臺灣三大民變之首');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (164, 'THDL—林爽文事件相關奏疏', '閩浙總督常青、福康安等官員', '1786-1788', 4, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-QG-1786-LSW', 'http://thdl.ntu.edu.tw/', 'zh', 'THDL收錄林爽文事件期間清廷調兵遣將、善後撫卹等奏疏，含福康安、常青、柴大紀等題本', '林爽文;民變;THDL;奏疏;清代', '清領前期（1786–1788）', '全臺灣;福建', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', 'THDL 免登入全文檢索', '已收錄 metadata', '臺灣歷史數位圖書館', '林爽文事件為乾隆「十全武功」之一');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (165, 'THDL—蔡牽海盜相關奏疏', '閩浙總督玉德、阿林保等官員', '1800-1809', 4, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-QG-1800-CQ', 'http://thdl.ntu.edu.tw/', 'zh', 'THDL收錄嘉慶年間蔡牽、朱濆等海盜騷擾臺灣沿海之奏疏，反映清廷水師剿匪與沿海防務', '蔡牽;海盜;THDL;奏疏;清代', '清領前期（1800–1809）', '全臺灣沿海;福建;浙江', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', 'THDL 免登入全文檢索', '已收錄 metadata', '臺灣歷史數位圖書館', '蔡牽為清代臺灣最大規模海盜勢力');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (166, 'THDL—清代臺灣分類械鬥相關檔案', '多件官員與地方衙門', '1768-1860', 4, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-QG-1768-FLXD', 'http://thdl.ntu.edu.tw/', 'zh', 'THDL收錄清代臺灣漳泉械鬥、閩客械鬥、異姓械鬥等分類械鬥相關奏疏與地方檔案', '分類械鬥;清代;漳泉;閩客;THDL', '清領前期（1768–1860）', '全臺灣', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', 'THDL 免登入全文檢索', '已收錄 metadata', '臺灣歷史數位圖書館', '分類械鬥為清領前期臺灣社會主要動盪因素');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (167, '清代臺灣古契書選集（THDL）', '民間（地主、墾戶、佃戶）', '1683-1895', 4, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-QG-QISHU', 'http://thdl.ntu.edu.tw/', 'zh', 'THDL收錄清代臺灣古契書逾4萬件，選取具代表性之墾契、賣契、典契、胎借契等，反映土地產權與民間金融', '古契書;清代;土地;THDL;民間', '清領前期（1683–1895）', '全臺灣', NULL, NULL, NULL, '國立臺灣大學數位人文研究中心（數位化）', '2026-07-30', 'UNCLEAR', 'THDL 全文公開查詢', '已收錄 metadata', '臺灣歷史數位圖書館', '清代臺灣土地關係最直接的原始憑證');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (168, '重修臺灣縣志', '王必昌（編）', '1752', 4, 2, '國立臺灣圖書館（原件）／臺灣銀行經濟研究室（刊本）', 'WBC-TW-CON-02', NULL, 'zh', '王必昌重修之臺灣縣志，凡15卷，較康熙臺灣縣志更為詳備，含清領前期府城之社會經濟詳情', '方志;臺灣縣;府城;清代;王必昌', '清領前期（1752）', '臺灣縣（今臺南市區）', NULL, '臺灣縣志（陳文達本）', NULL, NULL, '2026-07-30', 'ARR', 'TSDL 數位典藏', '已收錄 metadata', NULL, '乾隆朝臺灣縣志為臺南府城最完整方志');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (169, '重修鳳山縣志', '王瑛曾（編）', '1764', 4, 2, '國立臺灣圖書館（原件）／臺灣銀行經濟研究室（刊本）', 'WYC-FS-GAZETTEER-02', NULL, 'zh', '王瑛曾重修之鳳山縣志，凡12卷，詳載清領前期鳳山縣（今高雄、屏東）之水利、屯墾、防務與原住民分布', '方志;鳳山;清代;王瑛曾;高雄', '清領前期（1764）', '鳳山縣（今高雄、屏東）', NULL, '鳳山縣志（陳文達本）', NULL, NULL, '2026-07-30', 'ARR', 'TSDL 數位典藏', '已收錄 metadata', NULL, '南臺灣清領前期社會經濟之區域記載');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (170, '續修臺灣府志（余文儀本）', '余文儀（編）', '1774', 4, 2, '國立臺灣圖書館（原件）／臺灣銀行經濟研究室（刊本）', 'YWT-TW-GAZETTEER-03', NULL, 'zh', '余文儀主修之《續修臺灣府志》，凡26卷，為清代臺灣府志之集大成者，含賦役、學校、兵防、風俗等九門', '方志;臺灣府志;余文儀;清代', '清領前期（1774）', '全臺灣', NULL, '重修福建臺灣府志（劉良璧本）', NULL, NULL, '2026-07-30', 'ARR', 'TSDL 數位典藏', '已收錄 metadata', NULL, '清代臺灣府志之集大成');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (171, '彰化縣志', '周璽（編）', '1836', 4, 2, '國立臺灣圖書館（原件）／臺灣銀行經濟研究室（刊本）', 'ZOU-County-CH-01', NULL, 'zh', '周璽主修之《彰化縣志》，凡12卷，為清代臺灣最後一部縣志，詳載中部開發、水利設施、分類械鬥與社會救濟', '方志;彰化;清代;周璽;中部開發', '清領前期（1723建縣–1836）', '彰化縣', NULL, NULL, '臺灣銀行經濟研究室（臺灣文獻叢刊第156種）', NULL, '2026-07-30', 'ARR', '臺灣文獻叢刊絕版', '已收錄 metadata', NULL, '彰化為清代臺灣最大糧倉，方志記載豐富');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (172, '噶瑪蘭廳志', '陳淑均（編）', '1852', 4, 2, '國立臺灣圖書館（原件）／臺灣銀行經濟研究室（刊本）', 'CSJ-KML-TING-01', NULL, 'zh', '陳淑均纂修之《噶瑪蘭廳志》，凡8卷，為清代臺灣最晚完成之地方志，詳載宜蘭開發、原住民（噶瑪蘭族）與漢人拓墾', '方志;噶瑪蘭;宜蘭;清代;陳淑均', '清領前期（1796噶瑪蘭開墾–1852）', '噶瑪蘭廳（今宜蘭）', NULL, NULL, '臺灣銀行經濟研究室（臺灣文獻叢刊第160種）', NULL, '2026-07-30', 'ARR', '臺灣文獻叢刊絕版', '已收錄 metadata', NULL, '清代臺灣最後設置之行政區');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (173, '清代臺灣輿圖集（康熙至同治）', '清廷繪圖官', '1683-1860', 4, 2, '國立故宮博物院／美國國會圖書館／中研院', 'QING-MAP-TW-COLLECTION', NULL, 'zh', '清代歷朝繪製之臺灣地圖，含康熙臺灣輿圖、雍正臺灣道圖、乾隆臺灣地圖、福建臺灣全圖等，反映行政區劃與聚落變遷', '古地圖;清代;臺灣;行政區劃;清領前期', '清領前期（1683–1860）', '全臺灣', NULL, NULL, '國立故宮博物院（清宮舊藏）', NULL, '2026-07-30', 'UNCLEAR', '地圖分藏國內外，數位版有限', '僅收錄 metadata', '中研院', '清代臺灣輿圖為空間變遷最重要視覺證據');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (174, '臺北盆地開墾古地圖', '清代繪圖官／民間墾戶', '1750-1860', 4, 2, '國立臺灣圖書館／中研院臺史所', 'TAIPEI-BASIN-MAP-QING', NULL, 'zh', '臺北盆地開墾過程相關古地圖，含瑠公圳、大安、艋舺、新莊等聚落分布圖與水利圖', '古地圖;臺北;開墾;水利;清領前期', '清領前期（1750–1860）', '臺北盆地', NULL, '清代臺灣輿圖集', NULL, NULL, '2026-07-30', 'UNCLEAR', '圖資分散，部分為民間收藏', '僅收錄 metadata', NULL, '臺北盆地由壟塘變為良田之空間記錄');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (175, '藍鼎元與平臺功臣傳記', '清代官修／臺灣銀行經濟研究室刊本', '1723-1800', 4, 4, '國立臺灣圖書館（原件）', 'LDD-BIO-PINGTAI', NULL, 'zh', '藍鼎元、藍廷珍、施世驃、福康安等清代平臺功臣之傳記與生平史料合集', '藍鼎元;傳記;清代;平臺;功臣', '清領前期（1721–1800）', '全臺灣', NULL, '平臺紀略;東征集', NULL, NULL, '2026-07-30', 'ARR', '文獻散見各書', '已收錄 metadata', NULL, '清代治臺文武官員之個人史料');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (176, '霧峰林家文書與家族史', '霧峰林家（林文察、林朝棟、林獻堂等）', '1780-1945', 4, 4, '中研院臺史所檔案館／國立臺灣圖書館', 'WF-LIN-FAMILY-ARCH', 'https://tais.ith.sinica.edu.tw/', 'zh', '霧峰林家（清代臺灣最著名家族）之家族文書、契字、書信與人物生平史料，橫跨清領至戰後，為臺灣家族史最具代表性案例', '霧峰林家;家族史;清代;中臺灣;林文察', '清領前期（1780–1895）', '霧峰（今臺中）;全臺灣', NULL, NULL, NULL, '中研院臺史所（數位典藏）', '2026-07-30', 'UNCLEAR', '臺史所檔案館查詢，部分數位化', '僅收錄 metadata', NULL, '清代臺灣最具影響力之家族');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (177, '板橋林家文書與家族史', '板橋林家（林平侯、林國芳、林維源等）', '1800-1945', 4, 4, '中研院臺史所檔案館／國立臺灣圖書館', 'BC-LIN-FAMILY-ARCH', 'https://tais.ith.sinica.edu.tw/', 'zh', '板橋林家（林本源家族）之家族史料，為清代臺灣最富裕之家族，參與清法戰爭捐輸、鐵路建設等重大事件', '板橋林家;家族史;清代;林本源;林維源', '清領前期（1800–1895）', '板橋（今新北）;全臺灣', NULL, NULL, NULL, '中研院臺史所（數位典藏）', '2026-07-30', 'UNCLEAR', '臺史所檔案館查詢', '僅收錄 metadata', NULL, '清代臺灣最有財勢之家族');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (178, '臺灣官僚奏議文集（清領前期）', '多件官員', '1683-1860', 4, 4, '國立臺灣圖書館／臺灣銀行經濟研究室', 'QING-OFFICIAL-COL-QIAN', NULL, 'zh', '清領前期臺灣相關官員（施琅、藍鼎元、覺羅滿保、福康安、姚瑩、徐宗幹等）之文集與奏議選輯', '清代;官員;奏議;文集;清領前期', '清領前期（1683–1860）', '全臺灣', NULL, NULL, '臺灣銀行經濟研究室（臺灣文獻叢刊散見）', NULL, '2026-07-30', 'ARR', '臺灣文獻叢刊各冊', '已收錄 metadata', NULL, '清代官員對臺治理主張之第一手論述');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (179, '清代臺灣儒學與書院史料', '清代臺灣儒學教授／地方官', '1683-1895', 4, 4, '國立臺灣圖書館／學術研究', 'QING-CONFUCIAN-TW', NULL, 'zh', '清代臺灣儒學（府縣儒學、海東書院、崇文書院、白沙書院、明志書院等）之沿革、學規、師資、科舉成就等史料', '清代;儒學;書院;科舉;教育', '清領前期（1683–1860）', '全臺灣', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '史料散見各志書與文集中', '僅收錄 metadata', '學術研究', '清代臺灣文教制度之核心');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (180, '姚瑩《東槎紀略》', '姚瑩', '1829-1832', 4, 4, '國立臺灣圖書館（原件）／臺灣銀行經濟研究室（刊本）', 'YAOYING-DCJL-01', NULL, 'zh', '姚瑩（曾任臺灣道）記錄臺灣經歷之筆記，凡5卷，含噶瑪蘭設廳、原住民分類、海防等，為道咸時期臺灣最重要官員筆記', '姚瑩;東槎紀略;清代;臺灣;噶瑪蘭', '清領前期（1821–1850）', '全臺灣', NULL, NULL, '臺灣銀行經濟研究室（臺灣文獻叢刊第7種）', NULL, '2026-07-30', 'ARR', '臺灣文獻叢刊絕版', '已收錄 metadata', NULL, '姚瑩為道咸時期臺灣最著名官員');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (181, '清代臺灣分類械鬥與民變史料合集', '現代學者編纂', '1900-2020', 4, 4, '學術專書與論文', 'QING-RIOTS-COMPILATION', NULL, 'zh', '現代學者對清代臺灣分類械鬥、朱一貴/林爽文/戴潮春事件之研究文獻合集，含曹永和、許雪姬、陳秋坤、翁佳音等學者專論', '分類械鬥;民變;清代;學術研究;臺灣', '清領前期（1721–1865）', '全臺灣', NULL, NULL, '學術期刊與出版社散見', NULL, '2026-07-30', 'UNCLEAR', '學術文獻需購閱', '僅收錄 metadata', '學術專書與論文', '清代民變研究為臺灣史顯學');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (182, '福建通志臺灣府（陳壽祺本）', '陳壽祺（編）、魏敬中（續纂）', '1829-1868', 4, 6, '國立臺灣圖書館（原件）', 'FJ-TONGZHI-TW-VOL', NULL, 'zh', '《福建通志》中臺灣府卷，含臺灣戶口、田賦、鹽課、兵餉、郵傳等統計數據，為清領前期最完整的臺灣統計史料', '福建通志;統計;清代;田賦;戶口', '清領前期（1683–1829記載）', '全臺灣', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '數位版有限', '僅收錄 metadata', NULL, '清代臺灣統計數據之最大宗來源');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (183, '清代臺灣結社與寺廟調查（寺廟臺帳前身）', '清代地方官／寺廟管理人', '1700-1860', 4, 6, '中研院臺史所／國立臺灣圖書館', 'QING-TEMPLE-SURVEY', NULL, 'zh', '清領前期臺灣寺廟創建年代、主祀神祇、信徒組織、廟產等調查記錄，為了解清代臺灣民間信仰與結社的第一手資料', '清代;寺廟;民間信仰;調查;統計', '清領前期（1700–1860）', '全臺灣', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '資料分散，無系統彙整', '僅收錄 metadata', NULL, '清代臺灣民間信仰之量化基礎');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (184, '清代臺灣考古遺址調查（熱蘭遮城清領層）', '成功大學考古學研究所／臺南市考古中心', '2000-2020', 4, 7, '成功大學考古學研究所', 'NCKU-ZL-QING-ARCH', NULL, 'zh', '熱蘭遮城考古發掘中清代地層（1683–1860年）出土遺留，含清代中國陶瓷、錢幣、建築構件等，反映清領前期物質文化', '熱蘭遮城;清代;考古;地層;清領前期', '清領前期（1683–1860）', '大員（臺南安平）', NULL, '熱蘭遮城明鄭時期考古層（明鄭第45筆）', NULL, '成功大學考古學研究所', '2026-07-30', 'ARR', '發掘報告出版品', '僅收錄 metadata', NULL, '清領前期物質文化之考古證據');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (185, '清代臺灣墓葬考古與墓葬文化', '學術研究團隊', '2000-2020', 4, 7, '學術報告與論文', 'QING-BURIAL-ARCH-TW', NULL, 'zh', '清代臺灣漢人墓葬考古調查研究，含墓碑形制、陪葬品、風水選址等，反映清領前期移民社會之喪葬文化', '清代;墓葬;考古;漢人;移民社會', '清領前期（1683–1860）', '全臺灣', NULL, NULL, '學術期刊', NULL, '2026-07-30', 'UNCLEAR', '學術論文需購閱', '僅收錄 metadata', '學術報告與論文', '考古學視角的清代移民社會研究');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (186, '清代臺灣碑碣集成（前期）', '中研院臺灣史研究所碑碣資料庫', '1683-1860', 4, 8, '中研院臺灣史研究所碑碣資料庫', 'ITH-RUB-QING-QIAN', 'https://rub.ith.sinica.edu.tw/', 'zh', '中研院臺史所臺灣碑碣拓本資料庫收錄之清領前期碑碣，含官署示禁碑、寺廟修建碑、橋樑道路修造碑等', '碑碣;清代;拓本;中研院;清領前期', '清領前期（1683–1860）', '全臺灣', NULL, NULL, '中研院臺灣史研究所', '中研院臺史所（數位典藏）', '2026-07-30', 'UNCLEAR', '資料庫公開查詢；拓本授權需申請', '已收錄 metadata', NULL, '清領前期碑碣為官方與民間活動之直接石刻證據');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (187, '清代臺南府城碑林與示禁碑', '清代臺灣府署／地方官', '1700-1860', 4, 8, '臺南市文化局／中研院臺史所', 'TAINAN-STELE-QING', 'https://rub.ith.sinica.edu.tw/', 'zh', '臺南府城（清代臺灣首府）留存之清代官署示禁碑、修建碑與紀功碑，為清領前期府城社會秩序與公共工程之直接物證', '府城;碑碣;示禁;清代;臺南', '清領前期（1700–1860）', '臺南府城', NULL, '清代臺灣碑碣集成（前期）', NULL, '中研院臺史所（數位典藏）', '2026-07-30', 'UNCLEAR', '資料庫公開查詢', '已收錄 metadata', NULL, '清代臺灣政治中心之碑刻史料');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (188, '清代臺灣北部碑碣選輯', '清代地方官／民間', '1750-1860', 4, 8, '中研院臺灣史研究所碑碣資料庫', 'NORTH-QING-STELE', 'https://rub.ith.sinica.edu.tw/', 'zh', '清代臺灣北部（新竹、桃園、臺北、基隆等地）之碑碣拓本選輯，含新竹城修建碑、士林芝山岩碑、基隆海門天險碑等', '碑碣;北部;清代;臺灣;拓本', '清領前期（1750–1860）', '新竹;桃園;臺北;基隆', NULL, '清代臺灣碑碣集成（前期）', NULL, '中研院臺史所（數位典藏）', '2026-07-30', 'UNCLEAR', '資料庫公開查詢', '已收錄 metadata', NULL, '北部開發較晚，碑碣反映嘉道年間之建設');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (189, '清代臺灣米糖經濟文獻', '清代官員／海關報告', '1683-1860', 4, 10, 'THDL／國立臺灣圖書館／學術研究', 'QING-RICE-SUGAR-ECON', NULL, 'zh', '清領前期臺灣米穀運銷大陸與砂糖出口之相關文獻與研究，臺灣「糖米之利甲天下」之經濟實錄', '清代;米;糖;經濟;出口;清領前期', '清領前期（1683–1860）', '全臺灣;福建;華南', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '文獻分散，無系統性合集', '僅收錄 metadata', '學術研究', '清領前期臺灣經濟以米糖為支柱');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (190, '郊商與三郊史料', '臺南三郊（蘇萬利、金永順、李勝發）', '1720-1860', 4, 10, '國立臺灣圖書館／中研院臺史所', 'TW-THREE-GUILD-ARCH', NULL, 'zh', '清代臺灣商業組織「三郊」（北郊、南郊、糖郊）之相關史料，含商貿路線、貨品清單、會館公約與郊商人物', '郊商;三郊;清代;商業;府城', '清領前期（1720–1860）', '臺南府城;全臺港口', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '郊商史料分散，部分藏於家族', '僅收錄 metadata', NULL, '三郊為清代臺灣最大商業組織');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (191, '清代臺灣墾號與土地開發文書', '清代墾戶（墾首）', '1700-1860', 4, 10, '中研院臺史所／國立臺灣圖書館', 'QING-LAND-RECLAMATION', NULL, 'zh', '清代臺灣墾號（如吳沙、施世榜、陳賴章等）之墾照、墾契、土地清冊等，反映由南而北之土地拓墾過程', '清代;墾號;土地;開發;墾戶', '清領前期（1700–1860）', '全臺灣', NULL, '清代臺灣古契書選集（THDL）', NULL, NULL, '2026-07-30', 'UNCLEAR', '文獻分散各機構', '僅收錄 metadata', NULL, '清代臺灣土地拓墾之第一手文書');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (192, '清代臺灣鹽業史料（清領前期）', '清代官方／鹽商', '1683-1860', 4, 10, '國史館臺灣文獻館／國立臺灣圖書館', 'QING-SALT-TW-QIAN', NULL, 'zh', '清領前期臺灣鹽業（洲南場、洲北場、瀨南場、瀨北場四大鹽場）之產銷制度、鹽課與鹽商組織史料', '清代;鹽業;鹽場;經濟;清代', '清領前期（1683–1860）', '臺南;嘉義;高雄', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '鹽業檔案分散', '僅收錄 metadata', NULL, '清代臺灣鹽業為府庫重要收入來源');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (193, '清代臺灣水利開發與埤圳系統', '清代地方官／墾戶', '1700-1860', 4, 10, '方志／學術研究／田野調查', 'QING-IRRIGATION-TW', NULL, 'zh', '清代臺灣埤圳（瑠公圳、八堡圳、通埒圳、猫霧捒圳等）之修築與管理史料，水利開發為臺灣農業發展之關鍵', '清代;水利;埤圳;灌溉;農業', '清領前期（1700–1860）', '全臺灣', NULL, '清代臺灣墾號與土地開發文書', NULL, NULL, '2026-07-30', 'UNCLEAR', '史料分散各志書與研究論著', '僅收錄 metadata', '方志／學術研究／田野調查', '八堡圳（施世榜建）為臺灣清代最大水利工程');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (194, '清代臺灣災害史料（地震、颱風、饑荒）', '清代方志／奏疏／地方官記錄', '1683-1860', 4, 12, 'THDL／方志／學術研究', 'QING-DISASTER-QIAN', NULL, 'zh', '清領前期臺灣地震（嘉義1815年地震、臺南1792年地震等）、颱風、水旱災與饑荒之官方記錄', '清代;地震;颱風;水災;饑荒', '清領前期（1683–1860）', '全臺灣', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '記錄散見各類文獻', '僅收錄 metadata', '學術研究', '清代災害記錄為古氣候研究重要資料');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (195, 'THDL—清代臺灣涉外關係奏疏（1858–1895）', '多件官員（總理衙門、閩浙總督、臺灣道、臺灣巡撫等）', '1858-1895', 4, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-QG-1858-1895', 'http://thdl.ntu.edu.tw/', 'zh', 'THDL收錄咸豐至光緒年間臺灣涉外關係奏疏，含天津條約、北京條約、開港通商、教案、樟脑糾紛、外國人遊歷等', '清代;涉外;奏疏;THDL;開港', '清領後期（1858–1895）', '全臺灣;歐美;日本', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', 'THDL 免登入全文檢索', '已收錄 metadata', '臺灣歷史數位圖書館', '開港為清領前後期分界之關鍵事件');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (196, '沈葆楨《福建臺灣奏摺》', '沈葆楨', '1874-1875', 4, 1, '國立臺灣圖書館（原件）／臺灣銀行經濟研究室（刊本）', 'SBZ-FUJIAN-TW-ZOUZHE', NULL, 'zh', '沈葆楨（欽差辦理臺灣等處海防大臣）於牡丹社事件後之臺灣相關奏摺合集，含開山撫番、增設府縣、海防建設等關鍵議題', '沈葆楨;奏摺;清代;開山撫番;海防', '清領後期（1874–1875）', '全臺灣', NULL, NULL, '臺灣銀行經濟研究室（臺灣文獻叢刊第29種）', NULL, '2026-07-30', 'ARR', '臺灣文獻叢刊絕版', '已收錄 metadata', NULL, '牡丹社事件後臺灣政策急轉彎之關鍵文獻');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (197, '劉銘傳《劉壯肅公奏議》（臺灣相關卷）', '劉銘傳', '1885-1891', 4, 1, '國立臺灣圖書館（原件）／臺灣銀行經濟研究室（刊本）', 'LMC-LZSS-ZOUYI-TW', NULL, 'zh', '劉銘傳（首任福建臺灣巡撫）任內奏議中臺灣相關卷，含建省、鐵路、電報、撫墾、清賦、軍工等新政完整記錄', '劉銘傳;奏議;清代;建省;新政', '清領後期（1885–1891）', '全臺灣', NULL, NULL, '臺灣銀行經濟研究室（臺灣文獻叢刊第27種）', NULL, '2026-07-30', 'ARR', '臺灣文獻叢刊絕版', '已收錄 metadata', NULL, '劉銘傳為臺灣現代化建設之父');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (198, '牡丹社事件相關檔案', '清代總理衙門／日本外務省', '1874-1875', 4, 1, '中研院近史所檔案館／國立臺灣圖書館', 'MUDAN-SOCIAL-FILE', 'https://archives.sinica.edu.tw/', 'zh;ja', '牡丹社事件（1874年日本侵臺）之清代官方檔案，含總理衙門與日本交涉紀錄、沈葆楨來臺善後文書、日方出兵文件', '牡丹社事件;清代;日本;外交;原住民', '清領後期（1874–1875）', '恆春;琅𤩝;全臺灣', NULL, '沈葆楨《福建臺灣奏摺》', NULL, '中研院近史所（數位化）', '2026-07-30', 'UNCLEAR', '近史所檔案館線上目錄查詢', '僅收錄 metadata', NULL, '1874年為清代臺灣政策轉折點');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (199, '中法戰爭臺灣相關檔案（1884–1885）', '清代軍機處／總理衙門／劉銘傳', '1884-1885', 4, 1, '國立故宮博物院（清宮檔案）／中研院近史所', 'SINO-FRENCH-WAR-TW', NULL, 'zh', '中法戰爭（1884–1885）期間清廷與臺灣方面往來電報、奏摺與軍情文書，含基隆、滬尾（淡水）戰役紀錄', '中法戰爭;清代;臺灣;劉銘傳;基隆', '清領後期（1884–1885）', '基隆;淡水;臺南;澎湖', NULL, '劉銘傳《劉壯肅公奏議》', NULL, '國立故宮博物院（清宮典藏）', '2026-07-30', 'UNCLEAR', '清宮檔案數位版有限', '僅收錄 metadata', NULL, '中法戰爭為臺灣建省之直接原因');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (200, '臺灣建省檔案（1885–1890）', '清代軍機處／吏部／戶部', '1885-1890', 4, 1, '國立故宮博物院（清宮檔案）／國史館臺灣文獻館', 'TAIWAN-PROVINCE-FILE', NULL, 'zh', '清廷決定臺灣建省、設巡撫、調整行政區之官方檔案，含左宗棠、劉銘傳等建省倡議、吏部議奏、行政區劃定案等', '建省;清代;臺灣;行政區劃;劉銘傳', '清領後期（1885–1890）', '全臺灣', NULL, '劉銘傳《劉壯肅公奏議》', NULL, NULL, '2026-07-30', 'UNCLEAR', '檔案分散故宮與國史館', '僅收錄 metadata', NULL, '臺灣建省為清代治臺政策最高峰');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (201, '丁日昌《巡臺奏摺》', '丁日昌', '1876-1877', 4, 1, '國立臺灣圖書館（原件）／臺灣銀行經濟研究室（刊本）', 'DRC-XUNTAI-ZOUZHE', NULL, 'zh', '丁日昌（福建巡撫兼理臺灣事務）巡臺期間之奏摺，含煤礦開發、電報建設、撫番政策、開山道路等新政規劃', '丁日昌;奏摺;清代;新政;近代化', '清領後期（1876–1877）', '全臺灣', NULL, '沈葆楨《福建臺灣奏摺》', '臺灣銀行經濟研究室（臺灣文獻叢刊第77種）', NULL, '2026-07-30', 'ARR', '臺灣文獻叢刊絕版', '已收錄 metadata', NULL, '丁日昌為承先啟後之臺灣經營者');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (202, '唐景崧《請纓日記》', '唐景崧', '1884-1895', 4, 1, '國立臺灣圖書館（原件）', 'TANGJINGSONG-QY-01', NULL, 'zh', '唐景崧（最後一任臺灣巡撫）自中法戰爭起之軍事外交日記，含臺灣民主國成立前後之決策過程', '唐景崧;請纓日記;清代;臺灣民主國;乙未', '清領後期（1884–1895）', '全臺灣;福建', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '原件國臺圖藏', '僅收錄 metadata', NULL, '清代臺灣終結與臺灣民主國創建之關鍵人物日記');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (203, '邵友濂臺灣相關奏疏', '邵友濂', '1891-1894', 4, 1, '國立臺灣圖書館（原件）／故宮清宮檔案', 'SYL-TAIWAN-ZOUZHE', NULL, 'zh', '邵友濂（繼劉銘傳之後之臺灣巡撫）任內奏疏，含臺灣鐵路停工、財政調整、行政緊縮等，反映建省後期之現實困境', '邵友濂;奏疏;清代;臺灣;建省後期', '清領後期（1891–1894）', '全臺灣', NULL, '劉銘傳《劉壯肅公奏議》', NULL, NULL, '2026-07-30', 'UNCLEAR', '奏疏散見清宮檔案', '僅收錄 metadata', NULL, '邵友濂任內臺灣新政由盛轉衰');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (204, '乙未戰爭與臺灣民主國檔案', '唐景崧、丘逢甲、劉永福、李經方等', '1895', 4, 1, '國立臺灣圖書館／國史館臺灣文獻館', 'YIWEI-WAR-ARCH', NULL, 'zh', '1895年乙未割臺前後官方文書，含臺灣民主國成立文告、清廷交割文書、日軍接收檔案、抗日義軍文檄等', '乙未;臺灣民主國;清代;割臺;抗日', '清領後期（1895）', '全臺灣', NULL, '唐景崧《請纓日記》', NULL, NULL, '2026-07-30', 'UNCLEAR', '檔案分散各地', '僅收錄 metadata', NULL, '清代臺灣歷史終結之官方記錄');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (205, '淡新檔案（刑事篇）', '淡水廳／新竹縣衙', '1800-1895', 4, 1, '國立臺灣大學圖書館（原件）／THDL（數位版）', 'DS-CRIMINAL-THDL', 'http://thdl.ntu.edu.tw/', 'zh', '淡新檔案刑事門收錄清代臺灣命案、搶劫、偷盜、偽造貨幣等刑事案件卷宗，反映清領後期臺灣社會秩序與法律實務', '淡新檔案;刑事;清代;法律;社會', '清領後期（1800–1895）', '淡水廳;新竹', NULL, '淡新檔案（行政篇;民事篇）', NULL, '國立臺灣大學數位人文研究中心（數位化）', '2026-07-30', 'UNCLEAR', 'THDL 全文公開查詢', '已收錄 metadata', NULL, '清代臺灣法律史之最完整基層檔案');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (206, '臺灣地輿總圖（光緒年間）', '清代臺灣布政使司／繪圖官', '1880-1895', 4, 2, '國立故宮博物院／國立臺灣圖書館', 'TW-GENERAL-MAP-GX', NULL, 'zh', '光緒年間繪製之臺灣地輿總圖，為清領後期最完整之臺灣全圖，標示行政區界、道路、河流、軍隊駐紮地等', '古地圖;清代;光緒;臺灣全圖;領後期', '清領後期（1880–1895）', '全臺灣', NULL, '清代臺灣輿圖集（康熙至同治）', NULL, '國立故宮博物院（清宮舊藏）', '2026-07-30', 'UNCLEAR', '原件藏故宮，數位版有限', '僅收錄 metadata', NULL, '清代最後一幅官方臺灣全圖');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (207, '臺灣前後山輿圖（夏獻綸）', '夏獻綸（繪）', '1878-1879', 4, 2, '國立臺灣圖書館', 'XIAXIANLUN-TW-MAP', NULL, 'zh', '夏獻綸（臺灣道）編繪之《臺灣前後山輿圖》，為清代最詳細之臺灣軍事輿圖，含番界、隘勇線、道路等', '夏獻綸;輿圖;清代;軍事;地圖', '清領後期（1878–1879）', '全臺灣', NULL, '臺灣地輿總圖', NULL, NULL, '2026-07-30', 'UNCLEAR', '國臺圖數位典藏', '僅收錄 metadata', NULL, '開山撫番政策之空間表現');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (208, '光緒臺灣通志（未刊稿）', '蔣師轍（纂）、臺灣布政使司', '1894-1895', 4, 2, '國立臺灣圖書館（稿本）', 'JSZ-TW-TONGZHI-GX', NULL, 'zh', '蔣師轍受聘纂修之《臺灣通志》，未及刊行即因割臺中止，稿本40餘冊存國臺圖，為清代臺灣方志最後之集大成', '方志;臺灣通志;光緒;清代;未刊稿', '清領後期（1894–1895）', '全臺灣', NULL, '續修臺灣府志（余文儀本）', NULL, NULL, '2026-07-30', 'UNCLEAR', '稿本未刊，國臺圖藏', '僅收錄 metadata', NULL, '清代臺灣方志之最後巨著，惜未刊行');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (209, '臺灣府城教會報（Tá-oân-hú-siâⁿ Kàu-hōe-pò）', '巴克禮（Thomas Barclay）等', '1885-1895', 4, 3, '國立臺灣歷史博物館（數位化）', 'TW-CHURCH-NEWS-1885', 'https://taiwanindex.nmth.gov.tw/', 'zh;nan', '臺灣第一份報紙，1885年創刊於臺南，以白話字（羅馬拼音）書寫臺語，為清領後期最珍貴的民間報刊史料，含教會消息、時事、社會新聞與地理知識', '報刊;清代;教會;白話字;巴克禮', '清領後期（1885–1895）', '全臺灣;海外', NULL, NULL, '臺灣教會公報社', '國立臺灣歷史博物館（數位化）', '2026-07-30', 'UNCLEAR', '臺史博數位資料庫公開瀏覽', '已收錄 metadata', NULL, '臺灣新聞史之起點');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (210, '申報臺灣相關報導（1872–1895）', '申報館（英商美查創辦）', '1872-1895', 4, 3, '上海圖書館／國立臺灣圖書館', 'SHENBAO-TW-1872', NULL, 'zh', '中國近代第一份報紙《申報》中與臺灣相關之報導，含牡丹社事件、中法戰爭、劉銘傳新政、甲午戰爭等重大新聞', '申報;報刊;清代;臺灣;新聞', '清領後期（1872–1895）', '全臺灣;大陸', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '申報資料庫需授權查詢', '僅收錄 metadata', NULL, '當時大陸視角下的臺灣新聞');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (211, '劉銘傳與淮軍在臺人物', '淮軍將領（劉銘傳、章高元、孫開華、曹志忠等）', '1884-1895', 4, 4, '國立臺灣圖書館／中研院近史所', 'LMC-HUAI-ARMY-TW', NULL, 'zh', '劉銘傳率淮軍來臺相關人物之傳記與生平史料，含劉銘傳幕僚、淮軍將領、湘軍與臺灣兵備道等人員', '劉銘傳;淮軍;清代;傳記;人物', '清領後期（1884–1895）', '全臺灣', NULL, '劉銘傳《劉壯肅公奏議》', NULL, NULL, '2026-07-30', 'UNCLEAR', '傳記資料分散', '僅收錄 metadata', NULL, '淮軍為清代臺灣最後一支駐臺主力部隊');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (212, '馬偕《福爾摩薩紀事》（From Far Formosa）', '馬偕（George Leslie Mackay）', '1895', 4, 4, '牛津大學出版社（原版）／學術中譯本', 'MACKAY-FAR-FORMOSA', NULL, 'en;zh', '加拿大長老教會宣教師馬偕在臺（1872–1901）之回憶錄，為清領後期臺灣北部落後地區生活、醫療、傳教與原住民之第一手見證', '馬偕;宣教;清代;北部;醫療', '清領後期（1872–1895）', '臺北;淡水;宜蘭;花蓮', '林晚生（中譯）', NULL, '牛津大學出版社（原版）／前衛出版社（中譯）', NULL, '2026-07-30', 'UNCLEAR', '中譯本流通普遍', '已收錄 metadata', '學術中譯本', '清代臺灣最著名的外國人見證');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (213, '必麒麟《Pioneering in Formosa》', '必麒麟（William A. Pickering）', '1898', 4, 4, 'Hurst and Blackett（原版）／學術中譯本', 'PICKERING-PIONEER-FORMOSA', NULL, 'en;zh', '英國人必麒麟在臺（1860年代–1880年代）之回憶錄，歷任海關官員、樟腦專賣承包、英國領事館通譯，為開港通商初期臺灣之第一手見證', '必麒麟;清代;開港;樟腦;通商', '清領後期（1863–1890）', '全臺灣', '陳政三（中譯）', NULL, 'Hurst and Blackett（原版）', NULL, '2026-07-30', 'UNCLEAR', '中譯本〈歷險福爾摩沙〉流通', '已收錄 metadata', 'Hurst and Blackett／學術中譯本', '清代臺灣外商之第一手實錄');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (214, '李仙得《臺灣紀行》', '李仙得（Charles W. LeGendre）', '1874-1875', 4, 4, '美國國會圖書館（原件）／學術中譯本', 'LEGENDRE-TW-NOTES', NULL, 'en;zh', '美國駐廈門領事李仙得在臺（1866–1875）之紀行與報告，含羅發號事件、牡丹社事件、原住民調查等，為清代臺灣涉外史關鍵人物', '李仙得;清代;涉外;牡丹社;原住民', '清領後期（1866–1875）', '全臺灣;琅𤩝', '陳秋坤等（中譯）', NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '原件藏美國國會圖書館', '僅收錄 metadata', '學術中譯本', '李仙得為清代臺灣涉外史之樞紐人物');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (215, '約翰·湯姆生（John Thomson）臺灣照片', '約翰·湯姆生（John Thomson）', '1871', 4, 5, 'Wellcome Library（原件）', 'THOMSON-TW-1871', 'https://wellcomecollection.org/', 'en', '英國攝影師約翰·湯姆生1871年來臺拍攝之照片，為臺灣最早之攝影紀錄之一，含平埔族、府城景觀、安平港等', 'John Thomson;攝影;清代;府城;平埔族', '清領後期（1871）', '臺南府城;安平;高雄', NULL, NULL, NULL, 'Wellcome Library（數位典藏）', '2026-07-30', 'UNCLEAR', 'Wellcome Library 公開瀏覽', '已收錄 metadata', NULL, '臺灣史上最早之攝影照片之一');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (216, '19世紀末臺灣寫真帖', '多件外國攝影師（Thomson、Lai Afong、Reverend等）', '1871-1895', 4, 5, '國家圖書館臺灣記憶／國立臺灣圖書館', '19C-TW-PHOTO-ALBUM', 'https://tm.ncl.edu.tw/', 'zh;en', '19世紀末外國攝影師與本地照相館拍攝之臺灣照片合集，含風景、人物、建築、港口、原住民等主題', '寫真;清代;照片;外國攝影;19世紀末', '清領後期（1871–1895）', '全臺灣', '﹣﹣', NULL, NULL, '國家圖書館（數位化）', '2026-07-30', 'UNCLEAR', '臺灣記憶系統公開瀏覽', '已收錄 metadata', NULL, '清領後期影像為臺灣視覺史之起點');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (217, '劉銘傳新政建設影像', '清代（劉銘傳時期）／現代學者收集', '1885-1895', 4, 5, '國立臺灣博物館／國立臺灣歷史博物館', 'LMC-MODERN-PHOTO', NULL, 'zh', '劉銘傳新政建設之影像紀錄，含臺灣鐵路（臺北基隆段）、基隆煤礦、臺北機器局、電報線路、巡撫衙門等歷史照片', '劉銘傳;新政;清代;鐵路;近代化', '清領後期（1885–1895）', '臺北;基隆;全臺灣', '﹣﹣', '劉銘傳《劉壯肅公奏議》', NULL, NULL, '2026-07-30', 'UNCLEAR', '照片散見各館', '僅收錄 metadata', NULL, '清代臺灣現代化建設之視覺見證');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (218, '海關十年報告（Decennial Reports on Trade, 1882–1891）—臺灣部分', '中國海關總稅務司（Robert Hart 等）', '1882-1891', 4, 6, '中國海關總稅務司（原刊）／大英圖書館', 'DECENNIAL-TAIWAN-1882-1891', NULL, 'en', '中國海關十年報告臺灣部分（1882–1891），詳載安平、淡水、打狗、基隆四口之貿易額、航運、物價、匯兌等統計', '海關;貿易;統計;清代;開港', '清領後期（1882–1891）', '安平;淡水;打狗;基隆', '﹣﹣', '﹣﹣', '中國海關總稅務司', NULL, '2026-07-30', 'UNCLEAR', '原刊散見各圖書館', '僅收錄 metadata', NULL, '清代臺灣國際貿易之最詳盡統計');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (219, '清代臺灣海關貿易統計（1862–1895）', '中國海關總稅務司', '1862-1895', 4, 6, '大英圖書館／國立臺灣圖書館（中譯）', 'CUSTOMS-TAIWAN-STATS', NULL, 'en;zh', '1862年淡水開關至1895年割臺期間臺灣海關貿易年報統計，含進出口值、主要商品（茶、糖、樟腦、煤）、船舶噸位等', '海關;貿易;統計;清代;茶;樟腦', '清領後期（1862–1895）', '淡水;安平;打狗;基隆', '﹣﹣', '海關十年報告（Decennial Reports）', NULL, NULL, '2026-07-30', 'UNCLEAR', '英文原件需購閱', '僅收錄 metadata', NULL, '開港貿易為清領後期臺灣社會轉型命脈');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (220, '劉銘傳清賦與戶口調查', '劉銘傳（福建臺灣巡撫）', '1886-1889', 4, 6, '國立故宮博物院（清宮檔案）／學術研究', 'LMC-LAND-TAX-CENSUS', NULL, 'zh', '劉銘傳在臺實施之清賦（土地丈量與稅賦改革）與戶口調查相關檔案與統計數據，為清代臺灣最全面之土地與人口普查', '劉銘傳;清賦;戶口;土地;清代', '清領後期（1886–1889）', '全臺灣', '﹣﹣', '劉銘傳《劉壯肅公奏議》', NULL, NULL, '2026-07-30', 'UNCLEAR', '數據散見各檔案', '僅收錄 metadata', '學術研究', '劉銘傳清賦為清代臺灣賦稅改革之最重要事件');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (221, '清代基隆煤礦與鐵路遺址考古', '學術研究團隊／基隆市文化局', '2000-2020', 4, 7, '學術報告與田野調查', 'QING-KEELUNG-COAL-ARCH', NULL, 'zh', '清代基隆八斗子煤礦（劉銘傳時期開辦）及臺灣第一條鐵路（基隆—臺北段）相關遺址之考古調查與建築遺構研究', '煤礦;鐵路;清代;劉銘傳;基隆', '清領後期（1876–1895）', '基隆;臺北', '﹣﹣', '劉銘傳新政建設影像', NULL, NULL, '2026-07-30', 'UNCLEAR', '考古資料分散', '僅收錄 metadata', '學術報告與田野調查', '清代臺灣現代化之工業考古證據');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (222, '清代臺灣碑碣集成（後期）', '中研院臺灣史研究所碑碣資料庫', '1860-1895', 4, 8, '中研院臺灣史研究所碑碣資料庫', 'ITH-RUB-QING-HOU', 'https://rub.ith.sinica.edu.tw/', 'zh', '中研院臺史所碑碣拓本資料庫收錄之清領後期碑碣，含洋務新政碑、開山撫番碑、教案碑、港口建設碑等', '碑碣;清代;拓本;中研院;清領後期', '清領後期（1860–1895）', '全臺灣', '﹣﹣', '清代臺灣碑碣集成（前期）', '中研院臺灣史研究所', '中研院臺史所（數位典藏）', '2026-07-30', 'UNCLEAR', '資料庫公開查詢', '已收錄 metadata', NULL, '清領後期碑碣反映開港與新政之歷史變遷');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (223, '劉銘傳新政相關碑記', '清代地方官／仕紳', '1885-1895', 4, 8, '中研院臺灣史研究所碑碣資料庫／田野現存', 'LMC-MODERN-STELE', 'https://rub.ith.sinica.edu.tw/', 'zh', '劉銘傳新政時期所立碑記，含鐵路開工碑、基隆煤礦碑、臺北城修建碑、撫墾碑記等，為洋務運動在臺灣之石刻實證', '劉銘傳;碑記;清代;新政;洋務', '清領後期（1885–1895）', '臺北;基隆;全臺灣', '﹣﹣', '劉銘傳《劉壯肅公奏議》;清代臺灣碑碣集成（後期）', NULL, '中研院臺史所（數位典藏）', '2026-07-30', 'UNCLEAR', '資料庫公開查詢', '已收錄 metadata', '田野現存', '臺灣洋務運動之石刻見證');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (224, '清代臺灣開山撫番碑記', '清代臺灣鎮道／地方官', '1874-1895', 4, 8, '中研院臺灣史研究所碑碣資料庫', 'KAISHAN-FUFAN-STELE', 'https://rub.ith.sinica.edu.tw/', 'zh', '牡丹社事件後清廷實施「開山撫番」政策所立之碑記，含橫貫道路開工碑、番界碑、撫墾局碑等', '開山撫番;碑記;清代;原住民;番界', '清領後期（1874–1895）', '恆春;花蓮;臺東;埔里', '﹣﹣', '清代臺灣碑碣集成（後期）', NULL, '中研院臺史所（數位典藏）', '2026-07-30', 'UNCLEAR', '資料庫公開查詢', '已收錄 metadata', NULL, '開山撫番為清代後期最有爭議的原住民政策');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (225, '臺灣茶葉出口史料（1865–1895）', '外國洋行（ Dodd & Co. 等）／海關報告', '1865-1895', 4, 10, '大英圖書館／海關檔案／學術研究', 'TW-TEA-EXPORT-1865', NULL, 'en;zh', '臺灣茶葉（以烏龍茶為主）由John Dodd引進後之出口貿易史料，含洋行紀錄、海關統計、茶葉檢驗報告、茶農契約等', '茶葉;清代;出口;洋行;烏龍茶', '清領後期（1865–1895）', '臺北;淡水;大稻埕;全臺灣', '﹣﹣', '清代臺灣海關貿易統計', NULL, NULL, '2026-07-30', 'UNCLEAR', '史料分散國外檔案館與海關報告', '僅收錄 metadata', '學術研究', '茶葉為清領後期臺灣最大出口商品');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (226, '臺灣樟腦專賣史料（1860–1895）', '清代臺灣道／海關／外商', '1860-1895', 4, 10, '國史館臺灣文獻館／中研院近史所', 'TW-CAMPHOR-MONOPOLY', NULL, 'zh;en', '清代臺灣樟腦產銷與專賣制度史料，含樟腦糾紛（1868年樟腦戰爭）、外商介入、專賣制度改革等', '樟腦;清代;專賣;外商;糾紛', '清領後期（1860–1895）', '全臺灣（北部為主）', '﹣﹣', '清代臺灣海關貿易統計', NULL, NULL, '2026-07-30', 'UNCLEAR', '檔案分散國史館與近史所', '僅收錄 metadata', NULL, '樟腦為清代臺灣第二大宗出口商品');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (227, '臺灣糖業近代化史料（清領後期）', '海關報告／洋行／臺灣糖商', '1860-1895', 4, 10, '國立臺灣圖書館／海關檔案', 'TW-SUGAR-LATE-QING', NULL, 'zh;en', '清領後期臺灣糖業由傳統糖廍轉型為機器製糖之過程史料，含糖業貿易、洋行收購、砂糖檢驗與外銷統計', '糖業;清代;近代化;洋行;砂糖', '清領後期（1860–1895）', '全臺灣（南部為主）', '﹣﹣', '清代臺灣米糖經濟文獻;清代臺灣海關貿易統計', NULL, NULL, '2026-07-30', 'UNCLEAR', '文獻分散', '僅收錄 metadata', NULL, '臺灣糖業由傳統走向現代之過渡期');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (228, '臺灣煤業史料（清領後期）', '清代臺灣道／劉銘傳／洋商', '1876-1895', 4, 10, '國史館臺灣文獻館／基隆市文化局', 'TW-COAL-LATE-QING', NULL, 'zh;en', '清代基隆八斗子煤礦之開發與經營史料，含沈葆楨奏准開採、劉銘傳官辦、煤務局設立、外銷日本等', '煤業;清代;基隆;劉銘傳;礦業', '清領後期（1876–1895）', '基隆;臺北', '﹣﹣', '清代基隆煤礦與鐵路遺址考古', NULL, NULL, '2026-07-30', 'UNCLEAR', '煤礦文獻分散', '僅收錄 metadata', NULL, '清代臺灣最早之現代化礦業');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (229, '清代臺灣北部商業與大稻埕開發', '大稻埕郊商（林維源、李春生等）', '1860-1895', 4, 10, '國立臺灣圖書館／中研院臺史所', 'TW-DADAOCHENG-ECON', NULL, 'zh', '清領後期臺北大稻埕因茶葉貿易而崛起之商業史料，含茶行、外國洋行、港埠建設、街區發展等', '大稻埕;商業;清代;茶葉;外商', '清領後期（1860–1895）', '大稻埕;臺北', '﹣﹣﹣﹣', '臺灣茶葉出口史料', NULL, NULL, '2026-07-30', 'UNCLEAR', '史料分散', '僅收錄 metadata', NULL, '大稻埕為清代臺灣最國際化的商業區');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (230, '馬偕與北臺灣醫療教育史', '馬偕（George Leslie Mackay）', '1872-1895', 4, 11, '馬偕醫學院／國立臺灣圖書館', 'MACKAY-MED-EDU-TW', NULL, 'zh;en', '馬偕在淡水創設之西式醫療與教育機構史料，含偕醫館（臺灣第一家西醫院）、牛津學堂、淡水女學堂等', '馬偕;醫療;教育;清代;淡水', '清領後期（1872–1895）', '淡水;臺北;宜蘭', '﹣﹣﹣﹣', '馬偕《福爾摩薩紀事》', NULL, NULL, '2026-07-30', 'UNCLEAR', '馬偕醫院設有史料館', '已收錄 metadata', NULL, '清代臺灣西式醫療與教育之起源');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (231, '清代臺灣西式教育史料', '清代臺灣道／傳教士', '1860-1895', 4, 11, '國立臺灣圖書館／國立臺灣歷史博物館', 'QING-WESTERN-EDU-TW', NULL, 'zh;en', '清領後期西式教育在臺萌芽之史料，含傳教士學校、劉銘傳西學堂與電報學堂、港口通譯養成等', '西式教育;清代;傳教士;劉銘傳;洋務', '清領後期（1865–1895）', '全臺灣', '﹣﹣﹣﹣', '馬偕與北臺灣醫療教育史', NULL, NULL, '2026-07-30', 'UNCLEAR', '史料散見各機構', '僅收錄 metadata', NULL, '清代臺灣教育由儒學轉向近代之過渡');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (232, '開港後臺灣自然環境變遷', '海關報告／外國旅行者記錄／學術研究', '1860-1895', 4, 12, '學術期刊／海關檔案', 'TW-ENV-CHANGE-LATEQING', NULL, 'zh;en', '開港通商後臺灣自然環境之變遷記錄，含樟腦砍伐對山林影響、煤礦開採之環境破壞、港口淤積與河川變遷等', '環境;清代;開港;樟腦;煤礦', '清領後期（1860–1895）', '全臺灣', '﹣﹣﹣﹣', '臺灣樟腦專賣史料;臺灣煤業史料', NULL, NULL, '2026-07-30', 'UNCLEAR', '學術論文需購閱', '僅收錄 metadata', '學術期刊', '清領後期經濟開發對環境衝擊之記錄');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (233, '清代後期臺灣疫情史料（鼠疫、霍亂）', '清代官方／海關醫療報告', '1860-1895', 4, 12, '海關報告／方志／學術研究', 'TW-EPIDEMIC-LATEQING', NULL, 'zh;en', '清領後期臺灣鼠疫、霍亂、天花等重大傳染病之官方記錄與海關醫療報告，反映開港後疫病傳播加劇之情況', '清代;疫病;鼠疫;霍亂;公共衛生', '清領後期（1860–1895）', '全臺灣', '﹣﹣﹣﹣', NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '記錄分散各類文獻', '僅收錄 metadata', '學術研究', '開港後人員貨物往來頻繁，疫病傳播加速');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (234, '清代臺灣自然災害記錄（後期）', '清代方志／奏疏／外地人記錄', '1860-1895', 4, 12, 'THDL／方志／學術研究', 'QING-DISASTER-HOU', NULL, 'zh', '清領後期臺灣地震（1867年基隆海嘯、1882年嘉義地震等）、颱風暴雨與水旱災之官方與民間記錄', '清代;地震;颱風;海嘯;災害', '清領後期（1860–1895）', '全臺灣', '﹣﹣﹣﹣', '清代臺灣災害史料（前期）', NULL, NULL, '2026-07-30', 'UNCLEAR', '記錄散見各類文獻', '僅收錄 metadata', '學術研究', '清代後期災害記錄的精確度較前期提高');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (235, 'THDL—清代臺灣原住民治理奏疏選（番界與土牛線）', '閩浙總督、福建巡撫、臺灣道等官員', '1722-1860', 4, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-QG-1722-FANJIE', 'http://thdl.ntu.edu.tw/', 'zh', 'THDL收錄清代臺灣原住民治理相關奏疏，含番界劃定、土牛紅線、隘勇制度、番餉、理番同知設置等關鍵政策文件', '清代;原住民;番界;土牛線;THDL', '清領前期（1722–1860）', '全臺灣;福建', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', 'THDL 免登入全文檢索', '已收錄 metadata', '臺灣歷史數位圖書館', '番界政策為清代臺灣原漢關係之核心制度');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (236, 'THDL—清代臺灣班兵與營制奏疏', '閩浙總督、福建水師提督等', '1683-1860', 4, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-QG-BANBING', 'http://thdl.ntu.edu.tw/', 'zh', 'THDL收錄清代臺灣班兵制度（福建綠營輪調戍臺）相關奏疏，含兵額、營制、糧餉、器械、戍兵調遣等軍事行政文件', '清代;班兵;營制;軍事;THDL', '清領前期（1683–1860）', '全臺灣;福建', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', 'THDL 免登入全文檢索', '已收錄 metadata', '臺灣歷史數位圖書館', '班兵制度為清代臺灣軍事統治之基礎');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (237, '陳璸《陳清端公文集》臺灣相關卷', '陳璸', '1710-1715', 4, 1, '國立臺灣圖書館（原件）／臺灣銀行經濟研究室（刊本）', 'CB-CQD-TW-JUAN', NULL, 'zh', '陳璸（福建巡撫，曾任臺灣知縣、廈門道）之文集中臺灣相關奏疏與治理論述，為康熙晚期臺灣吏治重要文獻', '陳璸;陳清端公;清代;吏治;康熙', '清領前期（1710–1715）', '全臺灣;福建', NULL, NULL, '臺灣銀行經濟研究室（臺灣文獻叢刊第116種）', NULL, '2026-07-30', 'ARR', '臺灣文獻叢刊絕版', '已收錄 metadata', NULL, '陳璸為清代臺灣著名清官');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (238, '六十七《使署閒情》', '六十七（六居魯）', '1747', 4, 1, '國立臺灣圖書館（原件）／臺灣銀行經濟研究室（刊本）', 'LSQ-SSXQ-01', NULL, 'zh', '滿人巡臺御史六十七在臺期間所輯之臺灣詩文總集，為清領前期臺灣文人作品之最重要選集，含官方文告、碑記、詩賦等', '六十七;使署閒情;清代;文學;巡臺御史', '清領前期（1744–1747）', '全臺灣', NULL, NULL, '臺灣銀行經濟研究室（臺灣文獻叢刊第303種）', NULL, '2026-07-30', 'ARR', '臺灣文獻叢刊絕版', '已收錄 metadata', NULL, '清代臺灣文學之早期彙編');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (239, '清代臺灣軍工匠料與戰船修造檔案', '福建臺灣道／軍工道廠', '1700-1860', 4, 1, '國立臺灣圖書館／中研院臺史所', 'QING-MILITARY-SHIPBUILDING', NULL, 'zh', '清代臺灣軍工道廠（設於府城）修造戰船之相關檔案，含臺灣樟木、藤類等軍工料採辦、船廠運作、匠役制度等', '軍工;戰船;清代;造船;軍工料', '清領前期（1700–1860）', '臺南府城;全臺灣', NULL, '清代臺灣林業（軍工料）史料', NULL, NULL, '2026-07-30', 'UNCLEAR', '檔案分散各機構', '僅收錄 metadata', NULL, '臺灣樟木為清代戰船建造之重要材料');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (240, 'THDL—清代臺灣分類械鬥奏疏（漳泉械鬥卷）', '閩浙總督、福建巡撫等', '1768-1860', 4, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-QG-1768-ZQXD', 'http://thdl.ntu.edu.tw/', 'zh', 'THDL收錄清代臺灣漳州籍與泉州籍移民械鬥事件之奏疏專輯，涵蓋艋舺、彰化、新竹等主要械鬥事件', '漳泉械鬥;清代;THDL;奏疏;分類械鬥', '清領前期（1768–1860）', '全臺灣', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', 'THDL 免登入全文檢索', '已收錄 metadata', '臺灣歷史數位圖書館', '漳泉械鬥為清代臺灣社會最大衝突類型');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (241, '清代臺灣閩客械鬥奏疏', '閩浙總督、福建巡撫等', '1780-1860', 4, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-QG-1780-MKXD', 'http://thdl.ntu.edu.tw/', 'zh', 'THDL收錄清代臺灣閩南人與客家人分類械鬥之奏疏，南部（六堆）與北部（桃竹苗）皆有事例', '閩客械鬥;清代;THDL;奏疏;客家', '清領前期（1780–1860）', '全臺灣', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', 'THDL 免登入全文檢索', '已收錄 metadata', '臺灣歷史數位圖書館', '閩客械鬥為清代臺灣族群關係之關鍵課題');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (242, '澎湖紀略', '胡建偉（編）', '1771', 4, 2, '國立臺灣圖書館（原件）／臺灣銀行經濟研究室（刊本）', 'HJW-PH-JILUE-01', NULL, 'zh', '胡建偉（澎湖通判）編纂之《澎湖紀略》，凡12卷，為清代澎湖第一部地方志，含海洋氣象、兵防、物產、風俗等', '方志;澎湖;清代;胡建偉;海防', '清領前期（1771）', '澎湖', NULL, '澎湖廳志（林豪本）', '臺灣銀行經濟研究室（臺灣文獻叢刊第109種）', NULL, '2026-07-30', 'ARR', '臺灣文獻叢刊絕版', '已收錄 metadata', NULL, '清代澎湖最早之方志');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (243, '澎湖續編', '蔣鏞（編）', '1829-1832', 4, 2, '國立臺灣圖書館（原件）', 'JY-PH-XUBIAN-01', NULL, 'zh', '蔣鏞（澎湖通判）續修之《澎湖續編》，凡2卷，補乾隆《澎湖紀略》後之澎湖史事，為清代第二部澎湖地方志', '方志;澎湖;清代;蔣鏞;續編', '清領前期（1829–1832）', '澎湖', NULL, '澎湖紀略', NULL, NULL, '2026-07-30', 'UNCLEAR', '數位版有限', '僅收錄 metadata', NULL, '澎湖方志之延續');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (244, '清代臺灣海防圖', '清代繪圖官／福建水師提督', '1750-1860', 4, 2, '國立故宮博物院／中國第一歷史檔案館', 'QING-COASTAL-DEFENSE-MAP', NULL, 'zh', '清領前期臺灣沿海防務圖，標示炮臺、汛塘、水師駐地、港口航道等，為清代臺灣海防體系之空間記錄', '海防;地圖;清代;砲臺;汛塘', '清領前期（1750–1860）', '全臺灣沿海', NULL, '清代臺灣輿圖集', NULL, '國立故宮博物院（清宮舊藏）', '2026-07-30', 'UNCLEAR', '海防圖散見各館', '僅收錄 metadata', NULL, '清代臺灣海防部署之視覺證據');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (245, '陳夢林生平與《諸羅縣志》纂修史料', '陳夢林／諸羅縣志纂修團隊', '1717-1722', 4, 4, '國立臺灣圖書館／學術研究', 'CHENML-CCL-BIO', NULL, 'zh', '陳夢林（諸羅縣志總纂，臺灣重要文人）之生平、遊歷與《諸羅縣志》纂修過程之相關史料', '陳夢林;諸羅縣志;清代;文人;方志', '清領前期（1717–1750）', '諸羅（嘉義）;全臺灣', NULL, '諸羅縣志（明鄭時期）', NULL, NULL, '2026-07-30', 'UNCLEAR', '文獻散見', '僅收錄 metadata', '學術研究', '陳夢林為清代臺灣最重要的方志編纂者');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (246, '戴潮春事件相關史料', '清代閩浙總督／臺灣道／戴潮春部眾', '1862-1865', 4, 4, 'THDL／國立臺灣圖書館', 'TAI-CHAOCHUN-EVENT', NULL, 'zh', '戴潮春事件（1862–1865，又稱「萬生反」）相關奏疏、檔案與研究，為清代臺灣三大民變之最後一場，時間已跨越開港前後', '戴潮春;民變;清代;中部;萬生反', '清領前期（1862–1865）', '彰化;嘉義;中部臺灣', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '奏疏見THDL，研究文獻散見', '僅收錄 metadata', NULL, '戴潮春事件為清代臺灣最後一場大型民變');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (247, '清代臺灣文人別集選（陳肇興、吳子光等）', '陳肇興、吳子光、林占梅等', '1820-1895', 4, 4, '國立臺灣圖書館／臺灣銀行經濟研究室', 'QING-TW-LITERATI', NULL, 'zh', '清代臺灣文人詩文集選錄，含陳肇興《陶村詩稿》、吳子光《一肚皮集》、林占梅《潛園琴餘草》等，反映清領中晚期臺灣文人的社會關懷與時代觀察', '清代;文人;詩文;文學;臺灣', '清領前期（1820–1895）', '全臺灣', NULL, NULL, '臺灣銀行經濟研究室（臺灣文獻叢刊散見）', NULL, '2026-07-30', 'ARR', '臺灣文獻叢刊各冊', '已收錄 metadata', NULL, '清代臺灣文學為社會史之重要側面');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (248, '清代臺灣糧價與物價資料', '清代糧價奏報制度（福建巡撫等）', '1740-1860', 4, 6, '中研院近史所檔案館／THDL', 'QING-TW-GRAIN-PRICE', NULL, 'zh', '清代臺灣米穀糧價奏報資料與物價記錄，為清代臺灣經濟史最重要的連續量化數據，反映供需變化與市場整合程度', '清代;糧價;物價;經濟;統計', '清領前期（1740–1860）', '全臺灣', NULL, '清代臺灣米糖經濟文獻', NULL, '中研院近史所（數位化）', '2026-07-30', 'UNCLEAR', '數據散見各檔案', '僅收錄 metadata', NULL, '清代臺灣最完整的連續經濟數據');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (249, '清代臺灣人口統計（戶口編審與保甲）', '清代臺灣府／縣衙門', '1684-1860', 4, 6, 'THDL／方志／檔案', 'QING-TW-POPULATION', NULL, 'zh', '清代臺灣戶口編審制度下之人口統計資料，含府縣戶口數、漢番人口比、移入人口估計等', '清代;人口;戶口;統計;移民', '清領前期（1684–1860）', '全臺灣', NULL, '福建通志臺灣府（統計）', NULL, NULL, '2026-07-30', 'UNCLEAR', '數據散見各志書與檔案', '僅收錄 metadata', NULL, '清代臺灣人口統計為社會經濟史之基礎');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (250, '清代臺灣窯址考古調查', '學術研究團隊', '2000-2020', 4, 7, '學術報告與論文', 'QING-KILN-ARCH-TW', NULL, 'zh', '清代臺灣陶瓷窯址（南投水里窯、北投窯、鶯歌窯前身等）之考古調查與研究，反映清代臺灣本地陶瓷產業之發展', '清代;窯址;陶瓷;考古;產業', '清領前期（1750–1860）', '南投;北投;鶯歌', NULL, '明鄭時期陶瓷出土與貿易陶瓷研究', NULL, '學術期刊', NULL, '2026-07-30', 'UNCLEAR', '學術論文需購閱', '學術報告與論文', '僅收錄 metadata');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (251, '清代臺灣沉船考古（澎湖海域）', '學術研究團隊／澎湖縣文化局', '2000-2020', 4, 7, '學術報告', 'QING-SHIPWRECK-PH', NULL, 'zh', '澎湖海域清代沉船之水下考古調查，含清代貿易陶瓷、船體結構、貨物等出水文物，反映清代臺灣航運與貿易', '沉船;水下考古;清代;澎湖;貿易', '清領前期（1683–1860）', '澎湖海域', NULL, '清代臺灣海防圖', NULL, '澎湖縣文化局', '2026-07-30', 'UNCLEAR', '水下考古報告未全面公開', '僅收錄 metadata', '學術報告', '清代臺灣航運史之考古證據');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (252, '清領前期中部碑碣選輯', '清代地方官／民間', '1700-1860', 4, 8, '中研院臺灣史研究所碑碣資料庫', 'QING-STELE-CENTRAL', 'https://rub.ith.sinica.edu.tw/', 'zh', '清代臺灣中部（彰化、雲林、嘉義）之碑碣拓本選輯，含彰化城修建碑、笨港天后宮碑、北港朝天宮碑、諸羅城碑等', '碑碣;中部;清代;彰化;嘉義', '清領前期（1700–1860）', '彰化;雲林;嘉義', NULL, '清代臺灣碑碣集成（前期）', NULL, '中研院臺史所（數位典藏）', '2026-07-30', 'UNCLEAR', '資料庫公開查詢', '已收錄 metadata', NULL, '中部地區為清代臺灣移民開發重心');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (253, '清領前期南部碑碣選輯', '清代地方官／民間', '1683-1860', 4, 8, '中研院臺灣史研究所碑碣資料庫', 'QING-STELE-SOUTH', 'https://rub.ith.sinica.edu.tw/', 'zh', '清代臺灣南部（臺南郊區、高雄、屏東）之碑碣拓本選輯，含鳳山城碑、屏東先帝廟碑、旗後砲臺碑等', '碑碣;南部;清代;高雄;屏東', '清領前期（1683–1860）', '臺南;高雄;屏東', NULL, '清代臺灣碑碣集成（前期）', NULL, '中研院臺史所（數位典藏）', '2026-07-30', 'UNCLEAR', '資料庫公開查詢', '已收錄 metadata', NULL, '南臺灣為清代臺灣開發最早之區域');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (254, '清代臺灣漁業史料', '清代地方官／漁戶', '1700-1860', 4, 10, '方志／檔案／學術研究', 'QING-FISHERY-TW', NULL, 'zh', '清代臺灣漁業（沿海漁撈、烏魚漁場、漁課、漁戶管理等）之相關史料，臺灣四面環海，漁業為早期重要產業', '漁業;清代;烏魚;漁課;沿海', '清領前期（1700–1860）', '全臺灣沿海', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '史料分散', '僅收錄 metadata', '學術研究', '清代臺灣漁業史料遠少於陸地經濟之記錄');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (255, '清代臺灣林業與軍工料史料', '清代臺灣道／軍工道廠', '1700-1860', 4, 10, '檔案／學術研究', 'QING-FORESTRY-TW', NULL, 'zh', '清代臺灣山林資源（樟木、楠木、藤類）之採辦與管理史料，臺灣樟木為清代戰船建造之關鍵材料（軍工料），兼論山林開發與原住民獵區之關係', '林業;清代;軍工料;樟木;戰船', '清領前期（1700–1860）', '全臺灣（中部山區為主）', NULL, '清代臺灣軍工匠料與戰船修造檔案', NULL, NULL, '2026-07-30', 'UNCLEAR', '檔案與文獻分散', '僅收錄 metadata', '學術研究', '清代臺灣山林資源為戰略物資');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (256, '清代臺灣染布業（大青）史料', '清代臺灣農民／染戶', '1700-1860', 4, 10, '方志／檔案', 'QING-INDIGO-TW', NULL, 'zh', '清代臺灣藍靛（大青）種植與染布業之相關史料，臺灣大青為華南市場重要染料來源，反映清代臺灣農業加工業之發展', '大青;染布;清代;染料;農業加工', '清領前期（1700–1860）', '全臺灣', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '史料分散', '僅收錄 metadata', NULL, '清代臺灣大青為重要經濟作物');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (257, '清代臺灣水圳與水利開發史料（補遺）', '清代地方官／墾首', '1720-1860', 4, 10, '方志／田野調查／學術研究', 'QING-CANAL-EXTRA', NULL, 'zh', '清代臺灣水利埤圳補遺：八堡圳（施世榜）、瑠公圳（郭錫瑠）、貓霧捒圳、隆恩圳、金廣福圳等開發歷程詳考', '水利;埤圳;清代;灌溉;水圳', '清領前期（1720–1860）', '全臺灣', NULL, '清代臺灣水利開發與埤圳系統', NULL, NULL, '2026-07-30', 'UNCLEAR', '文獻散見各志書與研究', '僅收錄 metadata', '方志／田野調查／學術研究', '水利開發為清代臺灣農業擴張之命脈');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (258, '海東書院與清代臺灣教育制度', '清代臺灣府儒學／海東書院', '1700-1860', 4, 11, '國立臺灣圖書館／方志', 'HAIDONG-ACADEMY-QING', NULL, 'zh', '清代臺灣最高學府海東書院（府城）之創設、學規、師資、考課與歷任山長之史料，兼論清代臺灣儒學教育體系', '海東書院;清代;教育;儒學;府城', '清領前期（1720–1860）', '臺南府城;全臺灣', NULL, '清代臺灣儒學與書院史料', NULL, NULL, '2026-07-30', 'UNCLEAR', '史料散見志書與文集', '僅收錄 metadata', NULL, '海東書院為清代臺灣最重要之書院');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (259, '崇文書院與南部書院沿革', '清代臺灣道／地方官', '1700-1860', 4, 11, '方志／學術研究', 'CHONGWEN-ACADEMY', NULL, 'zh', '清代臺灣南部書院（崇文書院、正音書院、引心書院等）之設立、運作與社會功能之史料', '書院;清代;教育;南部;科舉', '清領前期（1720–1860）', '臺南;高雄;屏東', NULL, '海東書院與清代臺灣教育制度', NULL, NULL, '2026-07-30', 'UNCLEAR', '史料散見各志書', '僅收錄 metadata', '方志／學術研究', '清代臺灣書院為科舉制度之基礎');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (260, '清代臺灣地震史（1792–1860）', '清代方志／奏疏／地方官記錄', '1792-1860', 4, 12, 'THDL／方志／學術研究', 'QING-EARTHQUAKE-1792', NULL, 'zh', '清領前期嘉慶至咸豐年間臺灣重大地震記錄，含1792年嘉義地震（死傷慘重）、1815年淡水地震、1839年嘉義地震、1848年彰化地震等', '地震;清代;嘉義;彰化;災害', '清領前期（1792–1860）', '全臺灣', NULL, '清代臺灣災害史料（前期）', NULL, NULL, '2026-07-30', 'UNCLEAR', '記錄散見各類文獻', '僅收錄 metadata', '學術研究', '臺灣位於環太平洋地震帶，地震記錄豐富');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (261, '清代臺灣颱風與水災編年記錄', '清代方志／奏疏／地方官記錄', '1683-1860', 4, 12, 'THDL／方志', 'QING-TYPHOON-FLOOD', NULL, 'zh', '清領前期臺灣颱風、豪雨與水災之編年記錄，由方志與奏疏中輯出，為臺灣古氣候重建之重要資料', '颱風;水災;清代;氣候;編年', '清領前期（1683–1860）', '全臺灣', NULL, '清代臺灣災害史料（前期）', NULL, NULL, '2026-07-30', 'UNCLEAR', '記錄散見各類文獻', '僅收錄 metadata', NULL, '清代颱風記錄為古氣候研究重要素材');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (262, '清代臺灣河川變遷與海岸地形（前期）', '學術研究團隊／地理學', '1900-2020', 4, 12, '學術期刊', 'QING-RIVER-COAST-QIAN', NULL, 'zh', '清代臺灣主要河川（濁水溪、曾文溪、淡水河、蘭陽溪等）之河道變遷與海岸地形變化研究，影響聚落、港口與土地利用', '河川;海岸;地形;清代;變遷', '清領前期（1683–1860）', '全臺灣', NULL, NULL, NULL, '學術期刊', NULL, '2026-07-30', 'UNCLEAR', '學術論文需購閱', '學術期刊', '僅收錄 metadata');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (263, '羅發號事件相關檔案', '清代總理衙門／美國外交文件', '1867-1868', 4, 1, '中研院近史所檔案館／美國國會圖書館', 'ROVER-INCIDENT-FILE', 'https://archives.sinica.edu.tw/', 'zh;en', '1867年美國商船羅發號在臺灣琅𤩝（恆春）觸礁，船長與船員遭原住民殺害之事件檔案，為清代臺灣涉外關係重大事件，導致李仙得來臺調查', '羅發號;清代;涉外;美國;原住民', '清領後期（1867–1868）', '琅𤩝（恆春）;全臺灣', NULL, '李仙得《臺灣紀行》', NULL, '中研院近史所（數位化）', '2026-07-30', 'UNCLEAR', '檔案分散中研院與美國', '僅收錄 metadata', NULL, '羅發號事件為牡丹社事件之前奏');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (264, '樟腦糾紛與1868年英軍犯臺檔案', '清代總理衙門／英國外交文件', '1868-1869', 4, 1, '中研院近史所檔案館／英國檔案館', 'CAMPHOR-WAR-1868', 'https://archives.sinica.edu.tw/', 'zh;en', '1868年樟腦糾紛（英商艾德華在臺非法經營樟腦遭查辦，英國派軍艦砲擊安平）相關清代官方檔案與英國外交文件', '樟腦;清代;涉外;英國;軍事', '清領後期（1868–1869）', '安平;淡水;全臺灣', NULL, '臺灣樟腦專賣史料（清領後期）', NULL, '中研院近史所（數位化）', '2026-07-30', 'UNCLEAR', '檔案分散中研院與英國', '僅收錄 metadata', NULL, '樟腦戰爭為清代臺灣涉外武力衝突之典型案例');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (265, 'THDL—清代臺灣開港後涉外事件奏疏選', '閩浙總督、福建巡撫、臺灣道等', '1860-1895', 4, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-QG-1860-FOREIGN', 'http://thdl.ntu.edu.tw/', 'zh', 'THDL收錄開港後臺灣涉外事件奏疏精選，含洋商糾紛、傳教士教案、外國人遊歷、海關設置、領事裁判權等', '涉外;清代;奏疏;THDL;開港', '清領後期（1860–1895）', '全臺灣', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', 'THDL 免登入全文檢索', '已收錄 metadata', '臺灣歷史數位圖書館', '開港後涉外案件為清代臺灣新興政務');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (266, 'THDL—清代臺灣教案相關奏疏', '閩浙總督、臺灣道、總理衙門等', '1860-1895', 4, 1, '臺灣歷史數位圖書館（THDL）', 'THDL-QG-1860-JIAOAN', 'http://thdl.ntu.edu.tw/', 'zh', 'THDL收錄清代臺灣天主教與基督新教傳教士在臺傳教引發之教案與糾紛相關奏疏', '教案;清代;奏疏;傳教士;THDL', '清領後期（1860–1895）', '全臺灣', NULL, '明清臺灣行政檔案（THDL 文獻集）', NULL, '國立臺灣大學數位人文研究中心（全文數位化）', '2026-07-30', 'UNCLEAR', 'THDL 免登入全文檢索', '已收錄 metadata', '臺灣歷史數位圖書館', '教案為清代臺灣涉外史重要議題');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (267, '臺灣鐵路建設相關檔案', '劉銘傳／邵友濂／清代總理衙門', '1885-1893', 4, 1, '國立故宮博物院（清宮檔案）／國立臺灣圖書館', 'TW-RAILWAY-FILE', NULL, 'zh', '清代臺灣鐵路（基隆—臺北—新竹段）之籌建、施工、營運與停工相關官方檔案，為中國第一條由中國人自行興建並營運之鐵路', '鐵路;清代;劉銘傳;基隆;新竹', '清領後期（1885–1893）', '基隆;臺北;新竹', NULL, '劉銘傳《劉壯肅公奏議》;清代基隆煤礦與鐵路遺址考古', NULL, '國立故宮博物院（清宮典藏）', '2026-07-30', 'UNCLEAR', '檔案分散故宮與國圖', '僅收錄 metadata', NULL, '清代臺灣鐵路為中國鐵路史之先驅');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (268, '臺灣電報與郵政建設檔案', '劉銘傳／清代總理衙門', '1886-1895', 4, 1, '國立故宮博物院（清宮檔案）／學術研究', 'TW-TELEGRAPH-POST-FILE', NULL, 'zh', '清代臺灣電報線路（臺北—滬尾—安平—打狗—基隆）與郵政系統（臺灣郵政局）之建設與營運相關官方檔案', '電報;郵政;清代;劉銘傳;近代化', '清領後期（1886–1895）', '全臺灣', NULL, '劉銘傳《劉壯肅公奏議》', NULL, '國立故宮博物院（清宮典藏）', '2026-07-30', 'UNCLEAR', '檔案分散', '僅收錄 metadata', '學術研究', '清代臺灣為中國最早全面架設電報之省份之一');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (269, '清末臺灣涉外條約與通商章程', '清代總理衙門／外國政府', '1858-1895', 4, 1, '中研院近史所檔案館', 'TW-TREATIES-LATEQING', 'https://archives.sinica.edu.tw/', 'zh;en;fr', '1858年天津條約至1895年馬關條約之間與臺灣相關之涉外條約、通商章程與關稅協定，為清代臺灣國際地位之法律框架', '條約;清代;涉外;通商;馬關條約', '清領後期（1858–1895）', '全臺灣', NULL, NULL, NULL, '中研院近史所（數位化）', '2026-07-30', 'UNCLEAR', '近史所檔案館線上目錄查詢', '僅收錄 metadata', NULL, '條約為清代臺灣國際關係之基礎');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (270, '清末臺灣沿海圖（英國海軍測量）', '英國海軍水文測量局', '1850-1895', 4, 2, '大英圖書館／英國海軍水文局', 'BRITISH-NAVY-CHART-TW', NULL, 'en', '英國海軍在19世紀中後期測繪之臺灣沿海海圖，為開港通商後西方航海者使用之精確海圖，含水深、航道、燈塔、錨地等', '海圖;清代;英國;海軍;航海', '清領後期（1850–1895）', '全臺灣沿海', NULL, '清代臺灣海防圖（前期）', '英國海軍水文局', '大英圖書館（典藏）', '2026-07-30', 'UNCLEAR', '原件藏英國，數位版有限', '僅收錄 metadata', NULL, '英國海圖為清代臺灣沿海最精確之測量');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (271, 'The China Review 臺灣相關論文（1872–1901）', '多件外國學者與傳教士', '1872-1895', 4, 3, '香港大學圖書館（數位化）', 'CHINA-REVIEW-TW', 'https://digital.lib.hku.hk/', 'en', '清末香港出版之學術期刊《The China Review, or Notes and Queries on the Far East》中與臺灣相關之論文、書評與記錄，為西方早期臺灣學術研究之重要載體', 'The China Review;清代;學術;西方;臺灣研究', '清領後期（1872–1895）', '全臺灣', NULL, NULL, NULL, '香港大學圖書館（數位化）', '2026-07-30', 'UNCLEAR', '香港大學線上公開', '僅收錄 metadata', NULL, '西方學術界最早之臺灣研究專刊');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (272, '胡傳（胡鐵花）《臺灣日記與稟啟》', '胡傳（胡鐵花）', '1892-1895', 4, 4, '國立臺灣圖書館（原件）／臺灣銀行經濟研究室（刊本）', 'HUCHUAN-TW-DIARY', NULL, 'zh', '胡適之父胡傳（胡鐵花）任職臺灣（臺東直隸州知州）期間之日記與公牘稟啟，為清領末期臺灣後山治理之珍貴第一手紀錄', '胡傳;胡鐵花;清代;臺東;後山', '清領後期（1892–1895）', '臺東;花蓮;全臺灣', NULL, NULL, '臺灣銀行經濟研究室（臺灣文獻叢刊第71種）', NULL, '2026-07-30', 'ARR', '臺灣文獻叢刊絕版', '已收錄 metadata', NULL, '胡傳為清代臺灣後山最後一位地方官');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (273, '劉永福史料與傳記', '劉永福／清代官方文件', '1885-1895', 4, 4, '國立臺灣圖書館／國家圖書館', 'LIUYONGFU-BIO-TW', NULL, 'zh', '劉永福（黑旗軍領袖，臺灣民主國大將軍）在臺相關史料，含1895年乙未戰爭中領導南部抗日之文件、告示與其生平傳記', '劉永福;黑旗軍;清代;乙未;抗日', '清領後期（1894–1895）', '臺南;高雄;全臺灣', NULL, '乙未戰爭與臺灣民主國檔案', NULL, NULL, '2026-07-30', 'UNCLEAR', '有傳記出版品', '已收錄 metadata', NULL, '劉永福為乙未抗日之象徵性人物');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (274, '丘逢甲詩文與傳記', '丘逢甲／晚清文人', '1885-1912', 4, 4, '國立臺灣圖書館／學術研究', 'QIU-FENGJIA-POEMS', NULL, 'zh', '丘逢甲（清代臺灣最後一代文人、臺灣民主國副總統）之詩文集與傳記，其詩作為乙未割臺前後臺灣文人集體記憶之文學見證', '丘逢甲;清代;文學;乙未;抗日', '清領後期（1885–1895）', '全臺灣;廣東', NULL, '乙未戰爭與臺灣民主國檔案;清代臺灣文人別集選', NULL, NULL, '2026-07-30', 'UNCLEAR', '丘逢甲詩文集流通普遍', '已收錄 metadata', '學術研究', '丘逢甲為清代臺灣最著名之詩人與抗日人物');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (275, '林豪《澎湖廳志》與澎湖文人', '林豪等', '1860-1895', 4, 4, '國立臺灣圖書館（原件）', 'LINHAO-PH-LITERATI', NULL, 'zh', '澎湖文人林豪（《澎湖廳志》纂修者）之生平與著作，兼論清領後期澎湖文人群體與海洋社會', '林豪;澎湖;清代;文人;方志', '清領後期（1862–1895）', '澎湖', NULL, '澎湖廳志（明鄭時期）', NULL, NULL, '2026-07-30', 'UNCLEAR', '文獻散見', '僅收錄 metadata', NULL, '澎湖在清代文風雖遜臺灣本島，仍有重要文人');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (276, '賴阿芳（Lai Afong）拍攝之來臺相關照片', '賴阿芳（Lai Afong）', '1870-1880', 4, 5, '哈佛大學哈佛燕京圖書館／Wellcome Library', 'LAI-AFONG-TW', NULL, 'en', '香港著名攝影師賴阿芳在1870年代拍攝之臺灣相關照片，為目前所知最早由華人攝影師拍攝之臺灣影像', '賴阿芳;攝影;清代;香港;19世紀末', '清領後期（1870–1880）', '全臺灣', NULL, NULL, NULL, '哈佛燕京圖書館（數位典藏）', '2026-07-30', 'UNCLEAR', '海外圖書館數位版', '僅收錄 metadata', NULL, '華人攝影師拍攝之最早臺灣影像');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (277, '清末臺灣原住民影像資料（外國攝影師）', '多件外國攝影師', '1870-1895', 4, 5, 'Wellcome Library／大英圖書館／法國國家圖書館', 'QING-ABORIGINAL-PHOTOS', NULL, 'en', '19世紀末外國攝影師拍攝之臺灣原住民（平埔族、高山族）照片合集，為清代原住民外觀、服飾、刺青、建築之珍貴視覺史料', '原住民;清代;攝影;人類學;19世紀末', '清領後期（1870–1895）', '全臺灣', NULL, NULL, NULL, 'Wellcome Library 等（數位典藏）', '2026-07-30', 'UNCLEAR', '海外圖書館公開瀏覽', '僅收錄 metadata', NULL, '清代臺灣原住民影像為人類學史之重要資料');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (278, '淡水海關醫報（Customs Medical Reports, 1869–1895）—臺灣部分', '中國海關總稅務司（醫官）', '1869-1895', 4, 6, '中國海關（原刊）／大英圖書館', 'CUSTOMS-MEDICAL-TW', NULL, 'en', '中國海關醫報（Customs Medical Reports）中臺灣各口（淡水、安平、打狗、基隆）醫官之公共衛生與疫情年報，為清代臺灣醫療史之最詳實統計來源', '海關;醫療;衛生;清代;疫情', '清領後期（1869–1895）', '淡水;安平;打狗;基隆', NULL, '清代後期臺灣疫情史料;清末臺灣傳染病與海關檢疫', NULL, NULL, '2026-07-30', 'UNCLEAR', '英文原件散見各大圖書館', '僅收錄 metadata', NULL, '清代臺灣最早之連續公共衛生統計');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (279, '清末臺灣港口船舶統計', '中國海關總稅務司', '1862-1895', 4, 6, '海關檔案／大英圖書館', 'QING-PORT-SHIPPING-STATS', NULL, 'en', '清代臺灣各港口（淡水、安平、打狗、基隆）之船舶入出噸位、國籍別、船型別統計，反映開港後航運發展與國際貿易之趨勢', '港口;船舶;航運;清代;統計', '清領後期（1862–1895）', '淡水;安平;打狗;基隆', NULL, '清代臺灣海關貿易統計', NULL, NULL, '2026-07-30', 'UNCLEAR', '海關報告需購閱', '僅收錄 metadata', NULL, '航運統計為清代臺灣國際貿易之量化基礎');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (280, '清代臺灣砲臺遺構調查（滬尾砲臺、億載金城、赤崁樓等）', '學術研究團隊／內政部國定古蹟', '2000-2020', 4, 7, '學術報告／古蹟調查報告', 'QING-FORT-ARCH-TW', NULL, 'zh', '清領後期興建之現代化砲臺（滬尾砲臺、億載金城/二鯤鯓砲臺、旗後砲臺、基隆二沙灣砲臺等）之建築考古與遺構調查', '砲臺;清代;軍事;古蹟;建築', '清領後期（1874–1895）', '淡水;臺南;高雄;基隆', NULL, '清末臺灣沿海圖（英國海軍測量）', NULL, NULL, '2026-07-30', 'UNCLEAR', '古蹟調查報告散布各單位', '僅收錄 metadata', '學術報告／古蹟調查報告', '現代化砲臺為清代臺灣海防近代化之具體成果');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (281, '清末臺灣邊界碑（番界、行政界）', '清代臺灣地方官', '1874-1895', 4, 8, '中研院臺灣史研究所碑碣資料庫／田野現存', 'QING-BOUNDARY-STELE', 'https://rub.ith.sinica.edu.tw/', 'zh', '清末臺灣開山撫番後設立之界碑，含番界（「界」字碑）、行政區界碑、隘勇線碑等，為清代臺灣邊界制度之石刻實證', '界碑;清代;番界;開山撫番;邊界', '清領後期（1874–1895）', '全臺灣', NULL, '清代臺灣開山撫番碑記', NULL, NULL, '2026-07-30', 'UNCLEAR', '田野調查中發現，部分已移置博物館', '僅收錄 metadata', '田野現存', '清末番界碑為原住民土地權利之關鍵物證');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (282, '清代臺灣煤油（石油）探勘史料', '清代臺灣道／外國技師', '1860-1895', 4, 10, '清代檔案／學術研究', 'TW-KEROSENE-PROSPECT', NULL, 'zh;en', '清代臺灣煤油（石油）探勘之相關史料，含苗栗出磺坑、新竹、嘉義等處石油露頭探勘、外國技師評估與試鑽記錄', '石油;煤油;清代;苗栗;礦業', '清領後期（1861–1895）', '苗栗;新竹;嘉義', NULL, '臺灣煤業史料（清領後期）', NULL, NULL, '2026-07-30', 'UNCLEAR', '探勘記錄分散檔案中', '僅收錄 metadata', '學術研究', '出磺坑為亞洲最古老之油礦之一');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (283, '清末臺灣金融與票號匯兌史料', '清代臺灣道／大陸票號（山西票號）', '1860-1895', 4, 10, '中研院近史所／學術研究', 'QING-FINANCE-TAIWAN', NULL, 'zh', '清末臺灣金融流通與匯兌系統史料，含大陸票號在臺業務、臺灣銀錢比價、官銀與私票流通、劉銘傳時期金融改革等', '金融;票號;清代;匯兌;貨幣', '清領後期（1860–1895）', '全臺灣', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '金融檔案極分散', '僅收錄 metadata', '學術研究', '清末臺灣金融史為臺灣經濟史之薄弱環節');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (284, '臺灣北部茶葉產區調查與茶農契約', '清代地方官／外國商行', '1865-1895', 4, 10, '國立臺灣圖書館／學術研究', 'TW-TEA-DISTRICT-SURVEY', NULL, 'zh;en', '清末臺灣北部茶葉產區（文山、石碇、坪林、三峽、大溪、新竹等）之調查記錄與茶農契約文書，反映茶葉經濟向山區擴張之過程', '茶葉;清代;茶區;契約;北部', '清領後期（1865–1895）', '臺北;新北;桃園;新竹', NULL, '臺灣茶葉出口史料（清領後期）', NULL, NULL, '2026-07-30', 'UNCLEAR', '調查記錄與契約分散', '僅收錄 metadata', '學術研究', '茶葉經濟帶動清代臺灣北部山區開發');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (285, '清末臺灣糖業產區與洋行收購史料', '清代地方官／外國洋行', '1860-1895', 4, 10, '海關檔案／學術研究', 'TW-SUGAR-DISTRICT-LATEQING', NULL, 'zh;en', '清末臺灣糖業產區（臺南、高雄、屏東為主）之調查與外國洋行（德記、怡記、和記等）收購砂糖之相關史料', '糖業;清代;洋行;產區;出口', '清領後期（1860–1895）', '臺南;高雄;屏東', NULL, '臺灣糖業近代化史料（清領後期）', NULL, NULL, '2026-07-30', 'UNCLEAR', '史料分散', '僅收錄 metadata', '學術研究', '清末糖業為南部經濟命脈');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (286, '清末臺灣港口發展與洋行貿易史料', '清代臺灣道／外國洋行（怡和、寶順、德記等）', '1860-1895', 4, 10, '中研院近史所／大英圖書館／學術研究', 'QING-PORT-TRADE-FIRMS', NULL, 'zh;en', '清末臺灣各港口主要外國洋行之貿易活動史料，含怡和洋行（Jardine Matheson）、寶順洋行（Dodd & Co.）、德記洋行（Tait & Co.）等在臺經營茶、糖、樟腦之商業文書', '洋行;清代;貿易;港口;外商', '清領後期（1860–1895）', '淡水;安平;打狗;基隆', NULL, '臺灣茶葉出口史料;臺灣樟腦專賣史料;臺灣糖業近代化史料', NULL, NULL, '2026-07-30', 'UNCLEAR', '洋行文書分散海外檔案館', '僅收錄 metadata', '學術研究', '外國洋行為清末臺灣對外貿易之實際執行者');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (287, '淡水牛津學堂（理學堂大書院）與女學堂沿革', '馬偕（George Leslie Mackay）／臺灣長老教會', '1882-1895', 4, 11, '馬偕醫學院／真理大學校史館', 'OXFORD-COLLEGE-TAMSUI', NULL, 'zh;en', '馬偕1882年創設之牛津學堂（Oxonia College，今真理大學前身）與1884年淡水女學堂之創校沿革、課程、師生與社會影響史料', '牛津學堂;馬偕;清代;教育;淡水', '清領後期（1882–1895）', '淡水;臺北', NULL, '馬偕與北臺灣醫療教育史', NULL, '真理大學校史館', '2026-07-30', 'UNCLEAR', '校史館有數位化部分資料', '已收錄 metadata', NULL, '牛津學堂為清代臺灣西式高等教育之開端');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (288, '清法戰爭傷兵醫療史料', '清代臺灣道／法國軍醫／海關醫官', '1884-1885', 4, 11, '法國軍醫院檔案／海關醫報', 'SINO-FRENCH-MEDICAL', NULL, 'zh;fr;en', '1884–1885年中法戰爭期間臺灣戰場傷兵醫療之相關史料，含清代軍醫制度、法國軍醫院（基隆、澎湖）、海關醫官救治等', '中法戰爭;醫療;清代;傷兵;軍醫', '清領後期（1884–1885）', '基隆;淡水;澎湖', NULL, '中法戰爭臺灣相關檔案（1884–1885）', NULL, NULL, '2026-07-30', 'UNCLEAR', '醫療記錄散見各國檔案', '僅收錄 metadata', NULL, '戰爭醫療史為較少被關注之面向');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (289, '清末臺灣地質調查（外國技師報告）', '外國技師（E. A. A. von Dücker等）', '1865-1895', 4, 12, '大英圖書館／學術研究', 'QING-GEOLOGY-TW', NULL, 'en;de', '清末外國技師與地質學家在臺進行之地質調查報告，含煤田地質、石油地質、礦產分布與地形地質概查', '地質;清代;礦產;調查;外國技師', '清領後期（1865–1895）', '全臺灣', NULL, '清代臺灣煤業史料;清代臺灣煤油探勘史料', NULL, NULL, '2026-07-30', 'UNCLEAR', '報告分散海外圖書館', '僅收錄 metadata', '學術研究', '清末外國地質調查為臺灣地質學之發軔');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (290, '清末臺灣傳染病與海關檢疫制度', '清代臺灣道／海關醫官', '1880-1895', 4, 12, '海關醫報／清代檔案', 'QING-QUARANTINE-TW', NULL, 'zh;en', '清末臺灣鼠疫、霍亂等傳染病流行與海關檢疫制度建立之史料，各港口設立檢疫所、船舶檢疫、隔離措施等', '傳染病;檢疫;清代;海關;鼠疫', '清領後期（1880–1895）', '全臺灣各港口', NULL, '清代後期臺灣疫情史料;淡水海關醫報', NULL, NULL, '2026-07-30', 'UNCLEAR', '記錄分散各海關報告', '僅收錄 metadata', NULL, '清末海關檢疫為臺灣公共衛生制度之起點');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (291, '開港後臺灣港口淤積與疏濬記錄', '清代臺灣道／海關官員', '1860-1895', 4, 12, '海關報告／清代檔案', 'QING-PORT-SILTATION', NULL, 'zh;en', '開港後臺灣各港口（安平、打狗、淡水、基隆）之泥沙淤積問題與疏濬工程記錄，港口淤積為清代臺灣航運之長期困擾', '港口;淤積;清代;疏濬;航運', '清領後期（1860–1895）', '安平;打狗;淡水;基隆', NULL, '清代臺灣河川變遷與海岸地形（前期）', NULL, NULL, '2026-07-30', 'UNCLEAR', '記錄散見海關報告與地方檔案', '僅收錄 metadata', NULL, '港口淤積最終導致安平港被高雄港取代');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (292, '臺灣總督府公文類纂—總論', '臺灣總督府', '1895-1945', 5, 1, '國史館臺灣文獻館', 'TAIYU-SOUR-00', 'https://onlinearchives.th.gov.tw/', 'ja;zh', '日治時期臺灣總督府之核心行政文書檔案，總件數逾百萬件，涵蓋內務、財務、殖產、法務、警務、教育、專賣等各部門公文，為日治時期最完整的官方檔案', '臺灣總督府;公文類纂;日治;官方檔案', '日治時期（1895–1945）', '全臺灣', NULL, NULL, NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上目錄與數位影像公開查詢', '已收錄 metadata', NULL, '日治時期最核心之官方檔案');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (293, '臺灣總督府公文類纂—民政篇', '臺灣總督府民政部', '1895-1945', 5, 1, '國史館臺灣文獻館', 'TAIYU-SOUR-01', 'https://onlinearchives.th.gov.tw/', 'ja', '臺灣總督府公文類纂中民政相關文書，含地方行政、戶口、社寺、社會事業、衛生等部門公文', '民政;臺灣總督府;公文類纂;日治;地方行政', '日治時期（1895–1945）', '全臺灣', NULL, '臺灣總督府公文類纂—總論', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上公開查詢', '已收錄 metadata', NULL, '民政為總督府行政之核心');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (294, '臺灣總督府公文類纂—財務篇', '臺灣總督府財務局', '1895-1945', 5, 1, '國史館臺灣文獻館', 'TAIYU-SOUR-02', 'https://onlinearchives.th.gov.tw/', 'ja', '臺灣總督府公文類纂中財務相關文書，含預算決算、稅制、金融、國有財產等', '財務;臺灣總督府;公文類纂;日治;稅制', '日治時期（1895–1945）', '全臺灣', NULL, '臺灣總督府公文類纂—總論', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上公開查詢', '已收錄 metadata', NULL, '日治財政制度之完整記錄');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (295, '臺灣總督府公文類纂—殖產篇', '臺灣總督府殖產局', '1895-1945', 5, 1, '國史館臺灣文獻館', 'TAIYU-SOUR-03', 'https://onlinearchives.th.gov.tw/', 'ja', '臺灣總督府公文類纂中殖產（產業）相關文書，含農業、林業、水產、礦業、工商業等', '殖產;臺灣總督府;公文類纂;日治;產業', '日治時期（1895–1945）', '全臺灣', NULL, '臺灣總督府公文類纂—總論', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上公開查詢', '已收錄 metadata', NULL, '日治產業政策之第一手檔案');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (296, '臺灣總督府公文類纂—內務篇', '臺灣總督府內務局', '1895-1945', 5, 1, '國史館臺灣文獻館', 'TAIYU-SOUR-04', 'https://onlinearchives.th.gov.tw/', 'ja', '臺灣總督府公文類纂中內務相關文書，含土木、都市計畫、建築、河川、港灣等基礎建設公文', '內務;臺灣總督府;公文類纂;日治;土木', '日治時期（1895–1945）', '全臺灣', NULL, '臺灣總督府公文類纂—總論', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上公開查詢', '已收錄 metadata', NULL, '日治基礎建設之官方記錄');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (297, '臺灣總督府公文類纂—警務篇', '臺灣總督府警務局', '1895-1945', 5, 1, '國史館臺灣文獻館', 'TAIYU-SOUR-05', 'https://onlinearchives.th.gov.tw/', 'ja', '臺灣總督府公文類纂中警務相關文書，含警察制度、保甲、思想取締、社會運動、霧社事件等', '警務;臺灣總督府;公文類纂;日治;警察', '日治時期（1895–1945）', '全臺灣', NULL, '臺灣總督府公文類纂—總論', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上公開查詢', '已收錄 metadata', NULL, '警察為日治臺灣統治之最末端神經');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (298, '臺灣總督府公文類纂—專賣篇', '臺灣總督府專賣局', '1900-1945', 5, 1, '國史館臺灣文獻館', 'TAIYU-SOUR-06', 'https://onlinearchives.th.gov.tw/', 'ja', '臺灣總督府公文類纂中專賣相關文書，含鴉片、樟腦、食鹽、菸草、酒類等專賣制度公文', '專賣;臺灣總督府;公文類纂;日治;樟腦', '日治時期（1895–1945）', '全臺灣', NULL, '臺灣總督府公文類纂—總論', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上公開查詢', '已收錄 metadata', NULL, '專賣收入為總督府財政之大宗');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (299, '臺灣總督府公文類纂—教育篇', '臺灣總督府文教局', '1895-1945', 5, 1, '國史館臺灣文獻館', 'TAIYU-SOUR-07', 'https://onlinearchives.th.gov.tw/', 'ja', '臺灣總督府公文類纂中教育相關文書，含教育令、公學校、實業學校、師範教育、社會教育、教科書等', '教育;臺灣總督府;公文類纂;日治;學校', '日治時期（1895–1945）', '全臺灣', NULL, '臺灣總督府公文類纂—總論', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上公開查詢', '已收錄 metadata', NULL, '日治臺灣教育制度沿革之官方記錄');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (300, '臺灣總督府評議會文書', '臺灣總督府評議會', '1896-1945', 5, 1, '國史館臺灣文獻館', 'TAIYU-HYOGIKAI', 'https://onlinearchives.th.gov.tw/', 'ja', '臺灣總督府評議會（總督最高諮詢機關）之會議記錄與答詢文書，為日治政策形成過程之第一手決策紀錄', '評議會;臺灣總督府;日治;政策;決策', '日治時期（1896–1945）', '全臺灣', NULL, '臺灣總督府公文類纂—總論', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '總督府最高諮詢機關之會議錄');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (301, '臺灣總督府官報', '臺灣總督府', '1896-1945', 5, 1, '國史館臺灣文獻館／國立臺灣圖書館', 'TAIYU-KANPO', 'https://onlinearchives.th.gov.tw/', 'ja', '臺灣總督府發布之官方公報，含律令、府令、告示、訓令、辭令等，為日治時期法律的公布管道與行政命令的權威來源', '官報;臺灣總督府;日治;法令;公告', '日治時期（1896–1945）', '全臺灣', NULL, NULL, NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上公開查詢', '已收錄 metadata', NULL, '日治時期法律之唯一公告管道');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (302, '專賣局檔案—鴉片專賣', '臺灣總督府專賣局', '1897-1945', 5, 1, '國史館臺灣文獻館', 'TAIYU-SEMBAI-AHEN', 'https://onlinearchives.th.gov.tw/', 'ja', '日治時期鴉片專賣制度之相關公文與統計，含鴉片進口、製造、特許販賣、癮者管理等，為日治最有爭議之專賣政策', '鴉片;專賣;日治;阿片;特許', '日治時期（1897–1945）', '全臺灣', NULL, '臺灣總督府公文類纂—專賣篇', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '鴉片專賣為日治前期最大宗財政收入來源');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (303, '臺灣拓殖株式會社檔案', '臺灣拓殖株式會社', '1936-1945', 5, 1, '國史館臺灣文獻館', 'TAITAKU-FILE', 'https://onlinearchives.th.gov.tw/', 'ja', '日本國策公司「臺灣拓殖株式會社」（臺拓）之公文書與業務記錄，含南洋拓殖、農業開發、移民事業等', '臺拓;拓殖;日治;國策會社;南洋', '日治時期（1936–1945）', '全臺灣;南洋', NULL, NULL, NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '臺拓為日本南進政策之執行機關');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (304, '臺灣鐵道部檔案', '臺灣總督府交通局鐵道部', '1899-1945', 5, 1, '國史館臺灣文獻館', 'TAIYU-TETSUDOBU', 'https://onlinearchives.th.gov.tw/', 'ja', '臺灣總督府鐵道部之公文檔案，含縱貫鐵路建設、鐵路經營、貨運、沿線土地開發等', '鐵道;日治;交通;鐵路;總督府', '日治時期（1899–1945）', '全臺灣', NULL, NULL, NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '日治鐵道為臺灣現代化交通之開端');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (305, '臺灣總督府警察沿革誌', '臺灣總督府警務局', '1933-1939', 5, 1, '國立臺灣圖書館（原件）', 'TAIYU-KEISATSU', NULL, 'ja', '臺灣總督府警務局編纂之警察制度史，凡4卷，為日治時期臺灣警察制度、保甲、思想取締、霧社事件等之官方權威記錄', '警察;沿革誌;日治;警務局;保甲', '日治時期（1895–1930年代）', '全臺灣', NULL, '臺灣總督府公文類纂—警務篇', NULL, NULL, '2026-07-30', 'UNCLEAR', '紙本國臺圖藏', '僅收錄 metadata', NULL, '日治警察史之百科全書');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (306, '臺灣總督府殖產局林業檔案', '臺灣總督府殖產局林務課', '1910-1945', 5, 1, '國史館臺灣文獻館', 'TAIYU-RINGYO', 'https://onlinearchives.th.gov.tw/', 'ja', '日治時期臺灣林業政策與經營之公文書，含森林調查、林產物處分、國有林野整理、林業試驗等', '林業;日治;總督府;殖產局;森林', '日治時期（1910–1945）', '全臺灣', NULL, '臺灣總督府公文類纂—殖產篇', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '日治林業檔案記錄了臺灣山林資源大規模開發');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (307, '霧社事件相關檔案', '臺灣總督府警務局／軍方', '1930-1931', 5, 1, '國史館臺灣文獻館／中研院臺史所', 'MUSHA-INCIDENT-FILE', NULL, 'ja', '霧社事件（1930年）發生前後之官方檔案，含霧社地區原住民管理、事件經過、討伐作戰、善後與遷村等公文', '霧社事件;原住民;日治;警務;討伐', '日治時期（1930–1931）', '霧社（南投）', NULL, '臺灣總督府公文類纂—警務篇', NULL, NULL, '2026-07-30', 'UNCLEAR', '檔案分散各機構', '僅收錄 metadata', NULL, '霧社事件為日治時期最大原住民武裝抗爭');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (308, '皇民化運動相關檔案', '臺灣總督府文教局／警務局', '1937-1945', 5, 1, '國史館臺灣文獻館', 'KOMINKA-FILE', 'https://onlinearchives.th.gov.tw/', 'ja', '日治末期皇民化運動之官方檔案，含國語（日語）普及、改姓名、神社參拜、志願兵制度、戰時動員等', '皇民化;日治;國語;改姓名;志願兵', '日治時期（1937–1945）', '全臺灣', NULL, NULL, NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '皇民化為日治末期最強烈之同化政策');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (309, '保甲制度檔案', '臺灣總督府警務局', '1898-1945', 5, 1, '國史館臺灣文獻館', 'HOCHI-SEIDO-FILE', 'https://onlinearchives.th.gov.tw/', 'ja', '日治時期保甲制度之相關公文，含保甲條例、保甲編成、保甲經費、保甲聯合會、壯丁團等', '保甲;日治;警察;基層行政;壯丁團', '日治時期（1898–1945）', '全臺灣', NULL, '臺灣總督府警察沿革誌', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '保甲為日治臺灣最基層之統治工具');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (310, '臺灣總督府中央研究所檔案', '臺灣總督府中央研究所', '1909-1945', 5, 1, '國史館臺灣文獻館', 'TAIYU-CHUKEN', 'https://onlinearchives.th.gov.tw/', 'ja', '臺灣總督府中央研究所（後改為臺北帝國大學理農學部）之研究報告與公文，含農業改良、化學工業、熱帶醫學等研究', '中央研究所;日治;總督府;農業;研究', '日治時期（1909–1945）', '全臺灣', NULL, NULL, NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '中央研究所為日治時期臺灣最高研究機構');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (311, '臺灣總督府臨時臺灣舊慣調查會報告', '臨時臺灣舊慣調查會（岡松參太郎等）', '1901-1919', 5, 1, '國立臺灣圖書館（原件）', 'TAIYU-KYUCHU', NULL, 'ja', '臨時臺灣舊慣調查會之調查報告，含臺灣私法、清國行政法、番族慣習調查等，為臺灣傳統社會法律制度最系統之調查報告', '舊慣調查;日治;法律;慣習;臺灣私法', '日治時期（1901–1919）', '全臺灣', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '原刊國臺圖藏', '僅收錄 metadata', NULL, '舊慣調查為日治臺灣學術研究之最重要成果');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (312, '臺灣社會運動與文化協會檔案', '臺灣總督府警務局／臺灣文化協會', '1921-1937', 5, 1, '中研院臺史所／國史館臺灣文獻館', 'TW-CULTURE-ASSOC-FILE', 'https://tais.ith.sinica.edu.tw/', 'ja;zh', '1920–1930年代臺灣文化協會、議會請願運動、農民組合、工友總聯盟等社會運動相關之警務監控檔案、組織文書與人物書信', '文化協會;社會運動;日治;警務;抗日', '日治時期（1921–1937）', '全臺灣', NULL, NULL, NULL, '中研院臺史所（數位典藏）', '2026-07-30', 'UNCLEAR', '臺史所檔案館查詢', '僅收錄 metadata', NULL, '臺灣文化協會為日治時期最重要的政治文化運動');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (313, '臺灣總督府土地調查檔案', '臺灣總督府臨時土地調查局', '1898-1905', 5, 1, '國史館臺灣文獻館', 'TAIYU-TOCHI-CHOSA', 'https://onlinearchives.th.gov.tw/', 'ja', '日治初期土地調查之公文與測量記錄，為日治統治基礎工程，確立了近代土地所有權制度', '土地調查;日治;總督府;地籍;測量', '日治時期（1898–1905）', '全臺灣', NULL, NULL, NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '土地調查為日治統治之基礎工程');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (314, '在臺日本人事業與移民檔案', '臺灣總督府殖產局／內務局', '1895-1945', 5, 1, '國史館臺灣文獻館／中研院臺史所', 'NICHIJIN-IMIN-FILE', 'https://tais.ith.sinica.edu.tw/', 'ja', '日治時期在臺日本人之事業活動、移民政策、內地人（日本人）優遇制度等相關公文', '日本人;移民;殖民;日治;在臺日人', '日治時期（1895–1945）', '全臺灣', NULL, NULL, NULL, '中研院臺史所（數位典藏）', '2026-07-30', 'UNCLEAR', '臺史所查詢', '僅收錄 metadata', NULL, '在臺日人人口最高達約35萬人');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (315, '戰時體制與徵兵相關檔案（1937–1945）', '臺灣總督府軍務部／警務局', '1937-1945', 5, 1, '國史館臺灣文獻館', 'SENJI-TAIWAN-FILE', 'https://onlinearchives.th.gov.tw/', 'ja', '1937年中日戰爭全面爆發至1945年日本戰敗期間臺灣之戰時統制相關公文，含徵兵制、物資動員、防空、軍事設施等', '戰時;徵兵;日治;軍事;防空', '日治時期（1937–1945）', '全臺灣', NULL, '皇民化運動相關檔案', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '戰時體制為日治末期臺灣社會之全面改造');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (316, '臺灣總督府傳染病防治檔案', '臺灣總督府警務局衛生課', '1896-1945', 5, 1, '國史館臺灣文獻館', 'TAIYU-ESEKI', 'https://onlinearchives.th.gov.tw/', 'ja', '日治時期鼠疫、霍亂、瘧疾、天花等傳染病防治相關公文，含檢疫、隔離、預防注射、衛生改善等公共衛生措施', '傳染病;衛生;日治;檢疫;公共衛生', '日治時期（1896–1945）', '全臺灣', NULL, NULL, NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '日治公共衛生成就為殖民統治的重要正當性論述');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (317, '臺灣堡圖', '臺灣總督府臨時土地調查局', '1904', 5, 2, '國立臺灣圖書館／中研院GIS', 'TW-BAO-MAP-1904', 'https://gissrv5.sinica.edu.tw/', 'ja;zh', '臺灣總督府土地調查成果之一，以1904年為基準之全臺行政區界、聚落、土地利用、交通網之精確地圖，為日治時期最重要之基礎地圖', '堡圖;地圖;日治;土地調查;GIS', '日治時期（1904）', '全臺灣', NULL, '臺灣總督府土地調查檔案', NULL, '中研院（GIS數位化）', '2026-07-30', 'UNCLEAR', '中研院GIS公開查詢', '已收錄 metadata', NULL, '臺灣堡圖為臺灣史上最重要之地圖');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (318, '臺灣地形圖（五萬分一）', '臺灣總督府陸地測量部', '1921-1928', 5, 2, '中研院GIS／國立臺灣圖書館', 'TW-TOPO-MAP-1920', 'https://gissrv5.sinica.edu.tw/', 'ja', '日治時期臺灣總督府陸地測量部測繪之五萬分一地形圖，為臺灣第一套現代化地形圖，含等高線、聚落、交通、地貌', '地形圖;日治;陸地測量部;五萬分一;GIS', '日治時期（1921–1928）', '全臺灣', NULL, '臺灣堡圖', NULL, '中研院（GIS數位化）', '2026-07-30', 'UNCLEAR', '中研院GIS公開查詢', '僅收錄 metadata', NULL, '日治地形圖為臺灣地理研究之基礎資料');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (319, '臺灣行政區域圖（歷次改正）', '臺灣總督府內務局', '1901-1945', 5, 2, '國立臺灣圖書館', 'TW-ADMIN-MAP-SERIES', NULL, 'ja', '日治時期各階段行政區劃改正之地圖（1901年20廳、1920年5州2廳、1945年等），反映統治制度之空間佈局', '行政區劃;地圖;日治;州廳;改正', '日治時期（1901–1945）', '全臺灣', NULL, '臺灣堡圖', NULL, '國立臺灣圖書館', '2026-07-30', 'UNCLEAR', '數位版有限', '僅收錄 metadata', NULL, '日治行政區劃為戰後臺灣行政區之基礎');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (320, '臺灣都市計畫圖', '臺灣總督府內務局土木課', '1900-1945', 5, 2, '國立臺灣圖書館', 'TW-URBAN-PLAN-MAP', NULL, 'ja', '日治時期各主要都市（臺北、臺中、臺南、高雄、基隆等）之都市計畫圖，含道路網、公園、下水道、市區改正等', '都市計畫;日治;市區改正;地圖;都市', '日治時期（1900–1945）', '臺北;臺中;臺南;高雄;基隆', NULL, NULL, NULL, '國立臺灣圖書館', '2026-07-30', 'UNCLEAR', '數位版有限', '僅收錄 metadata', NULL, '日治都市計畫奠定了現代臺灣都市之基本格局');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (321, '臺灣鐵道線路圖（日治時期）', '臺灣總督府鐵道部', '1908-1945', 5, 2, '國立臺灣圖書館', 'TW-RAILWAY-MAP-JP', NULL, 'ja', '日治時期臺灣鐵道（官設鐵道、私設鐵道、輕便鐵道、森林鐵道、糖業鐵道）之完整路線圖', '鐵道;地圖;日治;輕便鐵道;糖鐵', '日治時期（1908–1945）', '全臺灣', NULL, '臺灣鐵道部檔案', NULL, '國立臺灣圖書館', '2026-07-30', 'UNCLEAR', '數位版有限', '僅收錄 metadata', NULL, '日治臺灣鐵道密度居亞洲之冠');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (322, '臺灣地籍圖（日治時期）', '臺灣總督府臨時土地調查局', '1900-1910', 5, 2, '國史館臺灣文獻館', 'TW-CADASTRAL-MAP-JP', NULL, 'ja', '日治初期土地調查後繪製之地籍圖，為臺灣第一套近代化地籍測量成果，為土地所有權之法律依據', '地籍;日治;土地調查;地圖;測量', '日治時期（1900–1910）', '全臺灣', NULL, '臺灣總督府土地調查檔案', NULL, '國史館臺灣文獻館', '2026-07-30', 'UNCLEAR', '國史館保有原件', '僅收錄 metadata', NULL, '地籍圖為臺灣土地制度近代化之基礎');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (323, '臺灣審圖（原住民分布圖）', '臺灣總督府警務局理蕃課', '1910-1945', 5, 2, '中研院臺史所', 'TW-ABORIGINAL-MAP-JP', NULL, 'ja', '日治時期繪製之臺灣原住民族分布圖與理蕃地圖，含各社位置、隘勇線、道路、警察駐在所等', '原住民;地圖;日治;理蕃;隘勇線', '日治時期（1910–1945）', '臺灣山地', NULL, '霧社事件相關檔案', NULL, '中研院臺史所', '2026-07-30', 'UNCLEAR', '地圖分散各機構', '僅收錄 metadata', NULL, '理蕃地圖為原住民空間史之關鍵資料');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (324, '臺灣森林圖', '臺灣總督府殖產局林務課', '1920-1945', 5, 2, '國立臺灣圖書館', 'TW-FOREST-MAP-JP', NULL, 'ja', '日治時期臺灣森林分布圖、林班圖與國有林野整理圖，為臺灣山林資源之系統測繪成果', '森林;地圖;日治;林業;林班', '日治時期（1920–1945）', '全臺灣山區', NULL, '臺灣總督府殖產局林業檔案', NULL, '國立臺灣圖書館', '2026-07-30', 'UNCLEAR', '數位版有限', '僅收錄 metadata', NULL, '日治森林圖為臺灣土地利用變遷之關鍵證據');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (325, '臺灣地質圖（日治時期）', '臺灣總督府殖產局', '1910-1945', 5, 2, '國立臺灣圖書館', 'TW-GEOLOGY-MAP-JP', NULL, 'ja', '日治時期臺灣地質調查所繪製之地質圖，含出磺坑油田、金瓜石金礦、煤田等礦產地質圖', '地質;地圖;日治;礦產;油田', '日治時期（1910–1945）', '全臺灣', NULL, '臺灣總督府中央研究所檔案', NULL, '國立臺灣圖書館', '2026-07-30', 'UNCLEAR', '數位版有限', '僅收錄 metadata', NULL, '日治地質調查為臺灣礦業開發之基礎');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (326, '臺灣地名辭書', '臺灣總督府／臺灣地理學會', '1900-1945', 5, 2, '國立臺灣圖書館', 'TW-PLACE-NAME-JP', NULL, 'ja', '日治時期編纂之臺灣地名資料彙編，含街庄名、舊地名、原住民社名之起源、沿革與分類', '地名;日治;辭書;街庄;地理', '日治時期（1900–1945）', '全臺灣', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '臺灣地名研究之基礎文獻', '僅收錄 metadata', NULL, '日治地名調查為戰後地名研究之基礎');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (327, '臺灣寫真帖（總督府官方編纂）', '臺灣總督府', '1908-1943', 5, 2, '國立臺灣圖書館（數位典藏）', 'TW-PHOTO-ALBUM-GOV', 'https://tsdl.ntl.edu.tw/', 'ja', '臺灣總督府官方編纂之《臺灣寫真帖》，定期出版，以照片記錄日治時期臺灣之都市建設、產業、風俗、原住民等', '寫真帖;日治;總督府;照片;紀錄', '日治時期（1908–1943）', '全臺灣', NULL, NULL, NULL, '國立臺灣圖書館（數位典藏）', '2026-07-30', 'UNCLEAR', '國臺圖TSDL公開瀏覽', '已收錄 metadata', NULL, '總督府官方寫真為視覺史料之最重要來源');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (328, '臺灣日日新報', '臺灣日日新報社', '1898-1944', 5, 3, '國立臺灣圖書館／漢珍數位', 'TW-DAILY-NEWS', 'https://tsdl.ntl.edu.tw/', 'ja;zh', '日治時期臺灣發行量最大、刊行最久之官方色彩報紙，1898年創刊至1944年，為日治時期最重要之新聞來源', '新聞;日治;日日新報;臺灣;報紙', '日治時期（1898–1944）', '全臺灣', NULL, NULL, NULL, '國立臺灣圖書館（數位典藏）', '2026-07-30', 'UNCLEAR', '需授權查詢', '已收錄 metadata', NULL, '日治時期新聞史料之最核心來源');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (329, '臺灣民報／臺灣新民報', '臺灣民報社／臺灣新民報社', '1923-1941', 5, 3, '國立臺灣圖書館／中研院臺史所', 'TW-MINBAO-SHINMIN', 'https://tais.ith.sinica.edu.tw/', 'zh;ja', '臺灣人自辦之政治社會報紙，為日治中期民族運動之喉舌，1923年創刊（東京），後移至臺灣發行，1937年中日戰爭後被迫廢刊', '民報;新民報;日治;民族運動;抗日', '日治時期（1923–1941）', '全臺灣', NULL, '臺灣社會運動與文化協會檔案', NULL, '中研院臺史所（數位典藏）', '2026-07-30', 'UNCLEAR', '臺史所全文公開', '已收錄 metadata', NULL, '臺灣人唯一之政治報紙');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (330, '臺南新報', '臺南新報社', '1903-1944', 5, 3, '國立臺灣歷史博物館（數位化）', 'TAINAN-SHINPO', 'https://taiwanindex.nmth.gov.tw/', 'ja;zh', '日治時期南部臺灣最大報紙，1903年由《臺灣日日新報》系分出，為南臺灣地方新聞之最重要來源', '臺南;新聞;日治;報紙;南部', '日治時期（1903–1944）', '臺南;高雄;屏東;澎湖', NULL, '臺灣日日新報', NULL, '國立臺灣歷史博物館（數位化）', '2026-07-30', 'UNCLEAR', '臺史博數位公開', '已收錄 metadata', NULL, '南部臺灣之地方報代表');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (331, '臺灣教育會雜誌／臺灣教育', '臺灣教育會', '1901-1945', 5, 3, '國立臺灣圖書館', 'TW-EDUCATION-JOURNAL', 'https://tsdl.ntl.edu.tw/', 'ja', '臺灣教育會發行之教育專業期刊，為日治時期臺灣教育政策、學校管理、教學方法之官方機關誌', '教育;日治;雜誌;學校;教科書', '日治時期（1901–1945）', '全臺灣', NULL, '臺灣總督府公文類纂—教育篇', NULL, '國立臺灣圖書館（數位典藏）', '2026-07-30', 'UNCLEAR', '國臺圖TSDL公開', '已收錄 metadata', NULL, '日治臺灣教育研究之主要文獻來源');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (332, '臺灣文藝／臺灣文學', '臺灣文藝聯盟／啟文社', '1934-1945', 5, 3, '國立臺灣圖書館', 'TW-BUNGEI', NULL, 'ja;zh', '日治時期臺灣文學雜誌，含《臺灣文藝》（1934）、《臺灣文學》（1941）等，為日治臺灣文學創作與批評之主要園地', '文學;日治;文藝;小說;詩', '日治時期（1934–1945）', '全臺灣', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '國臺圖有典藏', '僅收錄 metadata', NULL, '日治臺灣文學之核心刊物');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (333, '臺灣青年／臺灣／臺灣民報系列', '臺灣青年雜誌社／臺灣雜誌社', '1920-1924', 5, 3, '中研院臺史所（數位化）', 'TW-SEINEN-MINPO', 'https://tais.ith.sinica.edu.tw/', 'zh;ja', '留日臺灣學生創辦之雜誌系列（《臺灣青年》1920→《臺灣》1922→《臺灣民報》1923），為臺灣民族運動之思想啟蒙輿論平臺', '臺灣青年;留日;民族運動;啟蒙;雜誌', '日治時期（1920–1924）', '全臺灣;東京', NULL, '臺灣民報／臺灣新民報', NULL, '中研院臺史所（數位典藏）', '2026-07-30', 'UNCLEAR', '臺史所全文公開', '已收錄 metadata', NULL, '臺灣新文化運動之先聲');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (334, '臺灣時報', '臺灣時報社（東洋協會臺灣支部）', '1909-1945', 5, 3, '國立臺灣圖書館', 'TW-JIHO', 'https://tsdl.ntl.edu.tw/', 'ja', '東洋協會臺灣支部發行之綜合雜誌，為總督府之半官方言論機關，刊載臺灣政治、經濟、產業、文化之權威報導', '時報;日治;總督府;綜合;雜誌', '日治時期（1909–1945）', '全臺灣', NULL, NULL, NULL, '國立臺灣圖書館（數位典藏）', '2026-07-30', 'UNCLEAR', '國臺圖TSDL公開', '已收錄 metadata', NULL, '日治時期總督府視角之綜合雜誌');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (335, '臺灣醫學會雜誌', '臺灣醫學會', '1902-1945', 5, 3, '國立臺灣大學圖書館（數位化）', 'JOURNAL-MEDICAL-ASSOC-TW', NULL, 'ja;en;de', '臺灣醫學會發行之學術期刊，為日治時期臺灣醫學研究之最重要學術刊物，刊載熱帶醫學、公共衛生等尖端研究', '醫學;日治;學術;雜誌;熱帶醫學', '日治時期（1902–1945）', '全臺灣', NULL, NULL, NULL, '國立臺灣大學圖書館', '2026-07-30', 'UNCLEAR', '學術期刊需購閱', '僅收錄 metadata', NULL, '日治臺灣醫學研究之最高學術水準');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (336, '臺灣產業雜誌／臺灣之產業組合', '產業組合協會', '1910-1945', 5, 3, '國立臺灣圖書館', 'TW-SANGYO-ZASSHI', NULL, 'ja', '日治時期臺灣產業經濟相關雜誌，刊載農業、工業、商業、金融、合作組合等經濟報導與統計', '產業;經濟;日治;雜誌;統計', '日治時期（1910–1945）', '全臺灣', NULL, NULL, NULL, '國立臺灣圖書館', '2026-07-30', 'UNCLEAR', '國臺圖有典藏', '僅收錄 metadata', NULL, '日治產業經濟報導之主要刊物');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (337, '南方資料（國臺圖）', '臺灣總督府外事部／南方協會', '1935-1945', 5, 3, '國立臺灣圖書館（TSDL）', 'NANPO-SHIRYO', 'https://tsdl.ntl.edu.tw/', 'ja;en', '日治晚期蒐集之南洋（東南亞）相關資料，含調查報告、統計、地圖、寫真等，為日本南進政策之智庫文獻', '南方;南洋;日治;南進;調查', '日治時期（1935–1945）', '臺灣;南洋', NULL, NULL, NULL, '國立臺灣圖書館（數位典藏）', '2026-07-30', 'UNCLEAR', '國臺圖公開查詢', '僅收錄 metadata', NULL, '南方資料為日本南進政策之知識庫');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (338, '臺灣慣習記事', '臺灣慣習研究會', '1901-1907', 5, 3, '國立臺灣圖書館（原件）', 'TW-KANSHU-KIJI', NULL, 'ja', '日治初期臺灣慣習研究會發行之期刊，為最早對臺灣傳統社會慣習進行系統調查與記錄之學術刊物', '慣習;日治;研究;風俗;人類學', '日治時期（1901–1907）', '全臺灣', NULL, '臺灣總督府臨時臺灣舊慣調查會報告', NULL, NULL, '2026-07-30', 'UNCLEAR', '原件國臺圖藏', '僅收錄 metadata', NULL, '日治初期臺灣慣習記錄之珍貴文獻');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (339, '林獻堂《灌園先生日記》', '林獻堂', '1906-1955', 5, 4, '中研院臺史所（數位典藏）', 'LINSIANTANG-DIARY', 'https://tais.ith.sinica.edu.tw/', 'zh;ja', '林獻堂（臺灣民族運動領袖）長達近50年之日記，為日治時期臺灣政治社會史之最珍貴個人史料，橫跨日治至戰後', '林獻堂;日記;日治;民族運動;霧峰林家', '日治時期（1906–1945）', '全臺灣;日本', NULL, NULL, NULL, '中研院臺史所（數位典藏）', '2026-07-30', 'UNCLEAR', '臺史所日記知識庫公開', '已收錄 metadata', NULL, '林獻堂日記為臺灣史上最重要的個人日記');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (340, '黃旺成日記', '黃旺成', '1912-1973', 5, 4, '中研院臺史所（數位典藏）', 'HUANGWANGCHENG-DIARY', 'https://tais.ith.sinica.edu.tw/', 'zh;ja', '臺灣知識分子黃旺成長達60年之日記，為日治至戰後臺灣社會變遷之第一手庶民視角史料', '黃旺成;日記;日治;知識分子;新竹', '日治時期（1912–1945）', '新竹;全臺灣', NULL, NULL, NULL, '中研院臺史所（數位典藏）', '2026-07-30', 'UNCLEAR', '臺史所日記知識庫公開', '已收錄 metadata', NULL, '黃旺成日記為最長之連續臺灣人日記之一');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (341, '吳新榮日記', '吳新榮', '1933-1967', 5, 4, '中研院臺史所（數位典藏）', 'WUXINRONG-DIARY', 'https://tais.ith.sinica.edu.tw/', 'zh;ja', '臺南佳里醫生吳新榮之日記，為日治時期臺灣醫生知識分子日常生活、政治活動、文學創作之珍貴記錄', '吳新榮;日記;日治;醫生;佳里', '日治時期（1933–1945）', '臺南;佳里;全臺灣', NULL, NULL, NULL, '中研院臺史所（數位典藏）', '2026-07-30', 'UNCLEAR', '臺史所日記知識庫公開', '已收錄 metadata', NULL, '臺灣醫生知識分子代表人物');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (342, '臺灣總督府職員錄', '臺灣總督府', '1896-1944', 5, 4, '中研院臺史所（數位化）', 'TAIYU-SHOKUINROKU', 'https://who.ith.sinica.edu.tw/', 'ja', '日治時期臺灣總督府歷年職員名錄全文資料庫，約95萬筆，為日治人物研究之最基本工具', '職員錄;日治;總督府;人物;官員', '日治時期（1896–1944）', '全臺灣', NULL, NULL, NULL, '中研院臺史所（數位典藏）', '2026-07-30', 'UNCLEAR', '中研院線上公開查詢', '已收錄 metadata', NULL, '日治人物研究之百科全書');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (343, '歷任臺灣總督傳記（兒玉源太郎、後藤新平、明石元二郎等）', '學術研究', '1900-2000', 5, 4, '學術專書', 'TOTAL-GOVERNOR-BIO', NULL, 'zh;ja', '歷任臺灣總督之生平、施政與評價之研究傳記，重點人物含樺山資紀、兒玉源太郎、後藤新平（民政長官）、明石元二郎、小林躋造等', '總督;日治;傳記;兒玉;後藤', '日治時期（1895–1945）', '全臺灣', NULL, NULL, '學術出版社散見', NULL, '2026-07-30', 'UNCLEAR', '學術專書需購閱', '僅收錄 metadata', '學術專書', '總督為日治時期權力核心人物');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (344, '蔣渭水傳記與文獻', '蔣渭水', '1916-1931', 5, 4, '中研院臺史所／國立臺灣圖書館', 'CHIANGWEISHUI-BIO', NULL, 'zh;ja', '臺灣文化協會領袖蔣渭水之生平、著作、審判記錄與書信合集，為日治時期臺灣民族運動之人物核心', '蔣渭水;日治;民族運動;文化協會;農民組合', '日治時期（1916–1931）', '全臺灣', NULL, '臺灣社會運動與文化協會檔案', NULL, NULL, '2026-07-30', 'UNCLEAR', '文獻散見', '已收錄 metadata', NULL, '蔣渭水為日治民族運動之最代表性人物');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (345, '賴和作品與傳記', '賴和（賴懶雲）', '1910-1943', 5, 4, '國立臺灣圖書館／學術研究', 'LAIHE-BIO-WORKS', NULL, 'zh;ja', '「臺灣文學之父」賴和之小說、新詩、漢詩、隨筆全集與生平傳記，為日治臺灣文學之代表作家', '賴和;文學;日治;新文學;醫生', '日治時期（1910–1943）', '彰化;全臺灣', NULL, '臺灣文學雜誌群', NULL, NULL, '2026-07-30', 'UNCLEAR', '賴和作品已有全集出版', '已收錄 metadata', '學術研究', '賴和為臺灣新文學運動之開創者');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (346, '連橫與《臺灣通史》', '連橫', '1918-1936', 5, 4, '國立臺灣圖書館（原件）', 'LIANHENG-TAIWAN-HISTORY', NULL, 'zh', '連橫（連雅堂）之生平與《臺灣通史》編纂過程，為日治時期臺灣人自撰之第一部臺灣通史', '連橫;臺灣通史;日治;歷史;民族意識', '日治時期（1918–1936）', '全臺灣', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '《臺灣通史》已有數位版', '已收錄 metadata', NULL, '連橫《臺灣通史》為日治時期臺灣民族意識之史學體現');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (347, '杜聰明傳記', '杜聰明', '1900-1980', 5, 4, '國立臺灣大學／學術研究', 'TU-CONGMING-BIO', NULL, 'zh', '臺灣醫學界代表人物杜聰明（高雄醫學院創辦人）之生平傳記，為日治時期臺灣第一位醫學博士', '杜聰明;醫學;日治;臺北帝大;高醫', '日治時期（1910–1945）', '全臺灣', NULL, NULL, NULL, '國立臺灣大學', '2026-07-30', 'UNCLEAR', '有出版傳記', '已收錄 metadata', '學術研究', '杜聰明為臺灣近代醫學之奠基者');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (348, '臺灣人物評（日治版）', '臺灣新聞社／臺灣通信社', '1915-1945', 5, 4, '國立臺灣圖書館', 'TW-PERSONALITY-EVAL', NULL, 'ja', '日治時期出版之臺灣人物評傳、紳士錄、官民錄等人物誌系列，為日治人物研究之基礎名錄', '人物;評傳;日治;紳士錄;名錄', '日治時期（1915–1945）', '全臺灣', NULL, '臺灣總督府職員錄', NULL, NULL, '2026-07-30', 'UNCLEAR', '國臺圖有原件', '僅收錄 metadata', NULL, '日治臺灣人物誌之總集');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (349, '霧社事件相關人物與口述', '霧社事件關係者／學術研究', '1930-2000', 5, 4, '學術研究與訪談', 'MUSHA-PEOPLE-ORAL', NULL, 'zh;ja', '霧社事件相關人物（莫那·魯道、花岡一郎/二郎、馬紅·莫那等）之生平傳記與口述訪談', '霧社事件;人物;原住民;莫那魯道;賽德克', '日治時期（1930–1945）', '霧社（南投）', NULL, '霧社事件相關檔案', NULL, NULL, '2026-07-30', 'UNCLEAR', '口述訪談散見', '僅收錄 metadata', '學術研究與訪談', '霧社事件人物為臺灣原住民抗日之象徵');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (350, '臺灣基督徒人物與教會史', '臺灣基督長老教會信徒', '1895-1945', 5, 4, '臺灣基督長老教會總會／學術研究', 'TW-CHRISTIAN-FIGURES', NULL, 'zh;ja;en', '日治時期臺灣重要基督徒人物（高俊明、鄭兒玉、黃武東等）之傳記與長老教會發展史料', '基督徒;長老教會;日治;人物;信仰', '日治時期（1895–1945）', '全臺灣', NULL, '馬偕與北臺灣醫療教育史（清領）', NULL, NULL, '2026-07-30', 'UNCLEAR', '教會檔案分散', '僅收錄 metadata', '臺灣基督長老教會總會／學術研究', '基督徒在日治時期社會運動中扮演關鍵角色');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (351, '臺北帝國大學人物與學術傳承', '臺北帝國大學教授群（幣原坦、矢內原忠雄、國分直一等）', '1928-1945', 5, 4, '國立臺灣大學校史館', 'TAIDAI-FIGURES', NULL, 'ja;zh;en', '臺北帝國大學（今國立臺灣大學）創校教授群之學術生平與研究業績，含文政學部與理農學部之各學科奠基者', '臺北帝大;人物;日治;學術;大學', '日治時期（1928–1945）', '臺北', NULL, NULL, NULL, '國立臺灣大學校史館', '2026-07-30', 'UNCLEAR', '校史資料有限公開', '僅收錄 metadata', NULL, '臺北帝大為日治時期臺灣最高學府');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (352, '臺灣實業家傳記（日治時期）', '辜顯榮、林熊徵、顏國年、陳中和、李春生等', '1895-1945', 5, 4, '學術研究', 'TW-BUSINESS-FIGURES-JP', NULL, 'zh;ja', '日治時期臺灣重要實業家（辜顯榮、林熊徵、顏國年、陳中和等）之生平傳記與事業資料，為臺灣資本主義發展之人物側面', '實業家;日治;資本家;企業;人物', '日治時期（1895–1945）', '全臺灣', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '資料分散', '僅收錄 metadata', '學術研究', '日治實業家為臺灣資本主義萌芽之關鍵角色');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (353, '臺灣寫真帖（民間/報社版）', '臺灣寫真帖社／民間出版', '1910-1945', 5, 5, '國家圖書館臺灣記憶／國立臺灣圖書館', 'TW-PHOTO-ALBUM-PRIVATE', 'https://tm.ncl.edu.tw/', 'ja', '日治時期民間出版之臺灣寫真帖系列，較官方版更具庶民生活視角，含風景、產業、風俗、事件等', '寫真帖;日治;民間;照片;庶民', '日治時期（1910–1945）', '全臺灣', NULL, '臺灣寫真帖（總督府官方編纂）', NULL, '國家圖書館（數位化）', '2026-07-30', 'UNCLEAR', '臺灣記憶系統公開瀏覽', '已收錄 metadata', NULL, '民間寫真帖補官方之不足');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (354, '日治時期繪葉書（風景明信片）全集', '多件出版社（生番屋、文明堂等）', '1900-1945', 5, 5, '國家圖書館臺灣記憶／私人收藏', 'TW-EGAKI-POSTCARD', 'https://tm.ncl.edu.tw/', 'ja', '日治時期發行之臺灣繪葉書（風景明信片）合集，為日治臺灣視覺文化之重要載體，題材含風景、建設、原住民、風俗等', '繪葉書;明信片;日治;風景;觀光', '日治時期（1900–1945）', '全臺灣', NULL, NULL, NULL, '國家圖書館（數位化）', '2026-07-30', 'UNCLEAR', '臺灣記憶公開瀏覽', '已收錄 metadata', '私人收藏', '繪葉書為日治時期最大眾化之視覺媒體');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (355, '鳥居龍藏／森丑之助之臺灣原住民寫真', '鳥居龍藏、森丑之助', '1896-1920', 5, 5, '東京大學總合研究博物館／中研院', 'TORII-MORI-ABO-PHOTOS', NULL, 'ja', '人類學者鳥居龍藏與森丑之助在日治初期拍攝之臺灣原住民寫真，為臺灣原住民影像學之最早系統性記錄', '鳥居龍藏;森丑之助;原住民;人類學;寫真', '日治時期（1896–1920）', '全臺灣山地', NULL, '清末臺灣原住民影像資料', NULL, '東京大學（數位典藏）', '2026-07-30', 'UNCLEAR', '海外大學數位版有限', '僅收錄 metadata', '中研院', '人類學視野下之原住民影像經典');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (356, '臺灣都市風景寫真（日治中期）', '多件寫真師', '1920-1940', 5, 5, '國立臺灣圖書館', 'TW-CITY-LANDSCAPE-JP', 'https://tsdl.ntl.edu.tw/', 'ja', '日治中期臺灣主要都市（臺北、臺中、臺南、高雄、基隆、花蓮等）之街景寫真合集，反映市區改正後之現代化市容', '都市;風景;日治;寫真;市區改正', '日治時期（1920–1940）', '全臺灣主要都市', NULL, '臺灣都市計畫圖', NULL, '國立臺灣圖書館（數位典藏）', '2026-07-30', 'UNCLEAR', '國臺圖公開瀏覽', '已收錄 metadata', NULL, '日治都市現代化之視覺證據');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (357, '臺灣產業建設寫真（糖廠/鐵道/港灣/電力）', '臺灣總督府／製糖會社', '1900-1945', 5, 5, '國立臺灣圖書館', 'TW-INDUSTRY-PHOTOS-JP', 'https://tsdl.ntl.edu.tw/', 'ja', '日治時期臺灣產業建設之攝影紀錄，含糖廠、鐵道、港灣、發電所、礦場、工廠等基礎設施影像', '產業;建設;日治;寫真;近代化', '日治時期（1900–1945）', '全臺灣', NULL, NULL, NULL, '國立臺灣圖書館（數位典藏）', '2026-07-30', 'UNCLEAR', '國臺圖公開瀏覽', '已收錄 metadata', NULL, '產業建設寫真為日治經濟發展之視覺證明');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (358, '神社與宗教建築寫真', '臺灣總督府／神社關係者', '1900-1945', 5, 5, '國立臺灣圖書館', 'TW-SHRINE-PHOTOS-JP', 'https://tsdl.ntl.edu.tw/', 'ja', '日治時期臺灣各地神社（臺灣神宮、建功神社、臺南神社等）與日本佛教寺廟之建築寫真', '神社;宗教;日治;寫真;建築', '日治時期（1900–1945）', '全臺灣', NULL, NULL, NULL, '國立臺灣圖書館（數位典藏）', '2026-07-30', 'UNCLEAR', '國臺圖公開瀏覽', '僅收錄 metadata', NULL, '神社建築為日治殖民統治之視覺象徵');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (359, '日治末期戰爭寫真（1937–1945）', '臺灣總督府軍務部／新聞社', '1937-1945', 5, 5, '國立臺灣圖書館／國家圖書館', 'WW2-TAIWAN-PHOTOS', NULL, 'ja', '中日戰爭與太平洋戰爭期間臺灣相關之戰爭寫真，含徵兵送行、防空演習、軍事設施、戰災記錄等', '戰爭;日治;寫真;徵兵;防空', '日治時期（1937–1945）', '全臺灣', NULL, '戰時體制與徵兵相關檔案', NULL, NULL, '2026-07-30', 'UNCLEAR', '照片散見各館', '僅收錄 metadata', NULL, '戰爭寫真為日治末期社會之直接記錄');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (360, '臺灣紀錄電影（日治時期）', '臺灣總督府情報課／電影公司', '1930-1945', 5, 5, '國立臺灣歷史博物館（數位修復）', 'TW-DOCUMENTARY-FILM-JP', 'https://taiwanindex.nmth.gov.tw/', 'ja', '日治時期拍攝之臺灣紀錄電影，含總督府宣傳電影、產業介紹片、原住民紀錄片、時事新聞片等', '紀錄片;日治;電影;宣傳;影像', '日治時期（1930–1945）', '全臺灣', NULL, NULL, NULL, '國立臺灣歷史博物館（數位修復）', '2026-07-30', 'UNCLEAR', '臺史博影音資料庫公開', '僅收錄 metadata', NULL, '日治時期活動影像為視覺史料之最高層級');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (361, '觀光寫真帖與旅行記', '臺灣總督府交通局鐵道部／旅行者', '1910-1945', 5, 5, '國立臺灣圖書館', 'TW-TOURIST-PHOTOS-JP', 'https://tsdl.ntl.edu.tw/', 'ja', '日治時期為推廣觀光所發行之臺灣旅行寫真帖與風景介紹，反映日治觀光政策與臺灣風景名勝之建構', '觀光;日治;寫真帖;旅行;風景點', '日治時期（1910–1945）', '全臺灣', NULL, '臺灣寫真帖（總督府官方編纂）', NULL, '國立臺灣圖書館（數位典藏）', '2026-07-30', 'UNCLEAR', '國臺圖公開瀏覽', '已收錄 metadata', NULL, '觀光寫真為殖民政府塑造臺灣意象之工具');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (362, '1905年臨時臺灣戶口調查', '臺灣總督府', '1905', 5, 6, '國史館臺灣文獻館', 'CENSUS-1905-TW', 'https://onlinearchives.th.gov.tw/', 'ja', '日治時期第一次全臺人口普查，為臺灣史上第一次現代人口普查，含人口數、性別、年齡、婚姻、職業、國籍、本籍等', '戶口調查;日治;人口;統計;1905', '日治時期（1905）', '全臺灣', NULL, NULL, NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '已收錄 metadata', NULL, '臺灣史上第一次科學人口普查');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (363, '1915–1940年國勢調查（第二次至第六次）', '臺灣總督府', '1915-1940', 5, 6, '國史館臺灣文獻館', 'CENSUS-1915-1940-TW', 'https://onlinearchives.th.gov.tw/', 'ja', '日治時期第二次至第六次國勢調查報告，每五年一次，含人口增加率、都市化、行業別、教育程度等連續比較數據', '國勢調查;日治;人口;統計;連續數據', '日治時期（1915–1940）', '全臺灣', NULL, '1905年臨時臺灣戶口調查', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '日治人口統計為亞洲最完善之普查資料');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (364, '臺灣農業基本調查', '臺灣總督府殖產局', '1910-1945', 5, 6, '國史館臺灣文獻館', 'TW-AGRICULTURE-CENSUS', 'https://onlinearchives.th.gov.tw/', 'ja', '日治時期農業相關統計調查，含耕地面積、作物別產量、農戶數、農業人口、灌溉面積等', '農業;統計;日治;米作;甘蔗', '日治時期（1910–1945）', '全臺灣', NULL, NULL, NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '日治農業統計為經濟史之量化基礎');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (365, '臺灣工業統計', '臺灣總督府殖產局', '1915-1945', 5, 6, '國史館臺灣文獻館', 'TW-INDUSTRY-CENSUS', 'https://onlinearchives.th.gov.tw/', 'ja', '日治時期工業統計調查，含工廠數、職工數、動力設備、製造品產額等，反映日治臺灣工業化之進程', '工業;統計;日治;工廠;職工', '日治時期（1915–1945）', '全臺灣', NULL, NULL, NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '日治工業統計見證臺灣由農業轉向工業');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (366, '臺灣林野調查報告', '臺灣總督府殖產局林務課', '1910-1945', 5, 6, '國史館臺灣文獻館', 'TW-FOREST-SURVEY-JP', 'https://onlinearchives.th.gov.tw/', 'ja', '日治時期臺灣森林資源調查報告，含林野面積、林種分布、木材蓄積量、林產物產量等統計', '林野;調查;日治;森林;資源', '日治時期（1910–1945）', '全臺灣山區', NULL, '臺灣總督府殖產局林業檔案', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '日治林野調查為臺灣自然資源之系統盤點');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (367, '臺灣貿易統計（日治時期）', '臺灣總督府財務局／稅關', '1897-1945', 5, 6, '國史館臺灣文獻館', 'TW-TRADE-STATS-JP', 'https://onlinearchives.th.gov.tw/', 'ja', '日治時期臺灣對外貿易統計年報，含輸出入額、主要商品（米、糖、茶、樟腦、香蕉等）、國別貿易等', '貿易;統計;日治;輸出;輸入', '日治時期（1897–1945）', '全臺灣', NULL, NULL, NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '日治貿易統計為臺灣經濟史之核心量化數據');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (368, '臺灣教育統計', '臺灣總督府文教局', '1900-1945', 5, 6, '國史館臺灣文獻館', 'TW-EDUCATION-STATS-JP', 'https://onlinearchives.th.gov.tw/', 'ja', '日治時期教育統計報告，含各級學校數、學生數、教師數、就學率、教育經費等', '教育;統計;日治;學校;就學率', '日治時期（1900–1945）', '全臺灣', NULL, '臺灣總督府公文類纂—教育篇', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '就學率為日治教育成果之最核心指標');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (369, '臺灣醫療與衛生統計', '臺灣總督府警務局衛生課', '1900-1945', 5, 6, '國史館臺灣文獻館', 'TW-HEALTH-STATS-JP', 'https://onlinearchives.th.gov.tw/', 'ja', '日治時期醫療與公共衛生統計報告，含醫療機構數、醫師數、傳染病罹患與死亡數、預防接種等', '醫療;衛生;統計;日治;傳染病', '日治時期（1900–1945）', '全臺灣', NULL, '臺灣總督府傳染病防治檔案', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '日治衛生統計為公共衛生史之基礎');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (370, '臺灣物價與家計調查', '臺灣總督府財務局／警務局', '1910-1945', 5, 6, '國立臺灣圖書館', 'TW-PRICE-STATS-JP', NULL, 'ja', '日治時期物價統計與家計調查報告，含零售物價、薪資水準、生活費指數等，為社會經濟史之連續量化資料', '物價;家計;日治;薪資;生活費', '日治時期（1910–1945）', '全臺灣', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '資料散見統計報告', '僅收錄 metadata', NULL, '日治物價統計為經濟生活水準之指標');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (371, '五十一年來臺灣統計提要', '臺灣總督府', '1894-1945', 5, 6, '中研院（數位化）', 'TW-51YRS-STATS', 'http://twstudy.iis.sinica.edu.tw/twstatistic50/', 'ja', '日治末期臺灣總督府編纂之綜合統計集，含1894–1945年各領域連續統計，為日治臺灣統計之總集成', '統計;日治;綜合;提要;連續數據', '日治時期（1894–1945）', '全臺灣', NULL, NULL, NULL, '中研院（數位化）', '2026-07-30', 'UNCLEAR', '中研院線上公開', '已收錄 metadata', '中研院', '日治統計之最權威總集成');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (372, '臺灣土地調查統計', '臺灣總督府臨時土地調查局', '1900-1910', 5, 6, '國史館臺灣文獻館', 'TW-LAND-SURVEY-STATS', 'https://onlinearchives.th.gov.tw/', 'ja', '日治初期土地調查之統計成果，含田園面積、地目別、業主別、地租額、大租/小租關係等統計', '土地;統計;日治;調查;地租', '日治時期（1900–1910）', '全臺灣', NULL, '臺灣總督府土地調查檔案', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '土地調查統計為日治財政改革之基礎');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (373, '臺灣會社與銀行統計', '臺灣總督府殖產局', '1910-1945', 5, 6, '國立臺灣圖書館', 'TW-COMPANY-BANK-STATS', NULL, 'ja', '日治時期臺灣公司（會社）設立數、資本額、行業別統計與金融機構（銀行、信用組合）業務統計', '會社;銀行;統計;日治;資本', '日治時期（1910–1945）', '全臺灣', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '統計報告散見', '僅收錄 metadata', NULL, '日治會社統計為臺灣資本主義發展之指標');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (374, '鳥居龍藏臺灣考古調查', '鳥居龍藏', '1896-1910', 5, 7, '東京大學總合研究博物館', 'TORII-ARCH-TAIWAN', NULL, 'ja', '人類學家鳥居龍藏在日治初期對臺灣進行的考古調查與發掘，為臺灣近代考古學之發軔，含先史遺址、原住民物質文化等', '鳥居龍藏;考古;日治;人類學;先史', '日治時期（1896–1910）', '全臺灣', NULL, '鳥居龍藏／森丑之助之臺灣原住民寫真', NULL, '東京大學（典藏）', '2026-07-30', 'UNCLEAR', '海外大學數位版有限', '僅收錄 metadata', NULL, '鳥居龍藏為臺灣近代考古學之先驅');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (375, '鹿野忠雄臺灣考古與人類學研究', '鹿野忠雄', '1920-1945', 5, 7, '學術出版／中研院臺史所', 'KANO-ARCH-TAIWAN', NULL, 'ja', '日治晚期學者鹿野忠雄對臺灣之考古、人類學、地理學綜合研究，含「臺灣先史時代」分類體系、高山族調查、東部考古等', '鹿野忠雄;考古;日治;先史;人類學', '日治時期（1920–1945）', '全臺灣（山地為主）', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '鹿野著作有中譯本', '僅收錄 metadata', '學術出版', '鹿野忠雄為臺灣考古學之集大成者');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (376, '日治時期遺址發現與調查', '臺灣總督府／臺北帝國大學', '1928-1945', 5, 7, '學術報告', 'JP-ERA-SITE-SURVEY', NULL, 'ja', '日治時期由臺北帝國大學主導之臺灣考古遺址調查發掘報告，含圓山遺址、芝山岩遺址、大坌坑遺址等', '遺址;考古;日治;臺北帝大;調查', '日治時期（1928–1945）', '全臺灣', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '發掘報告散見學術刊物', '僅收錄 metadata', '學術報告', '日治時期為臺灣考古學之奠基年代');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (377, '臺灣原住民物質文化調查（日治時期）', '臺灣總督府／人類學者', '1900-1945', 5, 7, '中研院臺史所／學術出版', 'JP-ABO-MATERIAL', NULL, 'ja', '日治時期人類學者對臺灣原住民物質文化（衣飾、建築、器具、武器、祭儀用品等）之系統調查與收藏記錄', '原住民;物質文化;日治;人類學;博物館', '日治時期（1900–1945）', '全臺灣', NULL, '鳥居龍藏／森丑之助之臺灣原住民寫真', NULL, NULL, '2026-07-30', 'UNCLEAR', '標本分散國內外博物館', '僅收錄 metadata', '學術出版', '日治原住民物質文化收藏為世界級人類學資產');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (378, '日治時期臺灣建築遺構調查', '學術研究團隊', '2000-2020', 5, 7, '學術報告／古蹟調查', 'JP-BUILDING-ARCH-TW', NULL, 'zh;ja', '日治時期建築（總督府、官舍、車站、醫院、學校、神社、糖廠等）之建築考古與文化資產調查研究', '建築;日治;古蹟;文化資產;調查', '日治時期（1895–1945）', '全臺灣', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '古蹟調查報告散布', '僅收錄 metadata', '學術報告／古蹟調查', '日治建築為臺灣文化遺產之重要組成');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (379, '日治時期產業遺址考古（糖廠/鐵道/礦業）', '學術研究團隊', '2000-2020', 5, 7, '學術報告', 'JP-INDUSTRY-ARCH-TW', NULL, 'zh', '日治時期產業設施（橋仔頭糖廠、阿里山森林鐵道、金瓜石金礦、基隆港等）之產業考古與遺址保存研究', '產業考古;日治;糖廠;鐵道;礦業', '日治時期（1900–1945）', '全臺灣', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '產業考古學新興領域', '僅收錄 metadata', '學術報告', '產業遺址為日治經濟發展之物質證據');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (380, '日治時期碑碣集成', '中研院臺灣史研究所碑碣資料庫', '1895-1945', 5, 8, '中研院臺灣史研究所碑碣資料庫', 'ITH-RUB-JP', 'https://rub.ith.sinica.edu.tw/', 'ja;zh', '中研院臺史所碑碣資料庫收錄之日治時期碑碣拓本，含神社碑、公共工程碑、學校碑、墓誌銘等', '碑碣;日治;拓本;中研院;碑文', '日治時期（1895–1945）', '全臺灣', NULL, NULL, '中研院臺灣史研究所', '中研院臺史所（數位典藏）', '2026-07-30', 'UNCLEAR', '資料庫公開查詢', '已收錄 metadata', NULL, '日治碑碣為殖民統治之物質見證');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (381, '臺灣神社與宗教碑記', '臺灣總督府／神社關係者', '1900-1945', 5, 8, '中研院臺史所碑碣資料庫', 'TW-SHRINE-STELE', 'https://rub.ith.sinica.edu.tw/', 'ja', '日治時期臺灣各地神社（臺灣神宮、建功神社、宜蘭神社、臺南神社等）之碑記與建築碑文', '神社;碑記;日治;宗教;建築', '日治時期（1900–1945）', '全臺灣', NULL, '日治時期碑碣集成', NULL, '中研院臺史所（數位典藏）', '2026-07-30', 'UNCLEAR', '資料庫公開查詢', '已收錄 metadata', NULL, '神社碑記為日治國家神道之殖民體現');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (382, '日治時期公共工程紀念碑', '臺灣總督府內務局／地方官', '1900-1945', 5, 8, '中研院臺史所碑碣資料庫／田野', 'JP-PUBLIC-WORKS-STELE', 'https://rub.ith.sinica.edu.tw/', 'ja;zh', '日治時期各項公共工程（鐵路竣工、水庫落成、港灣開港、道路開通等）之紀念碑記', '紀念碑;日治;公共工程;建設;竣工', '日治時期（1900–1945）', '全臺灣', NULL, '日治時期碑碣集成', NULL, '中研院臺史所（數位典藏）', '2026-07-30', 'UNCLEAR', '資料庫公開查詢', '已收錄 metadata', NULL, '公共工程紀念碑為日治建設成果之自我宣傳');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (383, '日治時期墓誌銘選輯', '日治時期臺灣住民', '1895-1945', 5, 8, '中研院臺史所碑碣資料庫／田野調查', 'JP-EPITAPH-TW', 'https://rub.ith.sinica.edu.tw/', 'ja;zh', '日治時期臺灣漢人、日本人之墓誌銘與墓碑拓本選輯，為社會史與家族史之重要石刻史料', '墓誌銘;墓碑;日治;家族;墓葬', '日治時期（1895–1945）', '全臺灣', NULL, '日治時期碑碣集成', NULL, '中研院臺史所（數位典藏）', '2026-07-30', 'UNCLEAR', '資料庫公開查詢', '僅收錄 metadata', '田野調查', '墓誌銘為人物史之直接史料');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (384, '日治時期學校創立紀念碑', '臺灣總督府文教局／地方官', '1898-1945', 5, 8, '中研院臺史所碑碣資料庫', 'JP-SCHOOL-STELE', 'https://rub.ith.sinica.edu.tw/', 'ja;zh', '日治時期各級學校（公學校、小學校、實業學校、師範學校等）之創立紀念碑與校碑', '學校;碑記;日治;教育;創立', '日治時期（1898–1945）', '全臺灣', NULL, '日治時期碑碣集成', NULL, '中研院臺史所（數位典藏）', '2026-07-30', 'UNCLEAR', '資料庫公開查詢', '已收錄 metadata', NULL, '學校紀念碑見證日治教育設施之擴張');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (385, '中研院臺史所日治時期口述訪談叢書', '中研院臺灣史研究所', '1980-2020', 5, 9, '中研院臺灣史研究所', 'ITH-ORAL-HISTORY-JP', 'https://tais.ith.sinica.edu.tw/', 'zh;ja', '中研院臺史所出版之日治時期口述歷史訪談叢書系列，含政治運動者、實業家、醫生、教師等各階層人物之生命史', '口述歷史;日治;中研院;訪談;生命史', '日治時期（1895–1945）', '全臺灣', NULL, NULL, '中研院臺灣史研究所', NULL, '2026-07-30', 'UNCLEAR', '出版品需購閱', '僅收錄 metadata', NULL, '日治時期口述為文字史料之重要互補');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (386, '二二八受難者之日治時期經驗口述', '二二八事件紀念基金會／國家人權博物館', '1990-2020', 5, 9, '二二八事件紀念基金會／國家人權博物館', '228-ORAL-JP-EXPERIENCE', NULL, 'zh', '二二八事件受難者與家屬口述訪談中關於日治時期教育、社會生活、皇民化、戰時經驗等前階段經歷', '二二八;口述;日治;受難者;戰時經驗', '日治時期（1920–1945）', '全臺灣', NULL, NULL, NULL, '國家人權博物館', '2026-07-30', 'UNCLEAR', '口述訪談紀錄有出版', '僅收錄 metadata', NULL, '二二八事件之前因可追溯至日治時期社會結構');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (387, '臺灣老兵口述（日治徵兵與戰後）', '國史館／學術研究', '1990-2020', 5, 9, '國史館／學術出版', 'TW-VETERAN-ORAL-JP', NULL, 'zh;ja', '曾在日軍中服役之臺灣老兵（含高砂義勇隊、軍屬、通譯等）之日治徵兵經驗與戰後處境口述訪談', '老兵;日治;徵兵;高砂義勇隊;口述', '日治時期（1937–1945）', '全臺灣;南洋', NULL, '戰時體制與徵兵相關檔案', NULL, '國史館', NULL, '2026-07-30', 'UNCLEAR', '口述紀錄部分已出版', '國史館／學術出版', '僅收錄 metadata');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (388, '慰安婦口述歷史', '臺籍慰安婦／婦女救援基金會／學術研究', '1990-2020', 5, 9, '婦女救援基金會／學術出版', 'COMFORT-WOMEN-ORAL-TW', NULL, 'zh;ja', '日治時期被迫成為慰安婦之臺灣女性口述訪談紀錄，為日治戰爭性暴力之最直接見證', '慰安婦;日治;口述;女性;戰爭暴力', '日治時期（1937–1945）', '全臺灣;南洋', NULL, '戰時體制與徵兵相關檔案', NULL, '婦女救援基金會', NULL, '2026-07-30', 'UNCLEAR', '部分訪談紀錄已出版', '學術出版', '僅收錄 metadata');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (389, '原住民日治經驗口述（霧社／理蕃政策）', '學術研究團隊', '1990-2020', 5, 9, '學術出版／原住民團體', 'ABORIGINAL-JP-ORAL', NULL, 'zh;ja', '臺灣原住民對日治時期理蕃政策、集團移住、教育、勞動服務、霧社事件等之口述歷史訪談', '原住民;日治;口述;理蕃;霧社', '日治時期（1895–1945）', '全臺灣原住民部落', NULL, '霧社事件相關人物與口述', NULL, NULL, '2026-07-30', 'UNCLEAR', '訪談資料散見學術文獻', '僅收錄 metadata', '學術出版／原住民團體', '原住民口述補官方文書之片面視角');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (390, '農民運動與左翼運動口述', '學術研究團隊', '1980-2020', 5, 9, '中研院臺史所／學術出版', 'FARMER-LEFT-ORAL-JP', NULL, 'zh;ja', '日治時期臺灣農民組合、工友總聯盟、左翼政治運動參與者之後續口述訪談，為社會運動史之直接見證', '農民運動;左翼;日治;口述;社會運動', '日治時期（1925–1937）', '全臺灣', NULL, '臺灣社會運動與文化協會檔案', NULL, NULL, '2026-07-30', 'UNCLEAR', '訪談資料有限', '僅收錄 metadata', '學術出版', '左翼運動口述為日治社會史之珍貴補充');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (391, '日治時期教育體驗口述', '教育史學者', '2000-2020', 5, 9, '學術研究', 'JP-EDUCATION-ORAL', NULL, 'zh;ja', '經歷過日治時期公學校、小學校、實業學校、師範教育之臺灣人對當時教育制度、教學內容、日常生活的口述回憶', '教育;日治;口述;學校;公學校', '日治時期（1900–1945）', '全臺灣', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '訪談資料散見', '僅收錄 metadata', '學術研究', '教育口述為量化統計之質性補充');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (392, '臺灣製糖株式會社史', '臺灣製糖株式會社', '1900-1945', 5, 10, '國立臺灣圖書館（原件）', 'TW-SUGAR-CORP-HISTORY', NULL, 'ja', '第一家在臺設立之現代化製糖會社（1900年成立，橋仔頭工場）之社史、工場記錄、經營資料', '製糖;日治;會社;橋仔頭;精糖', '日治時期（1900–1945）', '全臺灣', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '社史國臺圖有藏', '僅收錄 metadata', NULL, '臺灣製糖為日治時期臺灣最大企業');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (393, '明治製糖／鹽水港製糖會社史', '明治製糖／鹽水港製糖', '1900-1945', 5, 10, '國立臺灣圖書館', 'MEIJI-ENSUIKO-SUGAR', NULL, 'ja', '明治製糖（1906年成立）與鹽水港製糖（1907年成立）之社史與工場資料，為日治三大製糖會社之二', '製糖;日治;明治製糖;鹽水港;會社', '日治時期（1906–1945）', '全臺灣', NULL, '臺灣製糖株式會社史', NULL, NULL, '2026-07-30', 'UNCLEAR', '社史國臺圖有藏', '僅收錄 metadata', NULL, '三大製糖會社壟斷日治臺灣糖業');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (394, '蓬萊米育成與農業改良', '臺灣總督府中央研究所農業部', '1920-1945', 5, 10, '國立臺灣大學／學術研究', 'HORAI-RICE-DEVELOP', NULL, 'ja;en', '日治中期成功育成蓬萊米之過程與推廣史料，為日治農業改良之最大成就，徹底改變臺灣米作與農家經濟', '蓬萊米;農業;日治;品種改良;米作', '日治時期（1920–1945）', '全臺灣', NULL, '臺灣總督府中央研究所檔案', NULL, NULL, '2026-07-30', 'UNCLEAR', '研究報告散見', '僅收錄 metadata', '學術研究', '蓬萊米為日治農業科學之最高成就');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (395, '嘉南大圳與烏山頭水庫', '八田與一／臺灣總督府內務局', '1920-1930', 5, 10, '國立臺灣圖書館／學術研究', 'CHIANAN-CANAL', NULL, 'ja;zh', '嘉南大圳（1920年開工、1930年竣工）與烏山頭水庫之規劃、施工、營運史料，為日治最大水利工程', '嘉南大圳;烏山頭;八田與一;水利;日治', '日治時期（1920–1930）', '嘉義;臺南', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '有八田與一相關史料館', '已收錄 metadata', '學術研究', '嘉南大圳為日治時期亞洲最大水利工程之一');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (396, '日月潭水力發電所', '臺灣電力株式會社', '1919-1934', 5, 10, '國立臺灣圖書館／學術研究', 'SUNMOON-LAKE-POWER', NULL, 'ja;zh', '日月潭水力發電所（1919年動工、1934年竣工）之建設歷程與營運史料，為日治最大電力工程', '日月潭;發電;日治;電力;水力', '日治時期（1919–1934）', '日月潭;南投;臺中', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '建設報告國臺圖有藏', '僅收錄 metadata', '學術研究', '日月潭發電所為臺灣電力現代化之里程碑');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (397, '臺灣電力株式會社史料', '臺灣電力株式會社', '1919-1945', 5, 10, '國立臺灣圖書館', 'TW-POWER-CORP-HISTORY', NULL, 'ja', '臺灣電力株式會社（1919年成立）之社史、電氣事業年報、供電區域統計等，為日治臺灣動力化之核心', '電力;日治;會社;電氣;動力化', '日治時期（1919–1945）', '全臺灣', NULL, '日月潭水力發電所', NULL, NULL, '2026-07-30', 'UNCLEAR', '社史與年報國臺圖有藏', '僅收錄 metadata', NULL, '臺灣電力為日治產業發展之基礎設施');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (398, '臺灣銀行史', '臺灣銀行', '1899-1945', 5, 10, '國立臺灣圖書館（原件）', 'TW-BANK-HISTORY-JP', NULL, 'ja', '臺灣銀行（1899年設立，日治時期臺灣中央銀行）之社史、業務報告、紙幣發行、匯兌、金融政策等史料', '臺灣銀行;日治;金融;銀行;貨幣', '日治時期（1899–1945）', '全臺灣;海外', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '社史國臺圖有藏', '僅收錄 metadata', NULL, '臺灣銀行為日治臺灣金融體系之核心');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (399, '臺灣鐵道史（日治時期）', '臺灣總督府鐵道部', '1906-1945', 5, 10, '國立臺灣圖書館（原件）', 'TW-RAILWAY-HISTORY-JP', NULL, 'ja', '臺灣總督府鐵道部編纂之臺灣鐵道史，含縱貫鐵道建設、營運、沿線開發等完整記錄', '鐵道;日治;縱貫線;鐵路;運輸', '日治時期（1899–1945）', '全臺灣', NULL, '臺灣鐵道部檔案', NULL, NULL, '2026-07-30', 'UNCLEAR', '鐵道史刊本國臺圖有藏', '僅收錄 metadata', NULL, '臺灣鐵道史為日治交通建設之權威記錄');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (400, '基隆港與高雄港建設史料', '臺灣總督府內務局土木課', '1900-1945', 5, 10, '國史館臺灣文獻館', 'KEELUNG-KAOHSIUNG-PORT', 'https://onlinearchives.th.gov.tw/', 'ja', '日治時期基隆港（近代化改修）與高雄港（打狗港築港）之港灣建設工程相關公文與設計圖', '港灣;日治;基隆;高雄;築港', '日治時期（1900–1945）', '基隆;高雄', NULL, NULL, NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '基隆高雄雙港為日治臺灣對外門戶');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (401, '金瓜石金礦與瑞芳礦業', '金瓜石礦山／日本礦業會社', '1896-1945', 5, 10, '國立臺灣圖書館／新北市立黃金博物館', 'CHINKUASHIH-GOLD', NULL, 'ja;en', '日治時期金瓜石金礦（東亞最大金礦之一）之採礦史料，含礦業權、產金量、礦工、礦業技術等', '金礦;日治;金瓜石;瑞芳;礦業', '日治時期（1896–1945）', '金瓜石;瑞芳（新北）', NULL, NULL, NULL, '新北市立黃金博物館', '2026-07-30', 'UNCLEAR', '黃金博物館有數位資料', '僅收錄 metadata', NULL, '金瓜石為日治時期臺灣礦業之巔峰');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (402, '日治時期臺灣茶業', '臺灣總督府殖產局／茶商', '1900-1945', 5, 10, '國立臺灣圖書館／學術研究', 'JP-TEA-INDUSTRY-TW', NULL, 'ja;en', '日治時期臺灣茶業（包種茶、紅茶為主）之生產、檢驗、出口與東亞市場史料，臺灣茶業在日治進入全盛期', '茶業;日治;包種茶;紅茶;出口', '日治時期（1900–1945）', '臺北;桃園;新竹', NULL, '清末臺灣茶葉相關史料', NULL, NULL, '2026-07-30', 'UNCLEAR', '茶業檔案分散', '僅收錄 metadata', '學術研究', '日治臺灣茶業產量與品質居世界前茅');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (403, '臺灣專賣制度史（樟腦/菸/酒/鹽/鴉片）', '臺灣總督府專賣局', '1900-1945', 5, 10, '國史館臺灣文獻館／學術研究', 'TW-SEMBAI-HISTORY', 'https://onlinearchives.th.gov.tw/', 'ja', '日治時期臺灣專賣制度之綜合史料，含樟腦、菸草、酒類、食鹽、鴉片、火柴、石油等專賣品之產銷制度與財政貢獻', '專賣;日治;樟腦;菸酒;財政', '日治時期（1900–1945）', '全臺灣', NULL, '專賣局檔案—鴉片專賣', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', '學術研究', '專賣收入佔總督府歲入之40%以上');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (404, '臺灣農會與產業組合史料', '臺灣總督府殖產局', '1900-1945', 5, 10, '國立臺灣圖書館／學術研究', 'TW-FARMER-ASSOC-JP', NULL, 'ja', '日治時期臺灣農會、產業組合（農業合作社）、信用組合之設立與營運史料，為臺灣農村社會之基層經濟組織', '農會;產業組合;日治;合作社;農村', '日治時期（1900–1945）', '全臺灣', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '資料分散', '僅收錄 metadata', '學術研究', '產業組合為日治臺灣農村金融之骨幹');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (405, '臺灣省五十一年來統計提要（經濟篇）', '臺灣總督府', '1945', 5, 10, '中研院（數位化）', 'TW-51YRS-ECON', 'http://twstudy.iis.sinica.edu.tw/twstatistic50/', 'ja', '日治末期編纂之經濟綜合統計，含農業、工業、礦業、商業、貿易、金融、交通等各領域連續經濟數據', '經濟;統計;日治;綜合;產業', '日治時期（1894–1945）', '全臺灣', NULL, '五十一年來臺灣統計提要', NULL, '中研院（數位化）', '2026-07-30', 'UNCLEAR', '中研院線上公開', '已收錄 metadata', '中研院', '日治經濟統計為臺灣經濟史之總數據庫');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (406, '臺灣都市計畫與市區改正史料', '臺灣總督府內務局土木課', '1900-1945', 5, 10, '國史館臺灣文獻館', 'TW-URBAN-PLAN-HISTORY', 'https://onlinearchives.th.gov.tw/', 'ja', '日治時期臺灣主要都市之市區改正（都市計畫）相關公文，含道路擴寬、公園設置、下水道、土地重劃等', '都市計畫;日治;市區改正;土地重劃;土木', '日治時期（1900–1945）', '全臺灣', NULL, '臺灣都市計畫圖', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '日治都市計畫為戰後都市發展之框架');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (407, '臺灣觀光與旅行業史料', '臺灣總督府交通局鐵道部', '1910-1945', 5, 10, '國立臺灣圖書館', 'TW-TOURISM-JP', NULL, 'ja', '日治時期臺灣觀光事業之發展史料，含鐵道部主辦之團體旅行、觀光旅館、風景區開發、旅行指南等', '觀光;日治;旅行;鐵道部;風景區', '日治時期（1910–1945）', '全臺灣', NULL, '觀光寫真帖與旅行記', NULL, NULL, '2026-07-30', 'UNCLEAR', '圖文資料分散', '僅收錄 metadata', NULL, '日治觀光為殖民政府展示統治成果之工具');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (408, '臺灣水產業與漁業史料', '臺灣總督府殖產局水產課', '1900-1945', 5, 10, '國史館臺灣文獻館', 'TW-FISHERY-JP', 'https://onlinearchives.th.gov.tw/', 'ja', '日治時期臺灣漁業之近代化史料，含漁船動力化、漁港建設（基隆、高雄、蘇澳等）、水產試驗、遠洋漁業等', '漁業;水產;日治;漁港;遠洋', '日治時期（1900–1945）', '全臺灣沿海', NULL, NULL, NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '日治漁業現代化為戰後遠洋漁業之基礎');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (409, '臺灣勞工運動與勞動條件史料', '臺灣總督府警務局／工友總聯盟', '1920-1945', 5, 10, '國史館臺灣文獻館／學術研究', 'TW-LABOR-MOVEMENT-JP', 'https://onlinearchives.th.gov.tw/', 'ja;zh', '日治時期臺灣勞工運動及勞動條件相關史料，含工友總聯盟活動、工資統計、勞動爭議、工廠法規等', '勞工;日治;運動;工會;勞動條件', '日治時期（1920–1945）', '全臺灣', NULL, '臺灣社會運動與文化協會檔案', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '檔案分散', '僅收錄 metadata', '學術研究', '勞工運動為日治社會運動三大支柱之一');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (410, '臺灣會社與產業組合統計', '臺灣總督府殖產局', '1910-1945', 5, 10, '國立臺灣圖書館', 'TW-CORP-STATS-JP', NULL, 'ja', '日治時期臺灣公司（會社）登記數、資本額、行業別、設立年份之連續統計資料', '會社;統計;日治;資本;企業', '日治時期（1910–1945）', '全臺灣', NULL, NULL, NULL, NULL, '2026-07-30', 'UNCLEAR', '統計資料散見', '僅收錄 metadata', NULL, '會社統計為臺灣經濟現代化之量化指標');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (411, '臺灣專賣品產銷統計', '臺灣總督府專賣局', '1900-1945', 5, 10, '國史館臺灣文獻館', 'TW-SEMBAI-STATS-JP', 'https://onlinearchives.th.gov.tw/', 'ja', '日治時期各專賣品（樟腦、菸草、酒類、食鹽、鴉片）之生產量、銷售量、收入之連續統計', '專賣;統計;日治;樟腦;鴉片', '日治時期（1900–1945）', '全臺灣', NULL, '臺灣專賣制度史', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '專賣品統計為總督府財政研究之基本數據');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (412, '臺灣工業化與軍需工業（1930–1945）', '臺灣總督府殖產局', '1930-1945', 5, 10, '國史館臺灣文獻館', 'TW-WAR-INDUSTRY-JP', 'https://onlinearchives.th.gov.tw/', 'ja', '1930年代後期至戰末期臺灣工業化加速與軍需工業相關史料，含鋁業、造船、化學工業、機械工業等', '工業;軍需;日治;戰時;鋁業', '日治時期（1930–1945）', '全臺灣', NULL, NULL, NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '戰時工業化為戰後臺灣工業之基礎');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (413, '臺北帝國大學沿革', '臺北帝國大學', '1928-1945', 5, 11, '國立臺灣大學校史館', 'TAIDAI-HISTORY', 'https://www.lib.ntu.edu.tw/', 'ja;zh', '日治時期臺灣最高學府臺北帝國大學（1928年創立）之創校沿革、學部學科、教授陣容、學術研究等史料', '臺北帝大;大學;日治;高等教育;學術', '日治時期（1928–1945）', '臺北', NULL, '臺北帝國大學人物與學術傳承', NULL, '國立臺灣大學校史館', '2026-07-30', 'UNCLEAR', '校史館部分公開', '已收錄 metadata', NULL, '臺北帝大為日治臺灣學術之最高峰');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (414, '臺灣總督府醫學校與醫學教育', '臺灣總督府醫學校', '1899-1945', 5, 11, '國立臺灣大學醫學院', 'TW-MEDICAL-SCHOOL-JP', NULL, 'ja;zh', '臺灣總督府醫學校（1899年創立，臺大醫學院前身）之沿革、課程、師生與公共衛生貢獻史料', '醫學;教育;日治;醫學校;醫師', '日治時期（1899–1945）', '臺北', NULL, '臺北帝國大學沿革', NULL, '國立臺灣大學醫學院', '2026-07-30', 'UNCLEAR', '校史資料有限公開', '已收錄 metadata', NULL, '臺灣現代醫學教育之起源');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (415, '臺灣教育令與教育制度沿革', '臺灣總督府文教局', '1919-1945', 5, 11, '國史館臺灣文獻館', 'TW-EDUCATION-ORDINANCE', 'https://onlinearchives.th.gov.tw/', 'ja', '1919年第一次臺灣教育令、1922年第二次教育令至1941年國民學校令之教育制度變革相關公文', '教育令;日治;學校制度;內臺共學;國民學校', '日治時期（1919–1945）', '全臺灣', NULL, '臺灣總督府公文類纂—教育篇', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '教育令為日治教育制度之法律框架');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (416, '公學校與國民學校制度', '臺灣總督府文教局', '1898-1945', 5, 11, '國史館臺灣文獻館', 'TW-KO-GAKKO', 'https://onlinearchives.th.gov.tw/', 'ja', '日治時期臺灣人子弟就讀之公學校（1898年創設，後改為國民學校）相關史料，含學校設立、課程、教科書、教員等', '公學校;國民學校;日治;初等教育;臺灣人', '日治時期（1898–1945）', '全臺灣', NULL, '臺灣教育令與教育制度沿革', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '公學校為日治臺灣人教育之最主要場域');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (417, '師範教育史料', '臺灣總督府文教局', '1899-1945', 5, 11, '國立臺灣圖書館', 'TW-TEACHER-TRAINING-JP', NULL, 'ja', '日治時期臺灣師範教育（國語學校師範部→臺北/臺中/臺南師範學校）之發展沿革史料', '師範;教育;日治;教師;教員養成', '日治時期（1899–1945）', '臺北;臺中;臺南', NULL, NULL, NULL, '國立臺灣圖書館', '2026-07-30', 'UNCLEAR', '教育資料分散', '僅收錄 metadata', NULL, '師範教育為日治教育質量之關鍵');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (418, '實業教育與職業學校', '臺灣總督府文教局／殖產局', '1900-1945', 5, 11, '國史館臺灣文獻館', 'TW-VOCATIONAL-EDU-JP', 'https://onlinearchives.th.gov.tw/', 'ja', '日治時期實業教育（農業學校、工業學校、商業學校、水產學校等）之設立與發展史料', '實業教育;日治;職業學校;農業;工業', '日治時期（1900–1945）', '全臺灣', NULL, NULL, NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '實業教育為日治培養技術人力之管道');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (419, '社會教育與同化教育史料', '臺灣總督府文教局', '1910-1945', 5, 11, '國史館臺灣文獻館', 'TW-SOCIAL-EDU-JP', 'https://onlinearchives.th.gov.tw/', 'ja', '日治時期社會教育（國語普及、夜學會、圖書館、博物館、通俗教育等）與同化政策之相關公文', '社會教育;同化;日治;國語;通俗教育', '日治時期（1910–1945）', '全臺灣', NULL, '皇民化運動相關檔案', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '社會教育為皇民化運動之重要工具');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (420, '臺灣總督府醫療體系與公醫制度', '臺灣總督府警務局衛生課', '1895-1945', 5, 11, '國史館臺灣文獻館', 'TW-GOVERNMENT-HOSPITAL-JP', 'https://onlinearchives.th.gov.tw/', 'ja', '日治時期臺灣醫療體系之建立史料，含總督府醫院、公醫制度、衛生試驗、醫藥品管理、醫療人材養成等', '醫療;日治;醫院;公醫;衛生', '日治時期（1895–1945）', '全臺灣', NULL, '臺灣總督府醫學校與醫學教育', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '日治醫療體系為臺灣近代醫療之基礎');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (421, '臺灣特殊疾病防治（瘧疾/鼠疫/結核）', '臺灣總督府警務局衛生課／中央研究所', '1900-1945', 5, 11, '國史館臺灣文獻館／學術研究', 'TW-DISEASE-CONTROL-JP', 'https://onlinearchives.th.gov.tw/', 'ja', '日治時期瘧疾、鼠疫、結核等重大傳染病之防治史料，含檢疫、蚊蟲驅除、隔離治療、預防接種等公共衛生措施', '瘧疾;鼠疫;結核;日治;公共衛生', '日治時期（1900–1945）', '全臺灣', NULL, '臺灣總督府傳染病防治檔案', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', '學術研究', '瘧疾防治為日治衛生最大成就之一');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (422, '臺北帝國大學附屬醫院', '臺北帝國大學醫學部', '1937-1945', 5, 11, '國立臺灣大學醫學院附設醫院', 'TAIDAI-HOSPITAL', NULL, 'ja;zh', '臺北帝國大學附屬醫院（今臺大醫院）之創設、醫療服務、醫學研究、醫師培訓等史料', '臺大醫院;日治;醫療;醫學;大學病院', '日治時期（1937–1945）', '臺北', NULL, '臺北帝國大學沿革', NULL, '國立臺灣大學醫學院', '2026-07-30', 'UNCLEAR', '院史資料有限公開', '僅收錄 metadata', NULL, '臺大醫院為日治時期臺灣醫療之最高水準');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (423, '日治時期護理與助產教育', '臺灣總督府警務局衛生課', '1900-1945', 5, 11, '國史館臺灣文獻館／學術研究', 'TW-NURSING-EDU-JP', NULL, 'ja', '日治時期護士（看護婦）與助產士（產婆）之養成教育與證照制度史料', '護理;助產;日治;教育;女性', '日治時期（1900–1945）', '全臺灣', NULL, '臺灣總督府醫療體系與公醫制度', NULL, NULL, '2026-07-30', 'UNCLEAR', '史料有限', '僅收錄 metadata', '學術研究', '護理教育為日治女性專業教育之典範');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (424, '幼稚園與學前教育史料', '臺灣總督府文教局', '1900-1945', 5, 11, '國史館臺灣文獻館', 'TW-KINDERGARTEN-JP', 'https://onlinearchives.th.gov.tw/', 'ja', '日治時期臺灣幼稚園（幼兒園）之創設與學前教育相關史料，反映殖民統治下之教育完整性', '幼稚園;學前教育;日治;幼兒;教育', '日治時期（1900–1945）', '全臺灣', NULL, '臺灣教育令與教育制度沿革', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '幼稚園為日治教育體系之最底層');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (425, '臺灣氣象觀測資料（1897–1945）', '臺灣總督府中央研究所／氣象臺', '1897-1945', 5, 12, '中央氣象局／中研院', 'TW-CLIMATE-DATA-JP', NULL, 'ja;en', '日治時期臺灣各測候所（氣象站）之逐日氣溫、雨量、氣壓、風向風速等氣象觀測數據，為臺灣最早之連續科學氣象記錄', '氣象;日治;氣候;觀測;測候所', '日治時期（1897–1945）', '全臺灣', NULL, NULL, NULL, '中央氣象局', NULL, '2026-07-30', 'UNCLEAR', '原始數據需洽氣象局', '中研院', '僅收錄 metadata');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (426, '1935年新竹臺中大地震', '臺灣總督府', '1935', 5, 12, '國史館臺灣文獻館', '1935-EARTHQUAKE', 'https://onlinearchives.th.gov.tw/', 'ja', '1935年4月21日新竹臺中大地震（死傷約1.5萬人，為臺灣史上死傷最慘重之地震）之相關公文、災害調查報告與重建記錄', '地震;1935;日治;災害;新竹;臺中', '日治時期（1935）', '新竹;臺中;苗栗', NULL, NULL, NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '1935年地震為臺灣史上死傷最慘之自然災害');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (427, '日治時期天然災害記錄（颱風/洪水/地震/乾旱）', '臺灣總督府內務局／警務局', '1896-1945', 5, 12, '國史館臺灣文獻館', 'JP-DISASTER-RECORDS', 'https://onlinearchives.th.gov.tw/', 'ja', '日治時期臺灣天然災害（颱風、洪水、地震、乾旱、寒害等）之官方災害報告與救災記錄', '自然災害;日治;颱風;洪水;地震', '日治時期（1896–1945）', '全臺灣', NULL, '1935年新竹臺中大地震', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '日治災害記錄為氣候災害研究之系統數據');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (428, '臺灣森林調查與林業試驗', '臺灣總督府殖產局林務課／林業試驗場', '1911-1945', 5, 12, '國史館臺灣文獻館', 'TW-FOREST-RESEARCH-JP', 'https://onlinearchives.th.gov.tw/', 'ja', '日治時期臺灣森林資源調查與林業試驗（含熱帶林、針葉林、竹林等之生態研究）之學術報告', '森林;林業;日治;試驗;生態', '日治時期（1911–1945）', '全臺灣山區', NULL, '臺灣總督府殖產局林業檔案', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '日治林業試驗為臺灣森林生態學之奠基');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (429, '臺灣水資源調查與水利工程', '臺灣總督府內務局土木課', '1900-1945', 5, 12, '國史館臺灣文獻館', 'TW-WATER-RESOURCE-JP', 'https://onlinearchives.th.gov.tw/', 'ja;en', '日治時期臺灣水資源調查（河川流量、地下水、灌溉用水）與水利工程（水庫、圳路、防洪）相關技術報告', '水資源;水利;日治;河川;水庫', '日治時期（1900–1945）', '全臺灣', NULL, '嘉南大圳與烏山頭水庫', NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '日治水利工程為臺灣水資源管理之基礎');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (430, '臺灣土壤調查與農業地理', '臺灣總督府中央研究所農業部', '1910-1945', 5, 12, '國史館臺灣文獻館', 'TW-SOIL-SURVEY-JP', 'https://onlinearchives.th.gov.tw/', 'ja', '日治時期臺灣土壤分類調查與農業地理研究報告，為臺灣農地規劃與作物分布之科學基礎', '土壤;農業;日治;地理;調查', '日治時期（1910–1945）', '全臺灣', NULL, NULL, NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '日治土壤調查為臺灣農業科學化之基礎');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (431, '臺灣原住民山地生態調查', '臺灣總督府／人類學者（鹿野忠雄等）', '1920-1945', 5, 12, '學術出版', 'TW-MOUNTAIN-ECOLOGY-JP', NULL, 'ja', '日治時期對臺灣高山地區之生態與環境調查，含鹿野忠雄之高山地形學研究、動植物分布、原住民土地利用等', '山地;生態;日治;鹿野忠雄;高山', '日治時期（1920–1945）', '臺灣高山地區', NULL, '鹿野忠雄臺灣考古與人類學研究', NULL, NULL, '2026-07-30', 'UNCLEAR', '日文學術文獻', '僅收錄 metadata', '學術出版', '日治山地調查為臺灣高山生態研究之先驅');
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes) VALUES (432, '日治時期環境污染記錄（礦業/工業公害）', '臺灣總督府殖產局／警務局', '1910-1945', 5, 12, '國史館臺灣文獻館', 'TW-POLLUTION-JP', 'https://onlinearchives.th.gov.tw/', 'ja', '日治時期因礦業（金瓜石礦毒）、工業排水、都市衛生所引發之環境污染與公害相關公文', '公害;污染;日治;礦業;環境', '日治時期（1910–1945）', '全臺灣', NULL, NULL, NULL, '國史館臺灣文獻館（數位典藏）', '2026-07-30', 'UNCLEAR', '線上查詢', '僅收錄 metadata', NULL, '日治公害記錄為臺灣環境史之早期資料');

SELECT setval('sources_id_seq', 432);

-- === 3. 史料←→資料類型 ===
INSERT INTO source_materials (source_id, material_type_id) VALUES
  (1, 1),
  (1, 2),
  (2, 1),
  (2, 3),
  (3, 1),
  (3, 2),
  (4, 2),
  (5, 1),
  (5, 2),
  (6, 1),
  (7, 1),
  (7, 2),
  (7, 4),
  (8, 1),
  (8, 2),
  (9, 1),
  (10, 1),
  (11, 1),
  (11, 2),
  (12, 1),
  (13, 1),
  (14, 1),
  (14, 2),
  (15, 1),
  (15, 2),
  (16, 1),
  (17, 1),
  (18, 1),
  (18, 2),
  (19, 1),
  (20, 1),
  (21, 1),
  (21, 2),
  (22, 1),
  (23, 1),
  (24, 1),
  (25, 1),
  (26, 1),
  (26, 2),
  (27, 1),
  (28, 1),
  (29, 1),
  (30, 1),
  (31, 1),
  (32, 1),
  (33, 1),
  (34, 1),
  (35, 1),
  (36, 1),
  (37, 1),
  (38, 1),
  (39, 1),
  (40, 2),
  (41, 2),
  (42, 2),
  (43, 2),
  (44, 4),
  (45, 1),
  (46, 1),
  (47, 1),
  (48, 1),
  (49, 1),
  (50, 1),
  (51, 1),
  (52, 1),
  (53, 1),
  (54, 1),
  (55, 1),
  (56, 1),
  (57, 1),
  (58, 1),
  (59, 1),
  (60, 1),
  (61, 1),
  (62, 1),
  (63, 1),
  (64, 1),
  (65, 1),
  (66, 1),
  (67, 1),
  (68, 1),
  (69, 1),
  (70, 1),
  (71, 1),
  (72, 1),
  (73, 3),
  (74, 3),
  (75, 3),
  (76, 3),
  (77, 3),
  (78, 2),
  (79, 2),
  (80, 2),
  (81, 4),
  (82, 2),
  (83, 1),
  (84, 1),
  (85, 1),
  (86, 1),
  (87, 1),
  (88, 1),
  (89, 1),
  (90, 1),
  (91, 1),
  (92, 1),
  (93, 1),
  (94, 1),
  (95, 1),
  (96, 1),
  (97, 1),
  (98, 1),
  (99, 1),
  (100, 1),
  (101, 1),
  (102, 1),
  (103, 1),
  (104, 1),
  (105, 1),
  (106, 1),
  (107, 1),
  (108, 1),
  (109, 1),
  (110, 1),
  (111, 1),
  (112, 1),
  (113, 1),
  (114, 3),
  (115, 3),
  (116, 1),
  (117, 1),
  (118, 1),
  (119, 1),
  (120, 1),
  (121, 1),
  (122, 1),
  (123, 1),
  (124, 1),
  (125, 1),
  (126, 1),
  (127, 1),
  (128, 2),
  (129, 2),
  (130, 2),
  (131, 4),
  (132, 2),
  (132, 4),
  (133, 2),
  (133, 4),
  (134, 1),
  (135, 1),
  (136, 1),
  (137, 1),
  (138, 1),
  (139, 1),
  (140, 1),
  (140, 2),
  (141, 1),
  (141, 2),
  (142, 1),
  (142, 2),
  (143, 1),
  (143, 2),
  (144, 1),
  (144, 2),
  (145, 1),
  (145, 2),
  (146, 1),
  (146, 2),
  (147, 1),
  (148, 1),
  (149, 1),
  (150, 1),
  (151, 1),
  (152, 1),
  (153, 1),
  (154, 1),
  (155, 1),
  (156, 1),
  (157, 1),
  (158, 1),
  (159, 1),
  (160, 1),
  (161, 1),
  (162, 1),
  (163, 1),
  (164, 1),
  (165, 1),
  (166, 1),
  (167, 1),
  (168, 1),
  (169, 1),
  (170, 1),
  (171, 1),
  (172, 1),
  (173, 3),
  (174, 3),
  (175, 1),
  (176, 1),
  (176, 2),
  (177, 1),
  (177, 2),
  (178, 1),
  (179, 1),
  (180, 1),
  (181, 1),
  (182, 1),
  (183, 1),
  (184, 1),
  (185, 1),
  (186, 1),
  (186, 2),
  (187, 1),
  (187, 2),
  (188, 1),
  (188, 2),
  (189, 1),
  (190, 1),
  (191, 1),
  (192, 1),
  (193, 1),
  (194, 1),
  (195, 1),
  (196, 1),
  (197, 1),
  (198, 1),
  (199, 1),
  (200, 1),
  (201, 1),
  (202, 1),
  (203, 1),
  (204, 1),
  (205, 1),
  (206, 3),
  (207, 3),
  (208, 1),
  (209, 1),
  (210, 1),
  (211, 1),
  (212, 1),
  (213, 1),
  (214, 1),
  (215, 2),
  (216, 2),
  (217, 2),
  (218, 1),
  (219, 1),
  (220, 1),
  (221, 1),
  (222, 1),
  (222, 2),
  (223, 1),
  (223, 2),
  (224, 1),
  (224, 2),
  (225, 1),
  (226, 1),
  (227, 1),
  (228, 1),
  (229, 1),
  (230, 1),
  (231, 1),
  (232, 1),
  (233, 1),
  (234, 1),
  (235, 1),
  (236, 1),
  (237, 1),
  (238, 1),
  (239, 1),
  (240, 1),
  (241, 1),
  (242, 1),
  (243, 1),
  (244, 3),
  (245, 1),
  (246, 1),
  (247, 1),
  (248, 1),
  (249, 1),
  (250, 1),
  (251, 1),
  (252, 1),
  (252, 2),
  (253, 1),
  (253, 2),
  (254, 1),
  (255, 1),
  (256, 1),
  (257, 1),
  (258, 1),
  (259, 1),
  (260, 1),
  (261, 1),
  (262, 1),
  (263, 1),
  (264, 1),
  (265, 1),
  (266, 1),
  (267, 1),
  (268, 1),
  (269, 1),
  (270, 3),
  (271, 1),
  (272, 1),
  (273, 1),
  (274, 1),
  (275, 1),
  (276, 2),
  (277, 2),
  (278, 1),
  (279, 1),
  (280, 1),
  (281, 1),
  (281, 2),
  (282, 1),
  (283, 1),
  (284, 1),
  (285, 1),
  (286, 1),
  (287, 1),
  (288, 1),
  (289, 1),
  (290, 1),
  (291, 1),
  (292, 1),
  (292, 2),
  (293, 1),
  (294, 1),
  (295, 1),
  (296, 1),
  (297, 1),
  (298, 1),
  (299, 1),
  (300, 1),
  (301, 1),
  (302, 1),
  (303, 1),
  (304, 1),
  (305, 1),
  (306, 1),
  (307, 1),
  (308, 1),
  (309, 1),
  (310, 1),
  (311, 1),
  (312, 1),
  (313, 1),
  (314, 1),
  (315, 1),
  (316, 1),
  (317, 3),
  (318, 3),
  (319, 3),
  (320, 3),
  (321, 3),
  (322, 3),
  (323, 3),
  (324, 3),
  (325, 3),
  (326, 1),
  (327, 2),
  (327, 1),
  (328, 1),
  (329, 1),
  (330, 1),
  (331, 1),
  (332, 1),
  (333, 1),
  (334, 1),
  (335, 1),
  (336, 1),
  (337, 1),
  (338, 1),
  (339, 1),
  (340, 1),
  (341, 1),
  (342, 1),
  (343, 1),
  (344, 1),
  (345, 1),
  (346, 1),
  (347, 1),
  (348, 1),
  (349, 1),
  (350, 1),
  (351, 1),
  (352, 1),
  (353, 2),
  (354, 2),
  (354, 1),
  (355, 2),
  (356, 2),
  (357, 2),
  (358, 2),
  (359, 2),
  (360, 4),
  (361, 2),
  (361, 1),
  (362, 1),
  (363, 1),
  (364, 1),
  (365, 1),
  (366, 1),
  (367, 1),
  (368, 1),
  (369, 1),
  (370, 1),
  (371, 1),
  (372, 1),
  (373, 1),
  (374, 1),
  (375, 1),
  (376, 1),
  (377, 1),
  (378, 1),
  (379, 1),
  (380, 1),
  (380, 2),
  (381, 1),
  (381, 2),
  (382, 1),
  (382, 2),
  (383, 1),
  (383, 2),
  (384, 1),
  (384, 2),
  (385, 1),
  (386, 1),
  (386, 4),
  (387, 1),
  (388, 1),
  (389, 1),
  (390, 1),
  (391, 1),
  (392, 1),
  (393, 1),
  (394, 1),
  (395, 1),
  (396, 1),
  (397, 1),
  (398, 1),
  (399, 1),
  (400, 1),
  (401, 1),
  (402, 1),
  (403, 1),
  (404, 1),
  (405, 1),
  (406, 1),
  (407, 1),
  (408, 1),
  (409, 1),
  (410, 1),
  (411, 1),
  (412, 1),
  (413, 1),
  (414, 1),
  (415, 1),
  (416, 1),
  (417, 1),
  (418, 1),
  (419, 1),
  (420, 1),
  (421, 1),
  (422, 1),
  (423, 1),
  (424, 1),
  (425, 1),
  (426, 1),
  (427, 1),
  (428, 1),
  (429, 1),
  (430, 1),
  (431, 1),
  (432, 1);
ON CONFLICT DO NOTHING;

-- === 4. 史料←→來源機構 ===
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (1, 13, 'source'),
  (2, 13, 'source'),
  (3, 72, 'source'),
  (3, 72, 'publisher'),
  (4, 72, 'source'),
  (4, 72, 'publisher'),
  (5, 74, 'source'),
  (5, 72, 'publisher'),
  (6, , 'source'),
  (6, , 'publisher'),
  (7, 102, 'source'),
  (7, 102, 'publisher'),
  (8, 72, 'source'),
  (8, 86, 'source'),
  (8, 61, 'contributor'),
  (9, , 'source'),
  (9, 60, 'contributor'),
  (11, , 'source'),
  (11, , 'contributor'),
  (12, , 'source'),
  (12, , 'publisher'),
  (13, 10, 'source'),
  (14, 86, 'source'),
  (14, 110, 'source'),
  (15, 86, 'source'),
  (15, 109, 'source'),
  (16, 10, 'source'),
  (17, , 'source'),
  (17, , 'contributor'),
  (18, , 'source'),
  (18, , 'contributor'),
  (19, , 'source'),
  (19, 60, 'contributor'),
  (20, 72, 'source'),
  (21, 86, 'source'),
  (21, , 'contributor'),
  (22, 86, 'source'),
  (23, 86, 'source'),
  (24, , 'source'),
  (24, , 'contributor'),
  (25, 74, 'source'),
  (26, 102, 'source'),
  (27, , 'source'),
  (27, , 'contributor'),
  (28, 86, 'source'),
  (30, , 'source'),
  (30, , 'contributor'),
  (31, , 'source'),
  (31, , 'publisher'),
  (32, 102, 'source'),
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (32, 102, 'publisher'),
  (33, 55, 'source'),
  (33, 55, 'publisher'),
  (34, 102, 'source'),
  (34, , 'contributor'),
  (35, 74, 'source'),
  (36, , 'source'),
  (36, , 'publisher'),
  (37, 10, 'source'),
  (39, 60, 'source'),
  (40, 72, 'source'),
  (40, 72, 'publisher'),
  (41, 102, 'source'),
  (41, 102, 'publisher'),
  (42, 72, 'source'),
  (42, 72, 'publisher'),
  (43, 74, 'source'),
  (43, 72, 'publisher'),
  (44, 72, 'source'),
  (44, 72, 'publisher'),
  (48, 72, 'source'),
  (49, , 'publisher'),
  (49, 18, 'contributor'),
  (50, , 'publisher'),
  (50, 18, 'contributor'),
  (51, , 'publisher'),
  (51, 18, 'contributor'),
  (52, , 'publisher'),
  (52, 18, 'contributor'),
  (53, 98, 'source'),
  (54, 69, 'contributor'),
  (55, 69, 'contributor'),
  (56, 69, 'contributor'),
  (57, 69, 'contributor'),
  (58, 69, 'contributor'),
  (59, 69, 'contributor'),
  (60, 69, 'contributor'),
  (61, , 'source'),
  (61, , 'contributor'),
  (62, , 'source'),
  (62, , 'contributor'),
  (63, , 'source'),
  (63, , 'contributor'),
  (65, 101, 'source'),
  (66, , 'source'),
  (66, , 'publisher'),
  (67, , 'source'),
  (67, , 'publisher'),
  (69, , 'source'),
  (69, , 'publisher'),
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (70, 94, 'publisher'),
  (71, 94, 'publisher'),
  (72, , 'source'),
  (72, 60, 'publisher'),
  (73, , 'source'),
  (73, , 'contributor'),
  (74, , 'source'),
  (74, , 'contributor'),
  (80, , 'source'),
  (80, , 'contributor'),
  (81, 82, 'source'),
  (81, 82, 'publisher'),
  (82, , 'source'),
  (82, , 'publisher'),
  (83, , 'source'),
  (83, , 'contributor'),
  (84, , 'source'),
  (84, , 'contributor'),
  (85, 111, 'source'),
  (85, 111, 'publisher'),
  (86, , 'source'),
  (86, , 'contributor'),
  (87, , 'source'),
  (87, , 'contributor'),
  (89, 111, 'source'),
  (89, , 'contributor'),
  (90, 3, 'source'),
  (91, 80, 'source'),
  (91, 115, 'source'),
  (91, 115, 'publisher'),
  (92, 80, 'source'),
  (92, 115, 'source'),
  (92, 115, 'publisher'),
  (93, 80, 'source'),
  (93, 115, 'source'),
  (93, 115, 'publisher'),
  (94, 80, 'source'),
  (94, 115, 'source'),
  (94, 115, 'publisher'),
  (95, 80, 'source'),
  (95, 115, 'source'),
  (95, 115, 'publisher'),
  (96, 69, 'contributor'),
  (97, 69, 'contributor'),
  (98, 69, 'contributor'),
  (99, 69, 'contributor'),
  (100, 69, 'contributor'),
  (101, 67, 'source'),
  (102, 95, 'source'),
  (103, 22, 'contributor'),
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (104, 69, 'contributor'),
  (105, 69, 'contributor'),
  (106, 69, 'contributor'),
  (107, 69, 'contributor'),
  (108, , 'source'),
  (108, , 'publisher'),
  (108, 13, 'contributor'),
  (109, 80, 'source'),
  (109, 115, 'source'),
  (110, 80, 'source'),
  (110, 115, 'source'),
  (111, 80, 'source'),
  (111, 115, 'source'),
  (111, 115, 'publisher'),
  (112, 80, 'source'),
  (113, 80, 'source'),
  (114, 58, 'source'),
  (114, 46, 'source'),
  (114, 58, 'contributor'),
  (115, 119, 'source'),
  (116, 80, 'source'),
  (117, 80, 'source'),
  (118, 80, 'source'),
  (119, 80, 'source'),
  (120, 58, 'source'),
  (121, 2, 'source'),
  (122, 18, 'source'),
  (122, 80, 'source'),
  (125, 80, 'source'),
  (125, 115, 'source'),
  (125, 115, 'publisher'),
  (126, 80, 'source'),
  (126, 115, 'source'),
  (126, 115, 'publisher'),
  (128, 77, 'source'),
  (129, 89, 'source'),
  (129, 80, 'source'),
  (129, 88, 'contributor'),
  (130, 77, 'source'),
  (130, 77, 'publisher'),
  (130, 77, 'contributor'),
  (131, 82, 'source'),
  (131, 82, 'publisher'),
  (132, 77, 'source'),
  (132, 77, 'publisher'),
  (133, 82, 'source'),
  (133, 82, 'publisher'),
  (134, , 'source'),
  (134, , 'contributor'),
  (135, 111, 'source'),
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (135, 111, 'publisher'),
  (140, 24, 'source'),
  (140, 22, 'publisher'),
  (140, 18, 'contributor'),
  (141, 18, 'source'),
  (141, 18, 'contributor'),
  (142, , 'source'),
  (142, 18, 'contributor'),
  (143, , 'source'),
  (143, 18, 'contributor'),
  (144, , 'source'),
  (144, 18, 'contributor'),
  (145, , 'source'),
  (145, 18, 'contributor'),
  (146, , 'source'),
  (146, 18, 'contributor'),
  (151, 9, 'source'),
  (151, 48, 'source'),
  (151, 9, 'contributor'),
  (156, 115, 'source'),
  (156, 115, 'publisher'),
  (157, 69, 'contributor'),
  (158, 69, 'contributor'),
  (159, 67, 'source'),
  (159, 2, 'source'),
  (159, 69, 'contributor'),
  (160, 67, 'source'),
  (160, 2, 'source'),
  (160, 69, 'contributor'),
  (161, 80, 'source'),
  (161, 115, 'source'),
  (161, 115, 'publisher'),
  (162, 80, 'source'),
  (162, 115, 'source'),
  (162, 115, 'publisher'),
  (163, 69, 'contributor'),
  (164, 69, 'contributor'),
  (165, 69, 'contributor'),
  (166, 69, 'contributor'),
  (167, 69, 'contributor'),
  (168, 80, 'source'),
  (168, 115, 'source'),
  (169, 80, 'source'),
  (169, 115, 'source'),
  (170, 80, 'source'),
  (170, 115, 'source'),
  (171, 80, 'source'),
  (171, 115, 'source'),
  (171, 115, 'publisher'),
  (172, 80, 'source'),
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (172, 115, 'source'),
  (172, 115, 'publisher'),
  (173, 58, 'source'),
  (173, 46, 'source'),
  (173, 58, 'publisher'),
  (174, 80, 'source'),
  (174, 18, 'source'),
  (175, 80, 'source'),
  (176, 21, 'source'),
  (176, 80, 'source'),
  (176, 18, 'contributor'),
  (177, 21, 'source'),
  (177, 80, 'source'),
  (177, 18, 'contributor'),
  (178, 80, 'source'),
  (178, 115, 'source'),
  (178, 115, 'publisher'),
  (179, 80, 'source'),
  (180, 80, 'source'),
  (180, 115, 'source'),
  (180, 115, 'publisher'),
  (182, 80, 'source'),
  (183, 18, 'source'),
  (183, 80, 'source'),
  (184, , 'source'),
  (184, , 'contributor'),
  (186, 24, 'source'),
  (186, 22, 'publisher'),
  (186, 18, 'contributor'),
  (187, 111, 'source'),
  (187, 18, 'source'),
  (187, 18, 'contributor'),
  (188, 24, 'source'),
  (188, 18, 'contributor'),
  (189, 2, 'source'),
  (189, 80, 'source'),
  (190, 80, 'source'),
  (190, 18, 'source'),
  (191, 18, 'source'),
  (191, 80, 'source'),
  (192, 55, 'source'),
  (192, 80, 'source'),
  (194, 2, 'source'),
  (195, 69, 'contributor'),
  (196, 80, 'source'),
  (196, 115, 'source'),
  (196, 115, 'publisher'),
  (197, 80, 'source'),
  (197, 115, 'source'),
  (197, 115, 'publisher'),
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (198, 16, 'source'),
  (198, 80, 'source'),
  (198, 15, 'contributor'),
  (199, 58, 'source'),
  (199, 15, 'source'),
  (199, 58, 'contributor'),
  (200, 58, 'source'),
  (200, 55, 'source'),
  (201, 80, 'source'),
  (201, 115, 'source'),
  (201, 115, 'publisher'),
  (202, 80, 'source'),
  (203, 80, 'source'),
  (203, 44, 'source'),
  (204, 80, 'source'),
  (204, 55, 'source'),
  (205, 67, 'source'),
  (205, 2, 'source'),
  (205, 69, 'contributor'),
  (206, 58, 'source'),
  (206, 80, 'source'),
  (206, 58, 'contributor'),
  (207, 80, 'source'),
  (208, 80, 'source'),
  (209, 82, 'source'),
  (209, , 'publisher'),
  (209, 82, 'contributor'),
  (210, 8, 'source'),
  (210, 80, 'source'),
  (211, 80, 'source'),
  (211, 15, 'source'),
  (212, , 'source'),
  (212, , 'publisher'),
  (213, , 'source'),
  (213, , 'publisher'),
  (214, 46, 'source'),
  (215, 4, 'source'),
  (215, 4, 'contributor'),
  (216, 89, 'source'),
  (216, 80, 'source'),
  (216, 88, 'contributor'),
  (217, 77, 'source'),
  (217, 82, 'source'),
  (218, 29, 'source'),
  (218, 9, 'source'),
  (218, 29, 'publisher'),
  (219, 9, 'source'),
  (219, 80, 'source'),
  (220, 58, 'source'),
  (222, 24, 'source'),
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (222, 22, 'publisher'),
  (222, 18, 'contributor'),
  (223, 24, 'source'),
  (223, 18, 'contributor'),
  (224, 24, 'source'),
  (224, 18, 'contributor'),
  (225, 9, 'source'),
  (225, 51, 'source'),
  (226, 55, 'source'),
  (226, 15, 'source'),
  (227, 80, 'source'),
  (227, 51, 'source'),
  (228, 55, 'source'),
  (228, 91, 'source'),
  (229, 80, 'source'),
  (229, 18, 'source'),
  (230, 54, 'source'),
  (230, 80, 'source'),
  (231, 80, 'source'),
  (231, 82, 'source'),
  (232, 51, 'source'),
  (233, 50, 'source'),
  (234, 2, 'source'),
  (235, 69, 'contributor'),
  (236, 69, 'contributor'),
  (237, 80, 'source'),
  (237, 115, 'source'),
  (237, 115, 'publisher'),
  (238, 80, 'source'),
  (238, 115, 'source'),
  (238, 115, 'publisher'),
  (239, 80, 'source'),
  (239, 18, 'source'),
  (240, 69, 'contributor'),
  (241, 69, 'contributor'),
  (242, 80, 'source'),
  (242, 115, 'source'),
  (242, 115, 'publisher'),
  (243, 80, 'source'),
  (244, 58, 'source'),
  (244, 30, 'source'),
  (244, 58, 'contributor'),
  (245, 80, 'source'),
  (246, 2, 'source'),
  (246, 80, 'source'),
  (247, 80, 'source'),
  (247, 115, 'source'),
  (247, 115, 'publisher'),
  (248, 16, 'source'),
  (248, 2, 'source'),
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (248, 15, 'contributor'),
  (249, 2, 'source'),
  (251, 118, 'contributor'),
  (252, 24, 'source'),
  (252, 18, 'contributor'),
  (253, 24, 'source'),
  (253, 18, 'contributor'),
  (258, 80, 'source'),
  (260, 2, 'source'),
  (261, 2, 'source'),
  (263, 16, 'source'),
  (263, 46, 'source'),
  (263, 15, 'contributor'),
  (264, 16, 'source'),
  (264, 48, 'source'),
  (264, 15, 'contributor'),
  (265, 69, 'contributor'),
  (266, 69, 'contributor'),
  (267, 58, 'source'),
  (267, 80, 'source'),
  (267, 58, 'contributor'),
  (268, 58, 'source'),
  (268, 58, 'contributor'),
  (269, 16, 'source'),
  (269, 15, 'contributor'),
  (270, 9, 'source'),
  (270, 47, 'source'),
  (270, 47, 'publisher'),
  (270, 9, 'contributor'),
  (271, , 'source'),
  (271, , 'contributor'),
  (272, 80, 'source'),
  (272, 115, 'source'),
  (272, 115, 'publisher'),
  (273, 80, 'source'),
  (273, 88, 'source'),
  (274, 80, 'source'),
  (275, 80, 'source'),
  (276, 41, 'source'),
  (276, 4, 'source'),
  (276, 42, 'contributor'),
  (277, 4, 'source'),
  (277, 9, 'source'),
  (277, 39, 'source'),
  (277, 5, 'contributor'),
  (278, 28, 'source'),
  (278, 9, 'source'),
  (279, 51, 'source'),
  (279, 9, 'source'),
  (281, 24, 'source'),
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (282, 93, 'source'),
  (283, 15, 'source'),
  (284, 80, 'source'),
  (285, 51, 'source'),
  (286, 15, 'source'),
  (286, 9, 'source'),
  (287, 54, 'source'),
  (287, 53, 'source'),
  (287, 53, 'contributor'),
  (288, 38, 'source'),
  (288, 52, 'source'),
  (289, 9, 'source'),
  (290, 52, 'source'),
  (290, 93, 'source'),
  (291, 50, 'source'),
  (291, 93, 'source'),
  (292, 55, 'source'),
  (292, 55, 'contributor'),
  (293, 55, 'source'),
  (293, 55, 'contributor'),
  (294, 55, 'source'),
  (294, 55, 'contributor'),
  (295, 55, 'source'),
  (295, 55, 'contributor'),
  (296, 55, 'source'),
  (296, 55, 'contributor'),
  (297, 55, 'source'),
  (297, 55, 'contributor'),
  (298, 55, 'source'),
  (298, 55, 'contributor'),
  (299, 55, 'source'),
  (299, 55, 'contributor'),
  (300, 55, 'source'),
  (300, 55, 'contributor'),
  (301, 55, 'source'),
  (301, 80, 'source'),
  (301, 55, 'contributor'),
  (302, 55, 'source'),
  (302, 55, 'contributor'),
  (303, 55, 'source'),
  (303, 55, 'contributor'),
  (304, 55, 'source'),
  (304, 55, 'contributor'),
  (305, 80, 'source'),
  (306, 55, 'source'),
  (306, 55, 'contributor'),
  (307, 55, 'source'),
  (307, 18, 'source'),
  (308, 55, 'source'),
  (308, 55, 'contributor'),
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (309, 55, 'source'),
  (309, 55, 'contributor'),
  (310, 55, 'source'),
  (310, 55, 'contributor'),
  (311, 80, 'source'),
  (312, 18, 'source'),
  (312, 55, 'source'),
  (312, 18, 'contributor'),
  (313, 55, 'source'),
  (313, 55, 'contributor'),
  (314, 55, 'source'),
  (314, 18, 'source'),
  (314, 18, 'contributor'),
  (315, 55, 'source'),
  (315, 55, 'contributor'),
  (316, 55, 'source'),
  (316, 55, 'contributor'),
  (317, 80, 'source'),
  (317, 12, 'source'),
  (318, 12, 'source'),
  (318, 80, 'source'),
  (319, 80, 'source'),
  (319, 80, 'contributor'),
  (320, 80, 'source'),
  (320, 80, 'contributor'),
  (321, 80, 'source'),
  (321, 80, 'contributor'),
  (322, 55, 'source'),
  (322, 55, 'contributor'),
  (323, 18, 'source'),
  (323, 18, 'contributor'),
  (324, 80, 'source'),
  (324, 80, 'contributor'),
  (325, 80, 'source'),
  (325, 80, 'contributor'),
  (326, 80, 'source'),
  (327, 80, 'source'),
  (327, 80, 'contributor'),
  (328, 80, 'source'),
  (328, 106, 'source'),
  (328, 80, 'contributor'),
  (329, 80, 'source'),
  (329, 18, 'source'),
  (329, 18, 'contributor'),
  (330, 82, 'source'),
  (330, 82, 'contributor'),
  (331, 80, 'source'),
  (331, 80, 'contributor'),
  (332, 80, 'source'),
  (333, 18, 'source'),
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (333, 18, 'contributor'),
  (334, 80, 'source'),
  (334, 80, 'contributor'),
  (335, 67, 'source'),
  (335, 67, 'contributor'),
  (336, 80, 'source'),
  (336, 80, 'contributor'),
  (337, 80, 'source'),
  (337, 80, 'contributor'),
  (338, 80, 'source'),
  (339, 18, 'source'),
  (339, 18, 'contributor'),
  (340, 18, 'source'),
  (340, 18, 'contributor'),
  (341, 18, 'source'),
  (341, 18, 'contributor'),
  (342, 18, 'source'),
  (342, 18, 'contributor'),
  (343, 120, 'publisher'),
  (344, 18, 'source'),
  (344, 80, 'source'),
  (345, 80, 'source'),
  (346, 80, 'source'),
  (347, 60, 'source'),
  (347, 60, 'contributor'),
  (348, 80, 'source'),
  (351, , 'source'),
  (351, , 'contributor'),
  (353, 89, 'source'),
  (353, 80, 'source'),
  (353, 88, 'contributor'),
  (354, 89, 'source'),
  (354, 88, 'contributor'),
  (355, , 'source'),
  (355, , 'contributor'),
  (356, 80, 'source'),
  (356, 80, 'contributor'),
  (357, 80, 'source'),
  (357, 80, 'contributor'),
  (358, 80, 'source'),
  (358, 80, 'contributor'),
  (359, 80, 'source'),
  (359, 88, 'source'),
  (360, 82, 'source'),
  (360, 82, 'contributor'),
  (361, 80, 'source'),
  (361, 80, 'contributor'),
  (362, 55, 'source'),
  (362, 55, 'contributor'),
  (363, 55, 'source'),
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (363, 55, 'contributor'),
  (364, 55, 'source'),
  (364, 55, 'contributor'),
  (365, 55, 'source'),
  (365, 55, 'contributor'),
  (366, 55, 'source'),
  (366, 55, 'contributor'),
  (367, 55, 'source'),
  (367, 55, 'contributor'),
  (368, 55, 'source'),
  (368, 55, 'contributor'),
  (369, 55, 'source'),
  (369, 55, 'contributor'),
  (370, 80, 'source'),
  (372, 55, 'source'),
  (372, 55, 'contributor'),
  (373, 80, 'source'),
  (374, , 'source'),
  (374, , 'contributor'),
  (375, 18, 'source'),
  (377, 18, 'source'),
  (380, 24, 'source'),
  (380, 22, 'publisher'),
  (380, 18, 'contributor'),
  (381, , 'source'),
  (381, 18, 'contributor'),
  (382, , 'source'),
  (382, 18, 'contributor'),
  (383, , 'source'),
  (383, 18, 'contributor'),
  (384, , 'source'),
  (384, 18, 'contributor'),
  (385, 22, 'source'),
  (385, 22, 'publisher'),
  (386, 7, 'source'),
  (386, 85, 'source'),
  (386, 85, 'contributor'),
  (388, , 'source'),
  (388, , 'contributor'),
  (390, 18, 'source'),
  (392, 80, 'source'),
  (393, 80, 'source'),
  (394, 60, 'source'),
  (395, 80, 'source'),
  (396, 80, 'source'),
  (397, 80, 'source'),
  (398, 80, 'source'),
  (399, 80, 'source'),
  (400, 55, 'source'),
  (400, 55, 'contributor'),
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (401, 80, 'source'),
  (401, 105, 'source'),
  (401, 105, 'contributor'),
  (402, 80, 'source'),
  (403, 55, 'source'),
  (403, 55, 'contributor'),
  (404, 80, 'source'),
  (406, 55, 'source'),
  (406, 55, 'contributor'),
  (407, 80, 'source'),
  (408, 55, 'source'),
  (408, 55, 'contributor'),
  (409, 55, 'source'),
  (409, 55, 'contributor'),
  (410, 80, 'source'),
  (411, 55, 'source'),
  (411, 55, 'contributor'),
  (412, 55, 'source'),
  (412, 55, 'contributor'),
  (413, , 'source'),
  (413, , 'contributor'),
  (414, , 'source'),
  (414, , 'contributor'),
  (415, 55, 'source'),
  (415, 55, 'contributor'),
  (416, 55, 'source'),
  (416, 55, 'contributor'),
  (417, 80, 'source'),
  (417, 80, 'contributor'),
  (418, 55, 'source'),
  (418, 55, 'contributor'),
  (419, 55, 'source'),
  (419, 55, 'contributor'),
  (420, 55, 'source'),
  (420, 55, 'contributor'),
  (421, 55, 'source'),
  (421, 55, 'contributor'),
  (422, , 'source'),
  (422, , 'contributor'),
  (423, 55, 'source'),
  (424, 55, 'source'),
  (424, 55, 'contributor'),
  (425, , 'source'),
  (425, , 'contributor'),
  (426, 55, 'source'),
  (426, 55, 'contributor'),
  (427, 55, 'source'),
  (427, 55, 'contributor'),
  (428, 55, 'source'),
  (428, 55, 'contributor'),
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (429, 55, 'source'),
  (429, 55, 'contributor'),
  (430, 55, 'source'),
  (430, 55, 'contributor'),
  (432, 55, 'source'),
  (432, 55, 'contributor');
ON CONFLICT DO NOTHING;

-- === 完成 ===
