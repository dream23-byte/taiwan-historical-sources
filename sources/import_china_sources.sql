-- ============================================================
-- 東亞歷史權威史料庫 — 中國史料匯入 SQL（增量模式）
-- 由 Import-ChinaToSupabase.ps1 v2 自動產生
-- ============================================================

-- === 1. 來源機構（僅新增者） ===
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (197, '西安半坡博物館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (198, '余姚市人民政府') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (199, '杭州良渚遺址管理區管理委員會') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (200, '河姆渡遺址博物館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (201, '泰安大汶口文化保護傳承中心') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (202, '朝陽市人民政府') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (203, '濟南市章丘區人民政府') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (204, '聯合國教科文組織世界遺產中心') ON CONFLICT (name_zh) DO NOTHING;

SELECT setval('institutions_id_seq', 204);

-- === 2. 主要史料 ===
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (965, '周口店北京人遺址（北京房山）', '中國科學院古脊椎動物與古人類研究所', '舊石器時代', 24, 7, '聯合國教科文組織世界遺產中心', 'CN-ZHOUKOUDIAN-01', 'https://whc.unesco.org/zh/list/449', 'zh', '周口店「北京人」遺址位於北京房山區龍骨山，為舊石器時代（約70萬–20萬年前）直立人化石與文化遺存之最重要地點，1929年裴文中發現首具完整頭蓋骨，1927年起系統發掘，出土近十萬件石製工具、用火遺跡及山頂洞人（約3萬年前）遺骸，1987年列入世界文化遺產，為研究人類演化與中國舊石器時代之核心遺址', '周口店;北京人;舊石器時代;人類演化;世界文化遺產', '舊石器時代（約前70萬–前20萬）', '北京房山', NULL, '山頂洞人;元謀人;藍田人', '聯合國教科文組織世界遺產中心', NULL, '2026-07-31', 'CC-BY-SA IGO 3.0', 'UNESCO世界遺產官網公開資料', '已收錄 metadata', NULL, '中國首批世界文化遺產，人類演化研究聖地', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (966, '西安半坡遺址（仰韶文化）', '中國科學院考古研究所', '新石器時代', 24, 7, '西安半坡博物館', 'CN-BANPO-01', 'https://www.banpomuseum.com.cn/', 'zh', '半坡遺址位於西安東郊浐河東岸，1953年發現、1954–1957年中國科學院考古研究所發掘，為距今約6000多年前典型之新石器時代仰韶文化母系氏族聚落，出土人面魚紋彩陶盆等萬餘件器物，1958年建成中國第一座史前聚落遺址博物館，1961年列入全國重點文物保護單位', '半坡遺址;仰韶文化;彩陶;聚落;母系氏族', '新石器時代（約前4900–前4000）', '陝西西安', NULL, '西安半坡博物館;仰韶文化;龍山文化', '西安半坡博物館', NULL, '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '中國第一座史前聚落遺址博物館', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (967, '河姆渡文化遺址（浙江餘姚）', '浙江省文物考古研究所', '新石器時代', 24, 7, '河姆渡遺址博物館', 'CN-HEMUDU-01', 'https://www.yy.gov.cn/art/2020/11/5/art_1229431531_59016979.html', 'zh', '河姆渡遺址位於浙江餘姚河姆渡鎮，1973年發現，出土距今約7000年之栽培稻穀、榫卯干欄式建築木構件、骨耜與雙鳥朝陽象牙雕，為長江下游新石器時代文化之典型代表，1982年列入第二批全國重點文物保護單位，依遺址建成河姆渡遺址博物館', '河姆渡;稻作農業;干欄式建築;新石器時代;骨耜', '新石器時代（約前5000–前3300）', '浙江餘姚', NULL, '田螺山遺址;良渚文化;河姆渡遺址博物館', '余姚市人民政府', NULL, '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '長江流域稻作文明之重要實證', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (968, '良渚古城與水利系統遺址（浙江杭州）', '浙江省文物考古研究所', '新石器時代', 24, 7, '杭州良渚遺址管理區管理委員會', 'CN-LIANGZHU-02', 'https://www.liangzhusite.cn/', 'zh', '良渚古城遺址位於浙江杭州餘杭，約前3300–前2300年，為長江下游新石器時代晚期以稻作農業為支撐、具統一信仰之早期區域性國家，含城址、外圍水利系統（迄今所知中國最早之大型水利工程）與分等級墓地，2019年列入世界文化遺產，實證中華五千年文明史', '良渚古城;水利系統;玉琮;新石器時代;世界文化遺產', '新石器時代（約前3300–前2300）', '浙江杭州餘杭', NULL, '良渚博物院數字展廳;良渚文化;反山墓地', '杭州良渚遺址管理區管理委員會', NULL, '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '實證中華五千年文明史之聖地', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (969, '紅山文化牛河梁遺址（遼寧朝陽）', '中國社會科學院考古研究所', '新石器時代', 24, 7, '朝陽市人民政府', 'CN-NIUHELIANG-01', 'https://www.chaoyang.gov.cn/html/CYSZF/202105/0162104991559936.html', 'zh', '牛河梁遺址位於遼寧朝陽凌源市與建平縣交界，為紅山文化晚期（距今約5800–5000年）之大型祭祀與墓葬遺址群，發現女神廟、積石冢、祭壇「壇廟冢」三位一體，出土女神頭像與玉豬龍等玉禮器，1988年列入全國重點文物保護單位，為中華文明起源之關鍵實證', '牛河梁;紅山文化;女神廟;積石冢;玉豬龍', '新石器時代（約前4700–前2900）', '遼寧朝陽', NULL, '紅山文化數字博物館;玉出紅山;紅山文化', '朝陽市人民政府', NULL, '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '中華文明起源之重要實證', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (970, '大汶口文化遺址（山東泰安）', '山東省文物考古研究院', '新石器時代', 24, 7, '泰安大汶口文化保護傳承中心', 'CN-DAWENKOU-01', 'http://www.dawenkoupark.com/', 'zh', '大汶口遺址位於山東泰安大汶河兩岸，距今約6500–4000年，為大汶口文化之發現地與命名地，1959年首次發掘清理墓葬133座，出土彩陶豆、象牙雕筒等，上承北辛文化、下啟龍山文化，1982年列入第二批全國重點文物保護單位，為中華文明探源重要載體', '大汶口;新石器時代;彩陶;墓葬;文明起源', '新石器時代（約前4500–前2000）', '山東泰安', NULL, '龍山文化城子崖遺址;北辛文化;大汶口國家考古遺址公園', '泰安大汶口文化保護傳承中心', NULL, '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '大汶口文化之發現地與命名地', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (971, '龍山文化城子崖遺址（山東章丘）', '山東省文物考古研究院', '新石器時代', 24, 7, '濟南市章丘區人民政府', 'CN-CHENGZIYA-01', 'http://www.jnzq.gov.cn/col73496/art/2023/art_73496_4810261.html', 'zh', '城子崖遺址位於山東濟南章丘龍山鎮，1928年吳金鼎發現，1930–1931年中央研究院歷史語言研究所發掘，首次發現以磨光黑陶（蛋殼陶）為特徵之新石器時代遺存並定名「龍山文化」，1961年列入第一批全國重點文物保護單位，為中國學者獨立發現與發掘之首處史前遺址', '城子崖;龍山文化;黑陶;蛋殼陶;考古', '新石器時代（約前2500–前2000）', '山東濟南章丘', NULL, '大汶口文化遺址;龍山文化博物館;仰韶文化', '濟南市章丘區人民政府', NULL, '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '龍山文化之命名遺址', 'CN') ON CONFLICT (id) DO NOTHING;

SELECT setval('sources_id_seq', 971) WHERE NOT EXISTS (SELECT 1 FROM sources WHERE id = 971);
SELECT setval('sources_id_seq', (SELECT COALESCE(MAX(id), 0) FROM sources));

-- === 3. 史料←→資料類型 ===
INSERT INTO source_materials (source_id, material_type_id) VALUES
  (965, 1),
  (965, 2),
  (966, 1),
  (966, 2),
  (967, 1),
  (967, 2),
  (968, 1),
  (968, 2),
  (969, 1),
  (969, 2),
  (970, 1),
  (970, 2),
  (971, 1),
  (971, 2)
ON CONFLICT DO NOTHING;

-- === 4. 史料←→來源機構 ===
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (965, 204, 'source'),
  (965, 204, 'publisher'),
  (966, 197, 'source'),
  (966, 197, 'publisher'),
  (967, 200, 'source'),
  (967, 198, 'publisher'),
  (968, 199, 'source'),
  (968, 199, 'publisher'),
  (969, 202, 'source'),
  (969, 202, 'publisher'),
  (970, 201, 'source'),
  (970, 201, 'publisher'),
  (971, 203, 'source'),
  (971, 203, 'publisher')
ON CONFLICT DO NOTHING;

-- === 完成 ===
