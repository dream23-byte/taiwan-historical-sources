-- ============================================================
-- 東亞歷史權威史料庫 — 港澳史料匯入 SQL（增量模式）
-- 由 Import-HKMoToSupabase.ps1 v1 自動產生
-- ============================================================

-- === 0. 港澳時期（僅首次執行） ===
INSERT INTO periods (id, code, name_zh, start_year, end_year, sort_order, region) OVERRIDING SYSTEM VALUE VALUES
  (27, 'hk-british', '香港英治（1841–1941）', 1841, 1941, 30, 'HK'),
  (28, 'hk-ww2', '香港日佔（1941–1945）', 1941, 1945, 31, 'HK'),
  (29, 'hk-postwar', '香港戰後（1945–1997）', 1945, 1997, 32, 'HK'),
  (30, 'hk-sar', '香港特區（1997–迄今）', 1997, NULL, 33, 'HK'),
  (31, 'mo-portuguese', '澳門葡治（1557–1999）', 1557, 1999, 34, 'MO'),
  (32, 'mo-sar', '澳門特區（1999–迄今）', 1999, NULL, 35, 'MO')
ON CONFLICT (id) DO NOTHING;

-- === 1. 來源機構（僅新增者） ===
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (249, '天主教澳門教區') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (250, '古物古蹟辦事處') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (251, '東華三院檔案館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (252, '英國殖民地部') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (253, '香港中文大學圖書館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (254, '香港公共圖書館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (255, '香港天文台') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (256, '香港房屋委員會') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (257, '香港政府') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (258, '香港政府檔案處') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (259, '香港特別行政區政府') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (260, '香港電影資料館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (261, '香港歷史博物館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (262, '葡萄牙東波塔國家檔案館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (263, '澳門中央圖書館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (264, '澳門文化局') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (265, '澳門政府') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (266, '澳門海關') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (267, '澳門特別行政區政府') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (268, '澳門特別行政區政府印務局') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (269, '澳門基金會') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (270, '澳門博物館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (271, '澳門檔案館') ON CONFLICT (name_zh) DO NOTHING;

SELECT setval('institutions_id_seq', 271);

-- === 2. 主要史料 ===
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1075, '香港政府憲報（Government Gazette）', '香港政府（英治）', '香港英治時期（1841–1941）', 27, 1, '香港政府檔案處', 'HK-ST-01', 'https://www.grs.gov.hk/', 'en', '英國殖民時期香港政府之官方公報，1841年9月24日創刊，刊載法例、政府通告、公告與人事任免，為研究開埠至日佔期間香港行政法制之第一手官方紀錄，涵蓋1841年至1941年全期', '香港憲報;政府公報;法例;殖民管治;香港', '香港英治時期（1841–1941）', '香港', NULL, '香港藍皮書;香港立法局議事錄', '香港政府（英治）', '香港政府檔案處（數位化）', '2026-07-31', 'ARR', '官方檔案，線上瀏覽與申請調閱', '已收錄 metadata', NULL, '英治時期官方公報全文紀錄', 'HK') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1076, '香港藍皮書（Blue Book）', '香港政府（英治）', '香港英治時期（1844–1941）', 27, 1, '香港政府檔案處', 'HK-ST-02', 'https://www.grs.gov.hk/', 'en', '香港殖民地年度統計與施政報告，1844年起逐年編纂，彙編政府收支、人口、貿易、海關與公共事務統計，為重建香港開埠後社會經濟全貌之關鍵官方年鑑', '藍皮書;統計;施政報告;殖民地;香港', '香港英治時期（1844–1941）', '香港', NULL, '香港政府憲報;香港人口普查', '香港政府（英治）', '香港政府檔案處（數位化）', '2026-07-31', 'ARR', '官方檔案，線上瀏覽與申請調閱', '已收錄 metadata', NULL, '殖民地年度施政統計總覽', 'HK') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1077, '香港人口普查報告（1841年起）', '香港政府（英治）', '香港英治時期（1841–1931）', 27, 6, '香港政府檔案處', 'HK-ST-03', 'https://www.grs.gov.hk/', 'en', '英治時期香港歷次人口普查報告，記錄人口規模、族群組成、職業結構與居住分布，涵蓋1841年首次人口調查至1931年普查，為研究香港社會結構變遷之基礎統計史料', '人口普查;人口統計;族群;香港', '香港英治時期（1841–1931）', '香港', NULL, '香港藍皮書;香港政府憲報', '香港政府（英治）', '香港政府檔案處（數位化）', '2026-07-31', 'ARR', '官方檔案，線上瀏覽與申請調閱', '已收錄 metadata', NULL, '英治時期人口統計基礎史料', 'HK') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1078, '香港總督與英國殖民地部往來公文（CO129）', '香港總督府', '香港英治時期（1841–1951）', 27, 1, '香港政府檔案處', 'HK-ST-04', 'https://www.grs.gov.hk/', 'en', '英國殖民地部檔案CO129，收錄香港總督與殖民地部之往來公文、報告與決策紀錄，涵蓋1841年至1951年，為研究香港殖民管治政策形成與執行之核心官方檔案，政府檔案處藏有縮微膠卷', '殖民地部;總督;往來公文;殖民管治;香港', '香港英治時期（1841–1951）', '香港', NULL, '香港政府憲報;香港藍皮書', '英國殖民地部', '香港政府檔案處（縮微膠卷收藏）', '2026-07-31', 'ARR', '館藏縮微膠卷，需申請調閱', '已收錄 metadata', NULL, '殖民地統治核心官方檔案', 'HK') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1079, '香港舊報紙數位化（MMIS多媒體資訊系統）', '香港公共圖書館', '香港英治時期（1841–1941）', 27, 3, '香港公共圖書館', 'HK-ST-05', 'https://mmis.hkpl.gov.hk/', 'zh', '香港公共圖書館多媒體資訊系統（MMIS）收錄之香港舊報紙數位影像，包括《孖剌報》《德臣西報》《中國郵報》等十九世紀至二十世紀前期報章，為研究香港報業史與社會輿論之原始素材', '舊報紙;報業;新聞;香港', '香港英治時期（1841–1941）', '香港', NULL, '香港政府憲報;香港記憶', '香港公共圖書館', '香港公共圖書館（數位化）', '2026-07-31', 'ARR', '線上瀏覽，部分限館內使用', '已收錄 metadata', NULL, '早期中英文報章數位影像', 'HK') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1080, '香港開埠初期地圖與城市規劃圖', '英國皇家工程兵隊', '香港英治時期（1841–1900）', 27, 2, '香港歷史博物館;香港公共圖書館', 'HK-ST-06', 'https://hk.history.museum/', 'en', '1840年代英國佔領香港後測繪之城市與海港地圖、軍用地圖及維多利亞城規劃圖，記錄填海造地前之海岸線與早期街道格局，為研究香港城市發展起點之關鍵輿圖資料', '古地圖;城市規劃;維多利亞城;香港', '香港英治時期（1841–1900）', '香港', NULL, '香港開埠初期照片;香港記憶', '英國皇家工程兵隊', '香港歷史博物館（館藏）', '2026-07-31', 'ARR', '館藏原件，需申請調閱', '已收錄 metadata', NULL, '香港開埠城市規劃輿圖', 'HK') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1081, '東華三院歷史檔案', '東華醫院;東華三院', '香港英治時期（1870–1997）', 27, 4, '東華三院檔案館', 'HK-ST-07', 'https://www.tungwah.org.hk/', 'zh', '東華三院歷年保存之董事局檔案、義莊紀錄、慈善救濟文書與院舍沿革資料，反映香港華人社會自1870年東華醫院創立以來之組織運作與社會救助網絡，兼具社團史與社會史價值', '東華三院;慈善;董事局;義莊;香港', '香港英治時期（1870–1997）', '香港', NULL, '香港人口普查;香港報刊', '東華醫院', '東華三院檔案館', '2026-07-31', 'ARR', '館藏檔案，需申請調閱', '已收錄 metadata', NULL, '香港華人慈善團體核心檔案', 'HK') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1082, '香港跑馬地墳場碑文拓片與記錄', '香港歷史博物館', '香港英治時期（1841–1945）', 27, 8, '香港歷史博物館', 'HK-ST-08', 'https://hk.history.museum/', 'zh', '跑馬地（快樂谷）墳場自1845年啟用，收葬早期歐亞裔居民，其墓碑碑文記錄逝者生平、職業與家族關係，為重建開埠初期香港人口組成與國際社群之重要實物史料', '墳場;碑文;墓葬;殖民社群;香港', '香港英治時期（1841–1945）', '香港', NULL, '香港人口普查;香港開埠初期照片', '香港歷史博物館', '香港歷史博物館（館藏）', '2026-07-31', 'ARR', '館藏原件與拓本，需申請調閱', '已收錄 metadata', NULL, '開埠初期墓葬碑刻記錄', 'HK') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1083, '香港天文台歷史颱風與氣象紀錄（1884年起）', '香港天文台', '香港英治時期（1884–1941）', 27, 12, '香港天文台', 'HK-ST-09', 'https://www.hko.gov.hk/', 'en', '香港天文台自1884年成立以來之颱風信號、氣象觀測與天氣報告紀錄，含歷次風災（如1906年、1937年嚴重颱風）之災情記載，為研究香港自然災害史與氣候變遷之官方觀測史料', '颱風;氣象觀測;風災;香港', '香港英治時期（1884–1941）', '香港', NULL, '香港政府憲報;香港藍皮書', '香港天文台', '香港天文台', '2026-07-31', 'ARR', '官方紀錄，線上查閱', '已收錄 metadata', NULL, '1884年起連續氣象觀測紀錄', 'HK') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1084, '香港日佔時期檔案（1941–1945）', '香港佔領地總督部', '香港日佔時期（1941–1945）', 28, 1, '香港政府檔案處', 'HK-ST-10', 'https://www.grs.gov.hk/', 'ja', '日佔時期香港佔領地總督部之行政檔案、物資配給與人口管理文件，記錄三年零八個月日佔期間香港之糧食政策、戰俘營與社會管制狀況，為研究二次大戰東亞佔領史之關鍵檔案', '日佔;香港佔領地;戰俘營;物資配給;香港', '香港日佔時期（1941–1945）', '香港', NULL, '香港總督與殖民地部往來公文;香港人口普查', '香港佔領地總督部', '香港政府檔案處（館藏）', '2026-07-31', 'ARR', '館藏檔案，需申請調閱', '已收錄 metadata', NULL, '日佔時期行政檔案', 'HK') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1085, '香港政府年報（Hong Kong Annual Report）', '香港政府', '香港戰後時期（1946–1997）', 29, 3, '香港政府檔案處', 'HK-ST-11', 'https://www.grs.gov.hk/', 'en', '香港政府年度報告，1946年起逐年刊行，彙整政府施政、經濟、社會與文教發展，配有大量照片，為回顧戰後至回歸前香港現代化歷程之官方總覽', '政府年報;施政;經濟發展;香港', '香港戰後時期（1946–1997）', '香港', NULL, '香港政府憲報;香港藍皮書', '香港政府', '香港政府檔案處（數位化）', '2026-07-31', 'ARR', '官方出版物，線上瀏覽與申請調閱', '已收錄 metadata', NULL, '戰後官方年度施政總覽', 'HK') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1086, '香港立法局議事錄（Hansard）', '香港立法局', '香港戰後時期（1946–1997）', 29, 1, '香港政府檔案處', 'HK-ST-12', 'https://www.grs.gov.hk/', 'en', '香港立法局會議記錄（Hansard），完整收錄戰後至回歸前立法局辯論、法案審議與質詢內容，反映香港代議政治與公共政策之演進，為研究港英政治體制之核心官方紀錄', '立法局;議事錄;辯論;政治體制;香港', '香港戰後時期（1946–1997）', '香港', NULL, '香港政府憲報;香港政府年報', '香港立法局', '香港政府檔案處（數位化）', '2026-07-31', 'ARR', '官方紀錄，線上瀏覽', '已收錄 metadata', NULL, '立法局會議完整紀錄', 'HK') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1087, '香港房屋委員會公共房屋檔案', '香港房屋委員會', '香港戰後時期（1954–1997）', 29, 1, '香港房屋委員會;香港政府檔案處', 'HK-ST-13', 'https://www.grs.gov.hk/', 'zh', '1954年石硤尾邨火災後香港公營房屋計劃展開，房委會檔案記錄徙置區、廉租屋與新市鎮之規劃興建過程，反映戰後香港住屋政策與社會變遷之關鍵官方史料', '公共房屋;徙置區;新市鎮;住屋政策;香港', '香港戰後時期（1954–1997）', '香港', NULL, '香港政府年報;香港人口普查', '香港房屋委員會', '香港政府檔案處（館藏）', '2026-07-31', 'ARR', '館藏檔案，需申請調閱', '已收錄 metadata', NULL, '公屋政策發展檔案', 'HK') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1088, '香港電影資料館館藏', '香港電影資料館', '香港戰後時期（1945–1997）', 29, 5, '香港電影資料館', 'HK-ST-14', 'https://www.filmarchive.gov.hk/', 'zh', '香港電影資料館收藏之戰後香港電影拷貝、劇照、海報與宣傳品，涵蓋粵語片、國語片與功夫片黃金年代，為研究香港電影工業與流行文化之重要影像史料', '電影;粵語片;流行文化;香港', '香港戰後時期（1945–1997）', '香港', NULL, '香港政府年報;香港報刊', '香港電影資料館', '香港電影資料館（康樂及文化事務署）', '2026-07-31', 'ARR', '館藏影音，需申請調閱', '已收錄 metadata', NULL, '香港電影工業影像史料', 'HK') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1089, '香港記憶（Hong Kong Memory）數位館藏', '香港公共圖書館', '香港英治時期（1841–迄今）', 27, 5, '香港公共圖書館', 'HK-ST-15', 'https://www.hkmemory.hk/', 'zh', '香港公共圖書館建置之香港歷史數位典藏網站，整合老照片、明信片、地圖、報刊、口述歷史與影音紀錄，橫跨開埠至今，為一站式香港歷史影像與文獻資料庫', '數位典藏;老照片;明信片;香港記憶;香港', '香港英治時期（1841–迄今）', '香港', NULL, '香港舊報紙數位化;香港開埠初期地圖', '香港公共圖書館', '香港公共圖書館（數位化）', '2026-07-31', 'ARR', '線上瀏覽', '已收錄 metadata', NULL, '香港歷史綜合數位典藏', 'HK') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1090, '香港中文大學圖書館香港文學與文化特藏', '香港中文大學圖書館', '香港戰後時期（1945–1997）', 29, 4, '香港中文大學圖書館', 'HK-ST-16', 'https://www.lib.cuhk.edu.hk/', 'zh', '香港中文大學圖書館數位特藏，含香港文學檔案、作家手稿、出版文物與僑刊，記錄香港文學創作與文化出版之發展脈絡，為研究戰後香港文化思想史之重要文獻', '香港文學;手稿;特藏;文化;香港', '香港戰後時期（1945–1997）', '香港', NULL, '香港記憶;香港政府年報', '香港中文大學圖書館', '香港中文大學圖書館（數位化）', '2026-07-31', 'ARR', '線上瀏覽', '已收錄 metadata', NULL, '香港文學與文化數位特藏', 'HK') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1091, '香港特區政府憲報（1997年起）', '香港特別行政區政府', '香港特區時期（1997–迄今）', 30, 1, '香港政府檔案處', 'HK-ST-17', 'https://www.grs.gov.hk/', 'zh', '香港特別行政區政府憲報，1997年7月回歸後繼續刊行，收錄特區法例、行政命令、政策文件與部門通告，為研究一國兩制下香港法制與行政之官方權威紀錄', '憲報;特區政府;法例;一國兩制;香港', '香港特區時期（1997–迄今）', '香港', NULL, '香港立法局議事錄;香港政府憲報', '香港特別行政區政府', '香港政府檔案處（數位化）', '2026-07-31', 'ARR', '官方公報，線上瀏覽', '已收錄 metadata', NULL, '回歸後特區官方公報', 'HK') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1092, '香港歷史文物保育與非物質文化遺產檔案', '古物古蹟辦事處', '香港戰後時期（1976–迄今）', 29, 7, '古物古蹟辦事處', 'HK-ST-18', 'https://www.amo.gov.hk/', 'zh', '古物古蹟辦事處（AMO）歷年文物普查、歷史建築評級與非物質文化遺產清單，含活化歷史建築夥伴計劃相關檔案，記錄香港文化遺產之登錄、保護與活化歷程', '歷史建築;非物質文化遺產;文物普查;香港', '香港戰後時期（1976–迄今）', '香港', NULL, '香港歷史博物館藏品;香港記憶', '古物古蹟辦事處', '古物古蹟辦事處', '2026-07-31', 'ARR', '官方檔案，線上查閱', '已收錄 metadata', NULL, '文化遺產登錄與保育檔案', 'HK') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1093, '澳門政府公報（Boletim Oficial）', '澳門政府（葡治）', '澳門葡治時期（1850–1999）', 31, 1, '澳門檔案館', 'MO-ST-01', 'https://www.archives.gov.mo/cn/', 'pt', '葡治時期澳門政府之官方公報，1850年起刊行，收錄法例、總督訓令、政務通告與公職人事，為研究澳葡時期行政法制與政策施行之核心官方檔案，澳門檔案館已數位化提供線上瀏覽', '政府公報;法例;澳葡政府;殖民管治;澳門', '澳門葡治時期（1850–1999）', '澳門', NULL, '澳門檔案期刊;澳門人口統計', '澳門政府（葡治）', '澳門檔案館（數位化）', '2026-07-31', 'ARR', '官方檔案，線上瀏覽與申請調閱', '已收錄 metadata', NULL, '澳葡時期官方公報全文紀錄', 'MO') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1094, '澳門檔案（Boletim do Arquivo de Macau）', '澳門檔案館', '澳門葡治時期（1929–1979）', 31, 3, '澳門檔案館', 'MO-ST-02', 'https://www.archives.gov.mo/cn/', 'pt', '澳門檔案館出版之學術期刊《澳門檔案》，1929年至1979年間刊行，收錄澳門歷史文獻、檔案研究與專題考釋，為研究葡治時期澳門史之重要學術期刊', '澳門檔案;學術期刊;歷史研究;澳門', '澳門葡治時期（1929–1979）', '澳門', NULL, '澳門政府公報;澳門漢文文書', '澳門檔案館', '澳門檔案館（數位化）', '2026-07-31', 'ARR', '官方期刊，線上瀏覽', '已收錄 metadata', NULL, '澳門歷史學術研究期刊', 'MO') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1095, '澳門漢文文書（明清澳門中文檔案）', '明清澳門地方官府', '澳門葡治時期（1557–1849）', 31, 1, '澳門檔案館;葡萄牙東波塔國家檔案館', 'MO-ST-03', 'https://www.archives.gov.mo/cn/', 'zh', '明清時期澳門華葡往來之中文官方文書，涵蓋香山縣衙門、澳門同知與葡萄牙人議事會之公文、稟帖與契約，原件多存於澳門檔案館及葡萄牙東波塔國家檔案館（Torre do Tombo），為研究明清澳門治理與中西交涉之關鍵中文史料', '明清;澳門;中文文書;中西交涉;香山縣', '澳門葡治時期（1557–1849）', '澳門', NULL, '澳門政府公報;澳門地圖', '明清澳門地方官府', '澳門檔案館;葡萄牙東波塔國家檔案館（館藏）', '2026-07-31', 'ARR', '原件散藏於澳門與里斯本，需申請調閱', '已收錄 metadata', NULL, '明清時期澳門中文官方文書', 'MO') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1096, '澳門古地圖與海圖（16–19世紀）', '葡萄牙製圖家;澳門地方官府', '澳門葡治時期（1557–1899）', 31, 2, '澳門檔案館;澳門中央圖書館', 'MO-ST-04', 'https://www.archives.gov.mo/cn/', 'pt', '16世紀至19世紀葡萄牙人及西方製圖家繪製之澳門地圖與航海圖，記錄澳門港埠地理、街道發展與填海變遷，為研究澳門城市空間演變與中西海上交通之重要輿圖史料', '古地圖;海圖;航海;澳門', '澳門葡治時期（1557–1899）', '澳門', NULL, '澳門政府公報;澳門漢文文書', '葡萄牙製圖家', '澳門檔案館;澳門中央圖書館（館藏）', '2026-07-31', 'ARR', '館藏原件，需申請調閱', '已收錄 metadata', NULL, '澳門城市空間演變輿圖', 'MO') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1097, '澳門天主教教區歷史檔案', '天主教澳門教區', '澳門葡治時期（1576–1999）', 31, 4, '天主教澳門教區;澳門檔案館', 'MO-ST-05', 'https://www.archives.gov.mo/cn/', 'pt', '1576年澳門教區成立以來之教區檔案，含領洗冊、婚姻冊、主教牧函與教堂沿革紀錄，記錄葡治時期澳門宗教生活與人口組成，為研究澳門社會史與西教東傳之重要史料', '天主教;教區;教會檔案;澳門', '澳門葡治時期（1576–1999）', '澳門', NULL, '澳門漢文文書;澳門人口統計', '天主教澳門教區', '澳門檔案館（數位化）', '2026-07-31', 'ARR', '教會檔案，需申請調閱', '已收錄 metadata', NULL, '天主教澳門教區歷史檔案', 'MO') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1098, '澳門人口統計資料（歷年普查）', '澳門政府（葡治）', '澳門葡治時期（1867–1999）', 31, 6, '澳門檔案館', 'MO-ST-06', 'https://www.archives.gov.mo/cn/', 'pt', '葡治時期澳門歷次人口普查與統計年鑑，記錄澳門人口規模、族群、職業與國籍結構，1867年起陸續編纂，為研究澳門人口變遷與社會結構之官方統計史料', '人口普查;統計;人口結構;澳門', '澳門葡治時期（1867–1999）', '澳門', NULL, '澳門政府公報;澳門藍皮書', '澳門政府（葡治）', '澳門檔案館（數位化）', '2026-07-31', 'ARR', '官方檔案，線上瀏覽與申請調閱', '已收錄 metadata', NULL, '葡治時期人口統計史料', 'MO') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1099, '澳門海關與對外貿易紀錄', '澳門海關（葡治）', '澳門葡治時期（1557–1999）', 31, 10, '澳門檔案館;葡萄牙東波塔國家檔案館', 'MO-ST-07', 'https://www.archives.gov.mo/cn/', 'pt', '葡治時期澳門海關、港口與對外貿易之徵稅紀錄、商船文件與貿易統計，記錄澳門作為東亞貿易港之經濟活動與轉口網絡，為研究澳門經濟史與海上絲路貿易之重要檔案', '海關;貿易;港口;海上絲路;澳門', '澳門葡治時期（1557–1999）', '澳門', NULL, '澳門政府公報;澳門古地圖', '澳門海關（葡治）', '澳門檔案館;葡萄牙東波塔國家檔案館（館藏）', '2026-07-31', 'ARR', '館藏檔案，需申請調閱', '已收錄 metadata', NULL, '澳門對外貿易經濟檔案', 'MO') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1100, '澳門博彩與娛樂業歷史檔案', '澳門政府（葡治）', '澳門葡治時期（1849–1999）', 31, 10, '澳門檔案館', 'MO-ST-08', 'https://www.archives.gov.mo/cn/', 'pt', '葡治時期澳門博彩專營制度之批給合同、監管文件與稅收紀錄，涵蓋1849年博彩專營化至1999年回歸前之經營檔案，為研究澳門以博彩業為經濟支柱之發展歷程的關鍵產業史料', '博彩;專營;娛樂;經濟;澳門', '澳門葡治時期（1849–1999）', '澳門', NULL, '澳門政府公報;澳門海關與對外貿易紀錄', '澳門政府（葡治）', '澳門檔案館（館藏）', '2026-07-31', 'ARR', '館藏檔案，需申請調閱', '已收錄 metadata', NULL, '博彩專營制度發展檔案', 'MO') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1101, '澳門歷史城區申遺與文物保護檔案', '澳門文化局', '澳門特區時期（1999–迄今）', 32, 7, '澳門文化局', 'MO-ST-09', 'https://www.icm.gov.mo/', 'zh', '澳門文化局歷年文物清單、歷史建築修繕與保護檔案，含2005年「澳門歷史城區」列入世界遺產之申遺文件與後續保育紀錄，為研究澳門文化遺產政策與歷史空間保存之官方檔案', '世界遺產;歷史城區;文物保護;澳門', '澳門特區時期（1999–迄今）', '澳門', NULL, '澳門古地圖;澳門博物館藏品', '澳門文化局', '澳門文化局', '2026-07-31', 'ARR', '官方檔案，線上查閱', '已收錄 metadata', NULL, '澳門歷史城區保育檔案', 'MO') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1102, '澳門特區政府公報（1999年起）', '澳門特別行政區政府', '澳門特區時期（1999–迄今）', 32, 1, '澳門特別行政區政府印務局', 'MO-ST-10', 'https://www.bo.dsaj.gov.mo/', 'zh', '澳門特別行政區政府公報，1999年12月20日回歸後繼續刊行，收錄特區法例、行政長官批示、政策文件與公職人事，為研究一國兩制下澳門法制與施政之官方權威紀錄', '公報;特區政府;法例;一國兩制;澳門', '澳門特區時期（1999–迄今）', '澳門', NULL, '澳門政府公報;澳門人口統計', '澳門特別行政區政府', '澳門特別行政區政府印務局（數位化）', '2026-07-31', 'ARR', '官方公報，線上瀏覽', '已收錄 metadata', NULL, '回歸後特區官方公報', 'MO') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1103, '澳門中央圖書館古籍與澳門文獻特藏', '澳門中央圖書館', '澳門葡治時期（1557–1999）', 31, 7, '澳門中央圖書館', 'MO-ST-11', 'https://www.library.gov.mo/', 'zh', '澳門中央圖書館收藏之古籍、方志、僑刊與澳門主題文獻，涵蓋明清以來記載澳門之中西典籍與地方文獻，為研究澳門歷史文化之重要圖書文獻典藏', '古籍;方志;特藏;澳門文獻;澳門', '澳門葡治時期（1557–1999）', '澳門', NULL, '澳門漢文文書;澳門古地圖', '澳門中央圖書館', '澳門中央圖書館', '2026-07-31', 'ARR', '館藏圖書，線上目錄與館內閱覽', '已收錄 metadata', NULL, '澳門主題古籍文獻典藏', 'MO') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1104, '澳門博物館藏品', '澳門博物館', '澳門特區時期（1999–迄今）', 31, 7, '澳門博物館', 'MO-ST-12', 'https://www.macaumuseum.gov.mo/', 'zh', '澳門博物館收藏之歷史文物、民俗器物與藝術藏品，呈現澳門自開埠以來之中西文化交融，藏品目錄與展覽圖錄為研究澳門物質文化之重要參考', '博物館;文物;藏品;中西文化;澳門', '澳門葡治時期（1557–迄今）', '澳門', NULL, '澳門歷史城區申遺與文物保護檔案;澳門古地圖', '澳門博物館', '澳門文化局（轄下）', '2026-07-31', 'ARR', '館藏文物，線上目錄與館內閱覽', '已收錄 metadata', NULL, '澳門文物與民俗藏品', 'MO') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1105, '澳門虛擬圖書館（Macau Data）', '澳門基金會', '澳門特區時期（1999–迄今）', 31, 3, '澳門基金會', 'MO-ST-13', 'https://www.macaudata.mo/', 'zh', '澳門基金會建置之「澳門虛擬圖書館」數位平台，整合澳門出版書籍、學術研究、歷史文獻與文化資料，為一站式澳門學與澳門歷史研究之綜合數位資料庫', '數位圖書館;澳門學;歷史文獻;澳門', '澳門葡治時期（1557–迄今）', '澳門', NULL, '澳門中央圖書館古籍與澳門文獻特藏;澳門政府公報', '澳門基金會', '澳門基金會（數位化）', '2026-07-31', 'ARR', '線上瀏覽', '已收錄 metadata', NULL, '澳門綜合數位文獻資料庫', 'MO') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1106, '葡萄牙東波塔國家檔案館澳門檔案（Arquivo Nacional Torre do Tombo）', '葡萄牙東波塔國家檔案館', '澳門葡治時期（1557–1999）', 31, 1, '葡萄牙東波塔國家檔案館', 'MO-ST-14', 'https://antt.dglab.gov.pt/', 'pt', '葡萄牙里斯本東波塔國家檔案館（ANTT）保存之澳門相關政府檔案、議事會文書與中西交涉紀錄，含大批澳門漢文文書原件，為研究澳門與葡萄牙殖民史之海外核心檔案', '葡萄牙;殖民;檔案;中西交涉;澳門', '澳門葡治時期（1557–1999）', '葡萄牙里斯本', NULL, '澳門漢文文書;澳門政府公報', '葡萄牙東波塔國家檔案館', '葡萄牙東波塔國家檔案館（館藏）', '2026-07-31', 'ARR', '館藏原件，需申請調閱', '已收錄 metadata', NULL, '里斯本所藏澳門核心檔案', 'MO') ON CONFLICT (id) DO NOTHING;

