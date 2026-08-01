-- ============================================================
-- 東亞歷史權威史料庫 — 韓國史料匯入 SQL（增量模式）
-- 由 Import-KoreaToSupabase.ps1 v1 自動產生
-- ============================================================

-- === 0. 韓國時期（僅首次執行） ===
INSERT INTO periods (id, code, name_zh, start_year, end_year, sort_order, region) OVERRIDING SYSTEM VALUE VALUES
  (46, 'kr-ancient', '韓國史前・古代（～918）', NULL, 918, 49, 'KR'),
  (47, 'kr-goryeo', '高麗（918–1392）', 918, 1392, 50, 'KR'),
  (48, 'kr-joseon', '朝鮮（1392–1897）', 1392, 1897, 51, 'KR'),
  (49, 'kr-empire-colonial', '大韓帝國・日治（1897–1945）', 1897, 1945, 52, 'KR'),
  (50, 'kr-republic-pre', '大韓民國前期（1945–1987）', 1945, 1987, 53, 'KR'),
  (51, 'kr-republic-post', '大韓民國後期（1987–迄今）', 1987, NULL, 54, 'KR')
ON CONFLICT (id) DO NOTHING;

-- === 1. 來源機構（僅新增者） ===
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (300, '大韓民國政府') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (301, '大韓民國臨時政府') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (302, '首爾大學奎章閣韓國學研究院') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (303, '海印寺') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (304, '國史編纂委員會') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (305, '國家記錄院') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (306, '清州興德寺') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (307, '朝鮮總督府') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (308, '韓國文化財廳') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (309, '韓國國立中央博物館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (310, '韓國學中央研究院') ON CONFLICT (name_zh) DO NOTHING;

SELECT setval('institutions_id_seq', 310);

-- === 2. 主要史料 ===
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1177, '三國史記', '金富軾（김부식）', '1145', 46, 7, '國史編纂委員會', 'KR-ST-01', 'https://db.history.go.kr/', 'ko;zh', '高麗仁宗23年（1145）金富軾等奉敕編纂之韓國最古正史，記高句麗・百濟・新羅三國事跡，凡50卷，用漢文編年體，為韓國古代史之根本文獻，與中國《史記》體例相通，為東亞正史傳統之韓國代表作', '三國史記;金富軾;高句麗;百濟;新羅;正史', '韓國史前・古代（～918）', '朝鮮半島', NULL, '三國遺事;日本書紀;高麗史', '高麗王朝', '國史編纂委員會（數位化）', '2026-08-01', 'PD', '古典文獻，數位全文公開', '已收錄 metadata', NULL, '韓國最古正史', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1178, '三國遺事', '一然（일연）', '1281', 46, 7, '國史編纂委員會', 'KR-ST-02', 'https://db.history.go.kr/', 'ko;zh', '高麗忠烈王7年（1281）僧一然所撰之韓國古代史・神話・佛教傳說總集，凡5卷，記檀君神話・新羅金氏祖源・佛教傳入等，為韓國神話與佛教史之根本文獻，補三國史記之闕，與日本《古事記》同為東亞各國民族敘事之經典', '三國遺事;一然;檀君;韓國神話;佛教史', '韓國史前・古代（～918）', '朝鮮半島', NULL, '三國史記;古事記;海東高僧傳', NULL, '國史編纂委員會（數位化）', '2026-08-01', 'PD', '古典文獻，數位全文公開', '已收錄 metadata', NULL, '韓國古代神話佛教總集', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1179, '廣開土大王碑', '高句麗', '414', 46, 8, '韓國學中央研究院', 'KR-ST-03', 'https://yoksa.aks.ac.kr/', 'ko;zh', '414年立於中國集安之高句麗廣開土大王陵碑，碑文記大王征伐・領土擴張與倭・百濟關係，凡1775餘字，為研究高句麗與東北亞古代國際關係之第一級金石史料，拓本流傳於中日韓，20世紀初引發「好太王碑論爭」', '廣開土大王碑;高句麗;金石文;東北亞關係;好太王碑', '韓國史前・古代（414）', '高句麗（中國集安・朝鮮半島）', NULL, '三國史記;日本書紀', NULL, '韓國學中央研究院（數位化）', '2026-08-01', 'PD', '金石碑文，數位公開', '已收錄 metadata', NULL, '東北亞古代國際關係關鍵碑文', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1180, '高句麗古墳壁畫', '高句麗', '5–7世紀', 46, 7, '韓國國立中央博物館;韓國文化財廳', 'KR-ST-04', 'https://www.museum.go.kr/', 'ko', '高句麗時期王陵與貴族古墳壁畫（舞踊塚・角抵塚・藥水里等），描繪狩獵・戰爭・生活・四神圖，色彩鮮明，為東亞古代繪畫與生活史之珍貴圖像史料，2004年高句麗古墳群登錄UNESCO世界文化遺產，與中國東北高句麗遺址共構東北亞古代文明', '高句麗古墳壁畫;四神圖;UNESCO;東北亞文明', '韓國史前・古代（5–7世紀）', '高句麗（平壤・集安）', NULL, '高句麗古墳群;敦煌莫高窟', NULL, '韓國國立中央博物館（數位化）', '2026-08-01', 'PD', '文化財公開，線上瀏覽', '已收錄 metadata', NULL, '高句麗壁畫圖像史料', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1181, '慶州石窟庵・佛國寺', '統一新羅', '8世紀', 46, 7, '韓國文化財廳', 'KR-ST-05', 'https://www.cha.go.kr/', 'ko', '統一新羅景德王時期（8世紀）所建之石窟庵本尊佛與佛國寺，1995年登錄UNESCO世界文化遺產，為韓國佛教雕刻與建築之最高傑作，與日本法隆寺・中國龍門石窟同為東亞佛教藝術之代表，反映新羅佛教文化之鼎盛', '石窟庵;佛國寺;新羅佛教;UNESCO;佛教藝術', '韓國史前・古代（8世紀）', '慶州', NULL, '龍門石窟;法隆寺', NULL, '韓國文化財廳（數位化）', '2026-08-01', 'PD', '文化遺產，線上公開', '已收錄 metadata', NULL, '新羅佛教藝術代表作', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1182, '高麗史', '鄭麟趾等', '1451', 47, 7, '國史編纂委員會', 'KR-ST-06', 'https://db.history.go.kr/', 'ko;zh', '朝鮮世宗時命鄭麟趾等撰之官修正史，記高麗王朝（918–1392）凡475年事跡，凡137卷，分世家・志・表・列傳，為高麗時代最完整之正史文獻，與中國《宋史》《遼史》等並為東亞斷代正史', '高麗史;鄭麟趾;高麗;正史;官修史書', '高麗（918–1392）', '朝鮮半島', NULL, '高麗史節要;三國史記', '朝鮮王朝', '國史編纂委員會（數位化）', '2026-08-01', 'PD', '古典文獻，數位全文公開', '已收錄 metadata', NULL, '高麗正史', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1183, '高麗史節要', '金宗瑞等', '1452', 47, 7, '國史編纂委員會', 'KR-ST-07', 'https://db.history.go.kr/', 'ko;zh', '1452年金宗瑞等奉世宗之命撰成之編年體高麗史，凡35卷，刪繁就簡，以編年記事補紀傳體高麗史之不足，為研究高麗政治・外交・社會之重要史料', '高麗史節要;金宗瑞;高麗;編年體', '高麗（918–1392）', '朝鮮半島', NULL, '高麗史', '朝鮮王朝', '國史編纂委員會（數位化）', '2026-08-01', 'PD', '古典文獻，數位全文公開', '已收錄 metadata', NULL, '高麗編年史', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1184, '八萬大藏經', '高麗王朝', '1236–1251', 47, 7, '海印寺;韓國文化財廳', 'KR-ST-08', 'https://www.cha.go.kr/', 'ko', '高麗高宗23–38年（1236–1251）為祈願擊退蒙古入侵而刻造之八萬餘片木版藏經，現存海印寺藏經閣，凡8萬餘版，為世界最完整之佛教大藏經木版本，2007年登錄UNESCO世界記憶遺產，為高麗佛教文化與印刷史之頂點', '八萬大藏經;高麗大藏經;海印寺;木版;UNESCO', '高麗（1236–1251）', '海印寺（慶尚南道）', NULL, '直指心體要節;大藏經', '高麗王朝', '韓國文化財廳（數位化）', '2026-08-01', 'PD', '文化財公開，線上瀏覽', '已收錄 metadata', NULL, '世界最完整木版大藏經', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1185, '直指心體要節', '白雲和尙', '1377', 47, 7, '韓國學中央研究院', 'KR-ST-09', 'https://yoksa.aks.ac.kr/', 'ko;zh', '高麗禑王3年（1377）清州興德寺以金屬活字印行《白雲和尙抄錄佛祖直指心體要節》，為世界現存最早之金屬活字本，早於古騰堡聖經約78年，2001年登錄UNESCO世界記憶遺產，為韓國印刷文化史之世界級代表作', '直指心體要節;金屬活字;印刷史;UNESCO;高麗', '高麗（1377）', '清州興德寺', NULL, '八萬大藏經;世界記憶遺產', '清州興德寺', '韓國學中央研究院（數位化）', '2026-08-01', 'PD', '世界記憶遺產，數位公開', '已收錄 metadata', NULL, '世界最早金屬活字本', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1186, '高麗青瓷', '高麗王朝窯業', '10–14世紀', 47, 7, '韓國國立中央博物館', 'KR-ST-10', 'https://www.museum.go.kr/', 'ko', '高麗時代（10–14世紀）之青瓷，以翡色青瓷與象嵌青瓷著稱，反映高麗貴族審美與工藝水準，與中國宋代汝窯・龍泉窯並稱東亞青瓷高峰，其象嵌技法為韓國獨創，為韓國陶瓷史之代表', '高麗青瓷;象嵌青瓷;陶瓷史;翡色', '高麗（10–14世紀）', '朝鮮半島', NULL, '汝窯;龍泉窯', NULL, '韓國國立中央博物館（數位化）', '2026-08-01', 'PD', '文化財公開，線上瀏覽', '已收錄 metadata', NULL, '高麗陶瓷工藝代表', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1187, '朝鮮王朝實錄', '春秋館（朝鮮王朝）', '1392–1863', 48, 1, '國史編纂委員會', 'KR-ST-11', 'https://sillok.history.go.kr/', 'ko;zh', '朝鮮王朝歷代國王實錄（太祖～哲宗）凡1893卷，為世界最長之王朝編年史，記錄500年國政・外交・社會，1997年登錄UNESCO世界記憶遺產，國史編纂委員會建置全文數位檢索系統，為韓國史與東亞史研究之核心官方檔案', '朝鮮王朝實錄;春秋館;編年史;UNESCO;王朝記錄', '朝鮮（1392–1863）', '朝鮮王朝（朝鮮半島）', NULL, '承政院日記;日省錄;清實錄', '朝鮮王朝', '國史編纂委員會（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '世界最長王朝編年史', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1188, '承政院日記', '承政院（朝鮮王朝）', '1623–1910', 48, 1, '國史編纂委員會', 'KR-ST-12', 'https://sjw.history.go.kr/', 'ko;zh', '朝鮮王朝承政院記錄之王命出納與政務日記，凡3243冊約2億4千餘萬字，為世界最大之斷代史文獻，2001年登錄UNESCO世界記憶遺產，記錄1623–1910年國王與官府往來之第一手政務檔案，與《朝鮮王朝實錄》並為朝鮮政治史雙璧', '承政院日記;承政院;政務日記;UNESCO;斷代史文獻', '朝鮮（1623–1910）', '漢城（首爾）', NULL, '朝鮮王朝實錄;備邊司謄錄', '承政院', '國史編纂委員會（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '世界最大斷代史文獻', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1189, '備邊司謄錄', '備邊司（朝鮮王朝）', '1617–1892', 48, 1, '國史編纂委員會', 'KR-ST-13', 'https://db.history.go.kr/', 'ko;zh', '朝鮮王朝最高軍政機關備邊司之公事記錄，記17–19世紀邊防・外交・財政・軍事等國政要務，凡273冊，為朝鮮後期政治史與東亞國際關係（含壬辰倭亂後對倭・對清交涉）之核心官方檔案', '備邊司謄錄;備邊司;軍政;外交;朝鮮後期', '朝鮮（1617–1892）', '漢城（首爾）', NULL, '承政院日記;亂中雜錄', '備邊司', '國史編纂委員會（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '朝鮮後期軍政外交檔案', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1190, '日省錄', '奎章閣（朝鮮王朝）', '1760–1910', 48, 1, '首爾大學奎章閣韓國學研究院', 'KR-ST-14', 'https://kyudb.snu.ac.kr/', 'ko;zh', '朝鮮王朝奎章閣依「日省錄」體例逐日記錄國王言行・經筵・政務之檔案，自1760年至1910年凡150年，為正祖以後朝鮮政治史最詳盡之官方日記，2011年登錄UNESCO世界記憶遺產，現存首爾大學奎章閣', '日省錄;奎章閣;王朝日記;UNESCO;朝鮮後期', '朝鮮（1760–1910）', '漢城（首爾）', NULL, '朝鮮王朝實錄;承政院日記', '奎章閣', '首爾大學奎章閣韓國學研究院（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '正祖以後王朝日記', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1191, '經國大典', '崔恒等（朝鮮王朝）', '1485', 48, 1, '國史編纂委員會', 'KR-ST-15', 'https://db.history.go.kr/', 'ko;zh', '朝鮮成宗16年（1485）頒行之大典，為朝鮮王朝基本法典，分吏・戶・禮・兵・刑・工六典，規範官制・土地・戶口・刑律等，奠定朝鮮政治社會制度之根基，為韓國法制史之最重要文獻，與中國《大明律》並為東亞法系代表', '經國大典;朝鮮法典;六典;法制史;官制', '朝鮮（1485）', '朝鮮王朝', NULL, '大明律;續大典', '朝鮮王朝', '國史編纂委員會（數位化）', '2026-08-01', 'PD', '古典文獻，數位全文公開', '已收錄 metadata', NULL, '朝鮮王朝基本法典', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1192, '訓民正音', '世宗大王', '1446', 48, 7, '韓國學中央研究院', 'KR-ST-16', 'https://yoksa.aks.ac.kr/', 'ko', '1446年世宗大王頒布之韓文文字《訓民正音》及解例本，為韓國文字之始，凡28字之表音系統，1997年登錄UNESCO世界記憶遺產，為東亞文字改革與語言政策之里程碑，其「民正音」理念體現對庶民溝通之關懷', '訓民正音;世宗大王;韓文;文字改革;UNESCO', '朝鮮（1446）', '朝鮮王朝', NULL, '東國正韻;月印千江之曲', '朝鮮王朝', '韓國學中央研究院（數位化）', '2026-08-01', 'PD', '世界記憶遺產，數位公開', '已收錄 metadata', NULL, '韓文創制根本文獻', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1193, '東國輿地勝覽', '盧思愼等（朝鮮王朝）', '1481', 48, 2, '國史編纂委員會', 'KR-ST-17', 'https://db.history.go.kr/', 'ko;zh', '1481年（成宗12）編纂之朝鮮全國地理志，仿中國《大明一統志》體例，分八道記山川・郡縣・人物・古蹟・風俗，為韓國最完備之傳統方志，凡55卷，為朝鮮歷史地理研究之根本文獻', '東國輿地勝覽;方志;地理志;八道;朝鮮', '朝鮮（1481）', '朝鮮八道', NULL, '大明一統志;新增東國輿地勝覽', '朝鮮王朝', '國史編纂委員會（數位化）', '2026-08-01', 'PD', '古典文獻，數位全文公開', '已收錄 metadata', NULL, '朝鮮全國地理志', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1194, '大東輿地圖', '金正浩', '1861', 48, 2, '首爾大學奎章閣韓國學研究院', 'KR-ST-18', 'https://kyudb.snu.ac.kr/', 'ko', '1861年金正浩完成之韓國精密全國地圖，凡22帖，以1:16萬比例尺繪製，分道冊裝，為韓國古代製圖技術之最高成就，反映朝鮮後期對全國地理之科學認識，為東亞輿圖史上與中國《皇輿全覽圖》並稱之代表作', '大東輿地圖;金正浩;輿圖;製圖史;全國地圖', '朝鮮（1861）', '朝鮮八道', NULL, '東國輿地勝覽;皇輿全覽圖', NULL, '首爾大學奎章閣韓國學研究院（數位化）', '2026-08-01', 'PD', '古典輿圖，數位全文公開', '已收錄 metadata', NULL, '韓國製圖技術最高成就', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1195, '亂中雜錄', '李舜臣', '1592–1598', 48, 4, '國史編纂委員會', 'KR-ST-19', 'https://db.history.go.kr/', 'ko;zh', '壬辰倭亂時朝鮮水軍統制使李舜臣之親筆日記，記1592–1598年海戰（閑山島大捷・鳴梁海戰）與軍政細節，凡7冊，2013年登錄UNESCO世界記憶遺產，為東亞戰爭史與人物研究之第一手史料，與日本側《豐臣秀吉文書》互為對照', '亂中雜錄;李舜臣;壬辰倭亂;日記;海戰', '朝鮮（1592–1598）', '朝鮮南海・全羅道', NULL, '懲毖錄;豐臣秀吉文書', NULL, '國史編纂委員會（數位化）', '2026-08-01', 'PD', '世界記憶遺產，數位公開', '已收錄 metadata', NULL, '壬辰倭亂第一手日記', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1196, '懲毖錄', '柳成龍', '1604', 48, 7, '國史編纂委員會', 'KR-ST-20', 'https://db.history.go.kr/', 'ko;zh', '壬辰倭亂宰相柳成龍所撰之戰役回顧錄，記1592–1598年倭亂始末與國政得失，凡6卷，2013年登錄UNESCO世界記憶遺產，為理解東亞16世紀末大戰（日本侵朝・明軍援朝）之關鍵文獻', '懲毖錄;柳成龍;壬辰倭亂;戰役記錄', '朝鮮（1592–1598）', '朝鮮半島', NULL, '亂中雜錄;朝鮮王朝實錄', NULL, '國史編纂委員會（數位化）', '2026-08-01', 'PD', '世界記憶遺產，數位公開', '已收錄 metadata', NULL, '壬辰倭亂回顧錄', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1197, '東醫寶鑑', '許浚', '1613', 48, 11, '韓國學中央研究院', 'KR-ST-21', 'https://yoksa.aks.ac.kr/', 'ko;zh', '1613年許浚奉宣祖之命編成之醫學百科全書，凡25卷，集東亞傳統醫學之大成，2009年登錄UNESCO世界記憶遺產，其「養生・醫療・疾病」分類影響韓國與日本漢方醫學至鉅，為韓國醫學史之代表作', '東醫寶鑑;許浚;醫學百科;漢方醫學;UNESCO', '朝鮮（1613）', '朝鮮王朝', NULL, '本草綱目;東醫寶鑑（日譯本）', '朝鮮王朝', '韓國學中央研究院（數位化）', '2026-08-01', 'PD', '世界記憶遺產，數位公開', '已收錄 metadata', NULL, '韓國醫學百科全書', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1198, '朝鮮王朝儀軌', '奎章閣（朝鮮王朝）', '1601–1910', 48, 1, '首爾大學奎章閣韓國學研究院', 'KR-ST-22', 'https://kyudb.snu.ac.kr/', 'ko;zh', '朝鮮王朝王室舉行嘉禮・國葬・行幸等重大儀典時編纂之儀軌（의궤），圖文並茂記錄典禮過程與相關文物，凡數百種，2017年登錄UNESCO世界記憶遺產，為研究朝鮮禮制・宮廷文化・工藝技術之第一手檔案', '儀軌;奎章閣;王室禮儀;UNESCO;宮廷文化', '朝鮮（1601–1910）', '漢城（首爾）', NULL, '日省錄;樂學軌範', '奎章閣', '首爾大學奎章閣韓國學研究院（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '王室儀典圖文檔案', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1199, '高宗實錄・純宗實錄', '朝鮮王朝（日帝時期編纂）', '1897–1910', 49, 1, '國史編纂委員會', 'KR-ST-23', 'https://sillok.history.go.kr/', 'ko;zh', '大韓帝國高宗・純宗實錄，1910年日韓合邦後由日帝時期編纂，記1897–1910年大韓帝國國政與亡國過程，為朝鮮王朝實錄之殿軍，反映近代韓國與東亞國際秩序劇變（清日戰爭・俄日戰爭・日韓合邦）之官方記錄', '高宗實錄;純宗實錄;大韓帝國;日韓合邦;近代', '大韓帝國・日治（1897–1945）', '大韓帝國（首爾）', NULL, '朝鮮王朝實錄;乙巳條約', '朝鮮王朝', '國史編纂委員會（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '大韓帝國末代實錄', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1200, '日帝侵略下韓國36年史', '國史編纂委員會', '1966', 49, 1, '國史編纂委員會', 'KR-ST-24', 'https://db.history.go.kr/', 'ko;zh', '國史編纂委員會1966年刊行之殖民地時期通史，系統記述1910–1945年日本統治韓國36年間之殖民政策・經濟掠奪・民族運動，為韓國殖民史研究之基礎文獻，與臺灣「日治時期」史料互為東亞殖民史對照', '日帝侵略;殖民地統治;36年史;殖民史;國史編纂委員會', '大韓帝國・日治（1897–1945）', '韓國', NULL, '臺灣總督府檔案;日治時期', '國史編纂委員會', '國史編纂委員會（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '韓國殖民史通史', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1201, '韓國獨立運動史', '國史編纂委員會', '1965', 49, 1, '國史編纂委員會', 'KR-ST-25', 'https://db.history.go.kr/', 'ko;zh', '國史編纂委員會刊行之獨立運動通史，記述1910–1945年義兵運動・三一運動・臨時政府・武裝獨立鬥爭等民族解放運動，為韓國抗日獨立運動史之系統性官方記錄，與中國抗日戰爭・臺灣民族運動史互為東亞反殖民史脈絡', '獨立運動;三一運動;臨時政府;義兵;反殖民', '大韓帝國・日治（1897–1945）', '韓國・中國・俄國・美國', NULL, '韓國獨立運動史資料集;大韓民國臨時政府', '國史編纂委員會', '國史編纂委員會（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '獨立運動官方通史', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1202, '三一運動史料', '韓國獨立運動（1919）', '1919', 49, 1, '國史編纂委員會', 'KR-ST-26', 'https://db.history.go.kr/', 'ko', '1919年3月1日韓國人民發動之獨立萬歲運動相關史料，含獨立宣言書・示威記錄・日帝鎮壓檔案，2019年國史編纂委員會建置三一運動資料庫，為韓國近代民族運動之里程碑，與中國五四運動同年並列東亞反帝國主義浪潮', '三一運動;獨立宣言;萬歲運動;1919;反帝', '大韓帝國・日治（1897–1945）', '韓國全國', NULL, '五四運動;大韓民國臨時政府', NULL, '國史編纂委員會（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '1919獨立萬歲運動', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1203, '大韓民國臨時政府資料', '大韓民國臨時政府', '1919–1945', 49, 1, '國史編纂委員會', 'KR-ST-27', 'https://db.history.go.kr/', 'ko;zh', '1919年成立於上海之大韓民國臨時政府相關檔案，含政府公報・外交文書・光復軍史料，國史編纂委員會建置《大韓民國臨時政府資料集》，為韓國獨立運動流亡政權之核心官方檔案，見證東亞反殖民國際網絡（中國・韓國・俄國）', '大韓民國臨時政府;上海;光復軍;流亡政府;獨立運動', '大韓帝國・日治（1897–1945）', '上海・重慶・中國各地', NULL, '韓國獨立運動史;三一運動', '大韓民國臨時政府', '國史編纂委員會（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '流亡政府官方檔案', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1204, '朝鮮總督府記錄', '朝鮮總督府', '1910–1945', 49, 1, '國家記錄院', 'KR-ST-28', 'https://www.archives.go.kr/', 'ko;ja', '國家記錄院典藏之朝鮮總督府（1910–1945）殖民地統治檔案，含地籍・戶籍・警察・產業・教育等公文書，為研究日本帝國殖民地統治與韓國現代化過程之第一手檔案，與臺灣總督府檔案・滿洲國檔案共構日本帝國殖民史料體系', '朝鮮總督府;殖民地統治;地籍;日本帝國;統治檔案', '大韓帝國・日治（1897–1945）', '韓國', NULL, '臺灣總督府檔案;乙巳條約', '朝鮮總督府', '國家記錄院（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '總督府殖民檔案', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1205, '乙巳條約・日韓併合條約', '大韓帝國・日本帝國', '1905–1910', 49, 1, '國家記錄院', 'KR-ST-29', 'https://www.archives.go.kr/', 'ko;ja', '1905年乙巳條約（保護條約）與1910年日韓併合條約相關官方檔案，記大韓帝國喪失外交權至被併合之過程，為韓國近代史之屈辱起點，與《馬關條約》・《對華二十一條》並列日本帝國主義擴張之關鍵條約，國家記錄院數位公開', '乙巳條約;日韓併合;大韓帝國;條約;日本帝國主義', '大韓帝國・日治（1897–1945）', '漢城・東京', NULL, '馬關條約;高宗實錄', '大韓帝國・日本帝國', '國家記錄院（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '韓國喪權條約檔案', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1206, '東學農民運動', '東學教徒・農民軍', '1894', 49, 1, '國史編纂委員會', 'KR-ST-30', 'https://db.history.go.kr/', 'ko;zh', '1894年東學教徒領導之農民戰爭相關檔案，記全琫準起義・反封建反外勢訴求與清日兩軍介入，為韓國近代農民運動與甲午改革之導火線，與中國太平天國・義和團同為19世紀東亞社會變動之代表事件', '東學農民運動;全琫準;甲午改革;農民戰爭;1894', '大韓帝國・日治（1897–1945）', '全羅道・忠清道', NULL, '甲午戰爭;義和團', NULL, '國史編纂委員會（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '東學農民戰爭檔案', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1207, '國務會議錄', '大韓民國國務會議', '1948–1987', 50, 1, '國家記錄院', 'KR-ST-31', 'https://www.archives.go.kr/', 'ko', '國家記錄院公開之大韓民國國務會議議事錄，1948年政府成立至1987年民主化前，系統記錄內閣決策・國家建設・戰後復興等過程，為現代韓國政治史之核心官方檔案，與臺灣行政院會議記錄・日本內閣會議議事錄互為比較對象', '國務會議錄;國務會議;內閣;決策檔案;現代韓國', '大韓民國前期（1945–1987）', '首爾', NULL, '大韓民國憲法;大統領記録館', '大韓民國國務會議', '國家記錄院（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '現代韓國內閣決策檔案', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1208, '制憲國會・大韓民國憲法', '制憲國會', '1948', 50, 1, '國家記錄院', 'KR-ST-32', 'https://www.archives.go.kr/', 'ko', '1948年5月制憲國會成立、7月通過大韓民國憲法之相關檔案，含憲法草案・議事錄・憲法公布文，為韓國民主共和國之根本法與建國文書，與臺灣行憲・日本國憲法同年並列戰後東亞憲政重構之里程碑', '制憲國會;大韓民國憲法;1948;憲政;建國', '大韓民國前期（1945–1987）', '首爾', NULL, '國務會議錄;日本國憲法', '大韓民國', '國家記錄院（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '韓國建國根本法', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1209, '6・25戰爭相關檔案', '大韓民國政府・聯合國軍', '1950–1953', 50, 1, '國家記錄院', 'KR-ST-33', 'https://www.archives.go.kr/', 'ko', '1950–1953年韓國戰爭（6・25戰爭）相關官方檔案，含作戰報告・聯合國軍記錄・戰後重建文書，國家記錄院數位典藏，為冷戰初期東亞最大規模戰爭之韓國側官方記錄，與臺灣二戰後・美國冷戰政策相關史料互為脈絡', '6.25戰爭;韓戰;聯合國軍;冷戰;1950', '大韓民國前期（1945–1987）', '韓國・三八線', NULL, '聯合國;韓戰檔案', '大韓民國政府', '國家記錄院（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '韓戰官方檔案', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1210, '5・18光州民主化運動史料', '光州市民・民主化運動', '1980', 50, 1, '國家記錄院', 'KR-ST-34', 'https://www.archives.go.kr/', 'ko', '1980年5月18日光州民主化運動相關檔案，含市民抵抗記錄・軍事當局鎮壓文書・被害者證言，國家記錄院公開相關檔案並建置5.18資料庫，為韓國民主化與轉型正義之核心史料，與臺灣美麗島事件・野百合學運同為東亞民主化浪潮見證', '5.18;光州民主化運動;民主化;轉型正義;1980', '大韓民國前期（1945–1987）', '光州', NULL, '民主化運動檔案;美麗島事件', NULL, '國家記錄院（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '光州民主化運動檔案', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1211, '大統領記録館', '國家記錄院', '1987–迄今', 51, 1, '國家記錄院', 'KR-ST-35', 'https://www.archives.go.kr/', 'ko', '國家記錄院所屬大統領記録館典藏之韓國歷任總統（1987年民主化以後）之官方記錄，含演說・會見・決策文書・影像，為現代韓國總統制與民主政治之核心檔案，與臺灣總統府檔案・美國總統圖書館制度可互為比較', '大統領記録館;總統記錄;民主化;現代韓國;檔案', '大韓民國後期（1987–迄今）', '首爾・釜山', NULL, '國務會議錄;民主化運動', '國家記錄院', '國家記錄院（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '總統官方記錄典藏', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1212, '韓國民族文化大百科', '韓國學中央研究院', '1991–迄今', 51, 1, '韓國學中央研究院', 'KR-ST-36', 'https://encykorea.aks.ac.kr/', 'ko', '韓國學中央研究院編纂之韓國民族文化大百科辭典（encykorea），收錄韓國歷史・文化・民俗・人物・地理等條目數萬則，為韓國文化研究之綜合百科，數位版免費公開，為韓國學研究之第一入口資料庫', '民族文化大百科;encykorea;韓國學;百科辭典;文化', '大韓民國後期（1987–迄今）', '韓國', NULL, '韓國學數位典藏', '韓國學中央研究院', '韓國學中央研究院（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '韓國文化綜合百科', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1213, '韓國學數位典藏', '韓國學中央研究院', '2000–迄今', 51, 1, '韓國學中央研究院', 'KR-ST-37', 'https://yoksa.aks.ac.kr/', 'ko', '韓國學中央研究院韓國學數位典藏（yoksa.aks.ac.kr），整合藏書閣王室圖書・文獻・口述・影音等數位資源，含《韓國民間文學大系》錄音與王室文書，為韓國學多元資料之數位典藏平台，與臺灣「臺灣歷史數位圖書館」同為跨域整合型資料庫', '韓國學;數位典藏;藏書閣;王室圖書;民間文學', '大韓民國後期（1987–迄今）', '韓國', NULL, '民族文化大百科;藏書閣', '韓國學中央研究院', '韓國學中央研究院（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '韓國學數位典藏平台', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1214, '韓國史線上', '國史編纂委員會', '2004–迄今', 51, 1, '國史編纂委員會', 'KR-ST-38', 'https://www.koreanhistory.or.kr/', 'ko', '國史編纂委員會經營之韓國史整合檢索系統（Korean History On-line），跨庫整合國史編纂委員會・奎章閣・藏書閣・國家記錄院等數十個韓國史資料庫，為韓國史研究之統合入口，類似臺灣「臺灣歷史數位圖書館」之整合功能', '韓國史線上;整合檢索;跨庫;韓國史入口', '大韓民國後期（1987–迄今）', '韓國', NULL, '韓國史資料庫;韓國學數位典藏', '國史編纂委員會', '國史編纂委員會（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '韓國史整合入口', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1215, '駐韓日本公使館記錄', '日本駐韓公使館', '1876–1910', 49, 1, '國史編纂委員會', 'KR-ST-39', 'https://db.history.go.kr/', 'ja;ko', '國史編纂委員會典藏之日本駐韓（朝鮮）公使館記錄，1876年江華島條約開港至1910年日韓合邦間之日韓交涉文書，為近代韓日外交第一手檔案，與JACAR所藏外務省記錄互補，為東亞近代外交史之重要跨國檔案', '駐韓日本公使館;江華島條約;日韓外交;開港;近代', '大韓帝國・日治（1897–1945）', '漢城・釜山・東京', NULL, '戦前期外務省記録;江華島條約', '日本駐韓公使館', '國史編纂委員會（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '日韓近代外交檔案', 'KR') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1216, '漢城旬報・近代韓國新聞', '近代韓國新聞社', '1883–1910', 49, 3, '國史編纂委員會', 'KR-ST-40', 'https://db.history.go.kr/', 'ko', '1883年創刊之漢城旬報等韓國近代初期報刊數位資料，國史編纂委員會近代新聞・雜誌資料庫收錄，為韓國近代啟蒙運動與開化期社會思潮之第一手媒體史料，與臺灣《臺灣府城教會報》・日本《朝日新聞》並列東亞近代報刊史', '漢城旬報;近代報刊;開化期;啟蒙運動;新聞史', '大韓帝國・日治（1897–1945）', '漢城（首爾）', NULL, '官報;近代新聞', NULL, '國史編纂委員會（數位化）', '2026-08-01', 'ARR', '數位全文公開，線上瀏覽', '已收錄 metadata', NULL, '韓國近代初期報刊', 'KR') ON CONFLICT (id) DO NOTHING;

SELECT setval('sources_id_seq', 1216) WHERE NOT EXISTS (SELECT 1 FROM sources WHERE id = 1216);
SELECT setval('sources_id_seq', (SELECT COALESCE(MAX(id), 0) FROM sources));

-- === 3. 史料←→資料類型 ===
INSERT INTO source_materials (source_id, material_type_id) VALUES
  (1177, 1),
  (1178, 1),
  (1179, 1),
  (1179, 2),
  (1180, 2),
  (1181, 2),
  (1182, 1),
  (1183, 1),
  (1184, 2),
  (1184, 1),
  (1185, 1),
  (1185, 2),
  (1186, 2),
  (1187, 1),
  (1188, 1),
  (1189, 1),
  (1190, 1),
  (1191, 1),
  (1192, 1),
  (1192, 2),
  (1193, 1),
  (1194, 3),
  (1195, 1),
  (1196, 1),
  (1197, 1),
  (1198, 1),
  (1198, 2),
  (1199, 1),
  (1200, 1),
  (1201, 1),
  (1202, 1),
  (1202, 2),
  (1203, 1),
  (1204, 1),
  (1204, 2),
  (1205, 1),
  (1206, 1),
  (1207, 1),
  (1208, 1),
  (1209, 1),
  (1209, 2),
  (1210, 1),
  (1210, 2),
  (1210, 4),
  (1211, 1),
  (1211, 2),
  (1211, 4),
  (1212, 1),
  (1212, 2),
  (1213, 1),
  (1213, 2),
  (1213, 4),
  (1214, 1),
  (1215, 1),
  (1215, 2),
  (1216, 1)
ON CONFLICT DO NOTHING;

-- === 4. 史料←→來源機構 ===
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (1177, 304, 'source'),
  (1177, 304, 'contributor'),
  (1178, 304, 'source'),
  (1178, 304, 'contributor'),
  (1179, 310, 'source'),
  (1179, 310, 'contributor'),
  (1180, 309, 'source'),
  (1180, 308, 'source'),
  (1180, 309, 'contributor'),
  (1181, 308, 'source'),
  (1181, 308, 'contributor'),
  (1182, 304, 'source'),
  (1182, 304, 'contributor'),
  (1183, 304, 'source'),
  (1183, 304, 'contributor'),
  (1184, 303, 'source'),
  (1184, 308, 'source'),
  (1184, 308, 'contributor'),
  (1185, 310, 'source'),
  (1185, 306, 'publisher'),
  (1185, 310, 'contributor'),
  (1186, 309, 'source'),
  (1186, 309, 'contributor'),
  (1187, 304, 'source'),
  (1187, 304, 'contributor'),
  (1188, 304, 'source'),
  (1188, 304, 'contributor'),
  (1189, 304, 'source'),
  (1189, 304, 'contributor'),
  (1190, 302, 'source'),
  (1190, 302, 'contributor'),
  (1191, 304, 'source'),
  (1191, 304, 'contributor'),
  (1192, 310, 'source'),
  (1192, 310, 'contributor'),
  (1193, 304, 'source'),
  (1193, 304, 'contributor'),
  (1194, 302, 'source'),
  (1194, 302, 'contributor'),
  (1195, 304, 'source'),
  (1195, 304, 'contributor'),
  (1196, 304, 'source'),
  (1196, 304, 'contributor'),
  (1197, 310, 'source'),
  (1197, 310, 'contributor'),
  (1198, 302, 'source'),
  (1198, 302, 'contributor'),
  (1199, 304, 'source'),
  (1199, 304, 'contributor'),
  (1200, 304, 'source')
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (1200, 304, 'publisher'),
  (1200, 304, 'contributor'),
  (1201, 304, 'source'),
  (1201, 304, 'publisher'),
  (1201, 304, 'contributor'),
  (1202, 304, 'source'),
  (1202, 304, 'contributor'),
  (1203, 304, 'source'),
  (1203, 301, 'publisher'),
  (1203, 304, 'contributor'),
  (1204, 305, 'source'),
  (1204, 307, 'publisher'),
  (1204, 305, 'contributor'),
  (1205, 305, 'source'),
  (1205, 305, 'contributor'),
  (1206, 304, 'source'),
  (1206, 304, 'contributor'),
  (1207, 305, 'source'),
  (1207, 305, 'contributor'),
  (1208, 305, 'source'),
  (1208, 305, 'contributor'),
  (1209, 305, 'source'),
  (1209, 300, 'publisher'),
  (1209, 305, 'contributor'),
  (1210, 305, 'source'),
  (1210, 305, 'contributor'),
  (1211, 305, 'source'),
  (1211, 305, 'publisher'),
  (1211, 305, 'contributor'),
  (1212, 310, 'source'),
  (1212, 310, 'publisher'),
  (1212, 310, 'contributor'),
  (1213, 310, 'source'),
  (1213, 310, 'publisher'),
  (1213, 310, 'contributor'),
  (1214, 304, 'source'),
  (1214, 304, 'publisher'),
  (1214, 304, 'contributor'),
  (1215, 304, 'source'),
  (1215, 304, 'contributor'),
  (1216, 304, 'source'),
  (1216, 304, 'contributor')
ON CONFLICT DO NOTHING;

-- === 完成 ===