SELECT setval('sources_id_seq', 1106) WHERE NOT EXISTS (SELECT 1 FROM sources WHERE id = 1106);
SELECT setval('sources_id_seq', (SELECT COALESCE(MAX(id), 0) FROM sources));

-- === 3. 史料←→資料類型 ===
INSERT INTO source_materials (source_id, material_type_id) VALUES
  (1075, 1),
  (1076, 1),
  (1077, 1),
  (1078, 1),
  (1079, 1),
  (1079, 2),
  (1080, 3),
  (1081, 1),
  (1081, 2),
  (1082, 1),
  (1082, 2),
  (1083, 1),
  (1084, 1),
  (1085, 1),
  (1085, 2),
  (1086, 1),
  (1087, 1),
  (1087, 2),
  (1088, 4),
  (1088, 2),
  (1089, 2),
  (1089, 1),
  (1089, 4),
  (1090, 1),
  (1090, 2),
  (1091, 1),
  (1092, 1),
  (1092, 2),
  (1093, 1),
  (1094, 1),
  (1094, 2),
  (1095, 1),
  (1096, 3),
  (1097, 1),
  (1098, 1),
  (1099, 1),
  (1100, 1),
  (1101, 1),
  (1101, 2),
  (1102, 1),
  (1103, 1),
  (1103, 2),
  (1104, 2),
  (1104, 1),
  (1105, 1),
  (1105, 2),
  (1106, 1)
ON CONFLICT DO NOTHING;

-- === 4. 史料←→來源機構 ===
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (1075, 258, 'source'),
  (1075, 257, 'publisher'),
  (1075, 258, 'contributor'),
  (1076, 258, 'source'),
  (1076, 257, 'publisher'),
  (1076, 258, 'contributor'),
  (1077, 258, 'source'),
  (1077, 257, 'publisher'),
  (1077, 258, 'contributor'),
  (1078, 258, 'source'),
  (1078, 252, 'publisher'),
  (1078, 258, 'contributor'),
  (1079, 254, 'source'),
  (1079, 254, 'publisher'),
  (1079, 254, 'contributor'),
  (1080, 261, 'source'),
  (1080, 254, 'source'),
  (1080, 261, 'contributor'),
  (1081, 251, 'source'),
  (1081, 251, 'contributor'),
  (1082, 261, 'source'),
  (1082, 261, 'publisher'),
  (1082, 261, 'contributor'),
  (1083, 255, 'source'),
  (1083, 255, 'publisher'),
  (1083, 255, 'contributor'),
  (1084, 258, 'source'),
  (1084, 258, 'contributor'),
  (1085, 258, 'source'),
  (1085, 257, 'publisher'),
  (1085, 258, 'contributor'),
  (1086, 258, 'source'),
  (1086, 258, 'contributor'),
  (1087, 256, 'source'),
  (1087, 258, 'source'),
  (1087, 256, 'publisher'),
  (1087, 258, 'contributor'),
  (1088, 260, 'source'),
  (1088, 260, 'publisher'),
  (1088, 260, 'contributor'),
  (1089, 254, 'source'),
  (1089, 254, 'publisher'),
  (1089, 254, 'contributor'),
  (1090, 253, 'source'),
  (1090, 253, 'publisher'),
  (1090, 253, 'contributor'),
  (1091, 258, 'source'),
  (1091, 259, 'publisher'),
  (1091, 258, 'contributor'),
  (1092, 250, 'source'),
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (1092, 250, 'publisher'),
  (1092, 250, 'contributor'),
  (1093, 271, 'source'),
  (1093, 265, 'publisher'),
  (1093, 271, 'contributor'),
  (1094, 271, 'source'),
  (1094, 271, 'publisher'),
  (1094, 271, 'contributor'),
  (1095, 271, 'source'),
  (1095, 262, 'source'),
  (1095, 271, 'contributor'),
  (1095, 262, 'contributor'),
  (1096, 271, 'source'),
  (1096, 263, 'source'),
  (1096, 271, 'contributor'),
  (1096, 263, 'contributor'),
  (1097, 249, 'source'),
  (1097, 271, 'source'),
  (1097, 249, 'publisher'),
  (1097, 271, 'contributor'),
  (1098, 271, 'source'),
  (1098, 265, 'publisher'),
  (1098, 271, 'contributor'),
  (1099, 271, 'source'),
  (1099, 262, 'source'),
  (1099, 266, 'publisher'),
  (1099, 271, 'contributor'),
  (1099, 262, 'contributor'),
  (1100, 271, 'source'),
  (1100, 265, 'publisher'),
  (1100, 271, 'contributor'),
  (1101, 264, 'source'),
  (1101, 264, 'publisher'),
  (1101, 264, 'contributor'),
  (1102, 268, 'source'),
  (1102, 267, 'publisher'),
  (1102, 268, 'contributor'),
  (1103, 263, 'source'),
  (1103, 263, 'publisher'),
  (1103, 263, 'contributor'),
  (1104, 270, 'source'),
  (1104, 270, 'publisher'),
  (1104, 264, 'contributor'),
  (1105, 269, 'source'),
  (1105, 269, 'publisher'),
  (1105, 269, 'contributor'),
  (1106, 262, 'source'),
  (1106, 262, 'publisher'),
  (1106, 262, 'contributor')
ON CONFLICT DO NOTHING;

-- === 完成 ===
