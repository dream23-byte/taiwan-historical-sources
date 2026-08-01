-- ============================================================
-- 東亞歷史權威史料庫 — 印度史料匯入 SQL（增量模式）
-- 由 Import-IndiaToSupabase.ps1 v1 自動產生
-- ============================================================

-- === 0. 印度時期（僅首次執行） ===
INSERT INTO periods (id, code, name_zh, start_year, end_year, sort_order, region) OVERRIDING SYSTEM VALUE VALUES
  (68, 'in-valley-vedic', '印度河流域與吠陀時代（約前3000–前500）', -3000, -500, 71, 'SA'),
  (69, 'in-mauryagupta', '列國・孔雀・笈多時代（約前500–550）', -500, 550, 72, 'SA'),
  (70, 'in-medieval', '中世紀印度（德里蘇丹國，約550–1526）', 550, 1526, 73, 'SA'),
  (71, 'in-mughal', '莫臥兒帝國（1526–1857）', 1526, 1857, 74, 'SA'),
  (72, 'in-british', '英屬印度（1858–1947）', 1858, 1947, 75, 'SA'),
  (73, 'in-republic', '印度共和（1947–迄今）', 1947, 2026, 76, 'SA')
ON CONFLICT (id) DO NOTHING;

-- === 1. 來源機構（僅新增者） ===
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (335, '巴克德卡東方研究所') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (336, '牛津博德利圖書館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (337, '卡達國家圖書館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (338, '本地治里法國研究所') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (339, '甘地紀念與達山委員會') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (340, '甘地遺產入口') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (341, '印度人口普查局') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (342, '印度文化部') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (343, '印度考古調查局') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (344, '印度考古調查局碑銘分部') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (345, '印度國家博物館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (346, '印度國家圖書館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (347, '印度國家檔案館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (348, '印度理工學院克勒格布爾') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (349, '印度博物館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (350, '果阿邦檔案與考古局') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (351, '英迪拉·甘地國立藝術中心') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (352, '庫達巴赫什東方公共圖書館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (353, '泰米爾研究亞洲研究所') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (354, '國家手稿任務') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (355, '國家甘地博物館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (356, '劍橋大學圖書館') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (357, '蘭普爾拉札圖書館') ON CONFLICT (name_zh) DO NOTHING;

SELECT setval('institutions_id_seq', 357);

-- === 2. 主要史料 ===
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1277, '印度河文明（哈拉帕文化）出土文物', '哈拉帕文化（約前2600–前1900）', '約前3000–前1500', 68, 7, '印度博物館（加爾各答）', 'IN-ST-01', 'https://indianmuseumkolkata.org/', NULL, '印度博物館1814年成立，為印度最早之博物館，考古部Pre & Proto History陳列廳典藏印度河文明（哈拉帕・摩亨佐達羅）出土之印章・陶器・珠飾・石雕等，官方網站提供數位館藏與虛擬導覽，為印度河流域文明物質文化之核心典藏', '印度河文明;哈拉帕;摩亨佐達羅;考古;博物館', '印度河流域與吠陀時代（約前3000–前500）', '印度（印度河流域・旁遮普／信德）', NULL, '多拉維拉哈拉帕古城遺址;印度國家博物館考古廳', NULL, '印度博物館（加爾各答，數位典藏）', '2026-08-01', 'ARR', '官方博物館典藏，線上瀏覽', '已收錄 metadata', NULL, '印度河流域文明代表器物', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1278, '多拉維拉哈拉帕古城遺址（Dholavira）', '哈拉帕文化（印度河文明）', '約前3000–前1500', 68, 7, '印度考古調查局（ASI）', 'IN-ST-02', 'https://asi.nic.in/', NULL, '古吉拉特邦卡奇鹽漠多拉維拉為印度境內首處列入世界遺產之印度河流域文明城址（2021年UNESCO世界文化遺產），含巨型蓄水工程・城堡・墓地與排水系統；印度考古調查局（ASI）為管理機關並刊行發掘報告，官網提供遺址清單與導覽', '多拉維拉;印度河文明;世界遺產;水利工程;考古', '印度河流域與吠陀時代（約前3000–前500）', '印度（古吉拉特邦・卡奇）', NULL, '印度河文明（哈拉帕文化）出土文物', NULL, '印度考古調查局（遺址管理）', '2026-08-01', 'ARR', '官方遺址管理機構，線上瀏覽', '已收錄 metadata', NULL, '印度河流域城市文明代表遺址', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1279, '《梨俱吠陀》抄本（Rigveda）', '吠陀時代祭官（口傳傳統）', '約前1500–前1200（現存手稿近世）', 68, 7, '巴克德卡東方研究所（BORI）', 'IN-ST-03', 'https://bori.ac.in/', 'sa;hi', '巴克德卡東方研究所（浦那）藏全球最古老之《梨俱吠陀》貝葉抄本（9世紀），吠陀文獻最古層・人類最早文獻之一，2007年登錄UNESCO世界記憶（印度首件）；另藏《薄伽梵往世書》彩繪抄本，官方數字圖書館已開放萬冊古籍線上閱覽', '梨俱吠陀;吠陀;梵文手稿;UNESCO世界記憶;宗教文獻', '印度河流域與吠陀時代（約前3000–前500）', '印度（馬哈拉施特拉邦・浦那）', NULL, '印度國家手稿任務（Kriti Sampada）', NULL, '巴克德卡東方研究所（數位圖書館）', '2026-08-01', 'ARR', '世界記憶遺產，數位圖書館開放', '已收錄 metadata', NULL, '吠陀文獻最古層寫本', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1280, '印度國家手稿任務（Kriti Sampada／Pandulipi Patala）', '印度文化部國家手稿任務（NAMAMI）', '吠陀期～近代', 68, 8, '國家手稿任務（NAMAMI）', 'IN-ST-04', 'https://www.namami.gov.in/', 'sa;hi;ta;bn', '2003年成立之全國手稿總庫，已建440萬筆手稿書目・約4萬部數位影像，涵蓋吠陀・佛教・耆那教・醫學等梵文與各地語言抄本，並負責印度UNESCO世界記憶提名，為印度傳統文獻之最大國家級數位目錄', '手稿;貝葉經;梵文文獻;數位典藏;文化部', '印度河流域與吠陀時代（約前3000–前500）', '印度全國', NULL, '《梨俱吠陀》抄本;劍橋大學圖書館梵文手稿', NULL, '印度文化部（國家手稿任務）', '2026-08-01', 'ARR', '官方數位典藏，免費開放', '已收錄 metadata', NULL, '印度傳統文獻國家級目錄', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1281, '阿育王敕令與印度碑銘數位庫（BharatSHRI）', '印度考古調查局碑銘分部', '約前3世紀起', 69, 8, '印度考古調查局碑銘分部', 'IN-ST-05', 'https://www.bharatshri.org/', 'sa;pi;hi', '印度考古調查局旗艦碑銘數位計畫，收錄約7.4萬件碑刻拓片（estampages）含阿育王石柱與岩刻敕令・孔雀王朝至莫臥兒時代碑銘，附釋文與元資料全文檢索，為印度碑銘學之國家數位庫', '阿育王敕令;碑銘;石柱;梵文;碑銘學', '列國・孔雀・笈多時代（約前500–550）', '印度全國（含拉姆普瓦・德里・山地等石柱所在地）', NULL, '桑吉佛塔;菩提伽耶大覺寺', NULL, '印度考古調查局碑銘分部（數位庫）', '2026-08-01', 'ARR', '官方碑銘數位庫，線上檢索', '已收錄 metadata', NULL, '阿育王敕令國家數位庫', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1282, '桑吉佛塔（Sanchi Stupa）', '阿育王與巽伽王朝', '約前3世紀–1世紀', 69, 7, '印度考古調查局（ASI）', 'IN-ST-06', 'https://asi.nic.in/', NULL, '桑吉大塔為阿育王始建之佛教舍利塔群，含大塔（Stupa 1）精美佛傳浮雕與阿育王石柱，1989年登錄UNESCO世界文化遺產，印度考古調查局保護管理並提供官方影像與導覽，為佛教藝術與孔雀王朝信仰之代表', '桑吉;佛塔;阿育王;佛教藝術;世界遺產', '列國・孔雀・笈多時代（約前500–550）', '印度（中央邦・桑吉）', NULL, '阿育王敕令與印度碑銘數位庫;菩提伽耶大覺寺', NULL, '印度考古調查局（遺址管理）', '2026-08-01', 'ARR', '官方遺址管理機構，線上瀏覽', '已收錄 metadata', NULL, '佛教舍利塔建築代表', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1283, '菩提伽耶大覺寺複合體（Mahabodhi Temple）', '阿育王始建；笈多末期重建', '約前3世紀～6世紀', 69, 7, '印度考古調查局（ASI）', 'IN-ST-07', 'https://whc.unesco.org/en/list/1056/', NULL, '佛陀成道地菩提伽耶大覺寺，阿育王始建，現存主塔為5–6世紀磚構建築，印度現存最古老佛寺之一，2002年登錄UNESCO世界文化遺產；印度考古調查局管理，研究南亞佛教傳播與笈多建築之核心遺址', '菩提伽耶;佛陀;大覺寺;佛教;世界遺產', '列國・孔雀・笈多時代（約前500–550）', '印度（比哈爾邦・菩提伽耶）', NULL, '吉爾吉特手稿;桑吉佛塔', NULL, '印度考古調查局（世界遺產管理）', '2026-08-01', 'ARR', '世界文化遺產，官方管理單位', '已收錄 metadata', NULL, '佛陀成道地遺址', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1284, '印度國家博物館考古廳（孔雀王朝至笈多文物）', '孔雀王朝・犍陀羅・笈多王朝', '約前3世紀–6世紀', 69, 7, '印度國家博物館', 'IN-ST-08', 'https://nationalmuseumindia.gov.in/', NULL, '新德里國家博物館館藏逾21萬件，考古廳陳列阿育王石柱首都（獅子柱頭）・犍陀羅石雕・笈多銅像與王朝時期造像，經官方JATAN數位典藏與NM Virtual（nmvirtual.in）線上閱覽，為印度古典時代藝術之國家級典藏', '國家博物館;阿育王石柱;犍陀羅;笈多王朝;博物館', '列國・孔雀・笈多時代（約前500–550）', '印度（新德里）', NULL, '印度河文明（哈拉帕文化）出土文物;莫臥兒細密畫收藏', NULL, '印度國家博物館（數位典藏）', '2026-08-01', 'ARR', '官方博物館典藏，線上瀏覽', '已收錄 metadata', NULL, '印度古典藝術國家典藏', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1285, '吉爾吉特手稿（Gilgit Manuscripts）', '笈多王朝時期佛教僧侶', '5–6世紀', 69, 7, '印度國家檔案館（NAI）', 'IN-ST-09', 'https://www.unesco.org/en/memory-world/country-overview?country=IN', 'sa;pi', '1931年於喀什米爾吉爾吉特發現之佛塔寶藏，為印度次大陸現存最古老手稿群（笈多文字佛教梵文寫本，含《楞伽經》等），2017年登錄UNESCO世界記憶，原件由印度國家檔案館與查謨喀什米爾考古檔案局保存', '吉爾吉特手稿;佛教寫本;梵文;笈多王朝;UNESCO世界記憶', '列國・孔雀・笈多時代（約前500–550）', '印度（喀什米爾・吉爾吉特）', NULL, '菩提伽耶大覺寺;劍橋大學圖書館梵文手稿', NULL, '印度國家檔案館（原件典藏）', '2026-08-01', 'ARR', '世界記憶遺產，官方典藏', '已收錄 metadata', NULL, '印度次大陸最古老手稿群', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1286, '劍橋大學數位圖書館梵文手稿', '印度各地抄書匠（佚名）', '10–19世紀', 70, 7, '劍橋大學圖書館', 'IN-ST-10', 'https://cudl.lib.cam.ac.uk/collections/sanskrit', 'sa;pi;pra;ta', '劍橋大學圖書館AHRC計畫數位化逾1,600件梵文・巴利文・普拉克利特文・坦米爾文手稿（紙本・貝葉・樺樹皮），系統性開放全文影像，涵蓋佛教・印度教・耆那教經典，為境外最大開放梵文手稿庫之一', '梵文手稿;貝葉經;巴利文;佛教文獻;數位典藏', '中世紀印度（德里蘇丹國，約550–1526）', '印度全境（典藏於英國劍橋）', NULL, '牛津博德利圖書館梵文手稿;吉爾吉特手稿', NULL, '劍橋大學圖書館（數位圖書館）', '2026-08-01', 'ARR', '大學數位圖書館，免費開放', '已收錄 metadata', NULL, '境外開放梵文手稿庫', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1287, '牛津博德利圖書館梵文手稿（Clay計畫）', '印度各地抄書匠（佚名）', '11–19世紀', 70, 7, '牛津博德利圖書館', 'IN-ST-11', 'https://digital.bodleian.ox.ac.uk/collections/sanskrit-manuscripts-clay/', 'sa;pi', '博德利圖書館藏約8,700件梵文手稿為境外最大梵文收藏之一，Clay Sanskrit Library計畫已數位化逾100部重要作品（含樺樹皮・貝葉寫本），全部線上公開，反映中世紀印度古典文學與宗教文獻', '梵文手稿;貝葉經;梵文經典;數位典藏;博德利圖書館', '中世紀印度（德里蘇丹國，約550–1526）', '印度全境（典藏於英國牛津）', NULL, '劍橋大學數位圖書館梵文手稿;IGNCA數位典藏', NULL, '牛津博德利圖書館（數位典藏）', '2026-08-01', 'ARR', '大學數位圖書館，免費開放', '已收錄 metadata', NULL, '境外梵文收藏代表', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1288, 'IGNCA數位典藏（Kalasampada）', '英迪拉·甘地國立藝術中心（IGNCA）', '中世紀梵文經典', 70, 7, '英迪拉·甘地國立藝術中心（IGNCA）', 'IN-ST-12', 'https://ignca.gov.in/', 'sa;hi;en', '印度文化部轄下知識典藏中心，Kalasampada數位庫含數十萬手稿・逾10萬張幻燈片・古籍與影音，並設梵文全文資料庫（約1.3萬頁）與ASI 12,000冊古籍數位化入口，為印度傳統知識之綜合數位平台', 'IGNCA;梵文;手稿;數位典藏;文化部', '中世紀印度（德里蘇丹國，約550–1526）', '印度（新德里）', NULL, '牛津博德利圖書館梵文手稿;印度國家手稿任務', NULL, '英迪拉·甘地國立藝術中心（數位庫）', '2026-08-01', 'ARR', '官方數位典藏，免費開放', '已收錄 metadata', NULL, '印度傳統知識數位平台', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1289, '德里蘇丹時期波斯史籍（庫達巴赫什藏本）', '德里蘇丹國宮廷史官', '13–16世紀', 70, 7, '庫達巴赫什東方公共圖書館', 'IN-ST-13', 'https://kblibrary.bih.nic.in/', 'fa;ar', '庫達巴赫什東方公共圖書館（巴特那，1891成立）藏21,136件波斯・阿拉伯手稿，含《菲魯茲沙傳》（Sirat-i Firoz Shahi）等德里蘇丹王朝獨家史籍，數位化已逾358,000頁，為北印度伊斯蘭史第一手文獻庫', '德里蘇丹;波斯手稿;伊斯蘭史;史籍;圖書館', '中世紀印度（德里蘇丹國，約550–1526）', '印度（比哈爾邦・巴特那）', NULL, '《帖木兒王朝史》', NULL, '庫達巴赫什東方公共圖書館（數位化）', '2026-08-01', 'ARR', '官方圖書館典藏，線上瀏覽', '已收錄 metadata', NULL, '德里蘇丹史獨家文獻', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1290, 'IAS泰米爾醫學手稿（I.A.S. Tamil Medical Manuscripts）', '泰米爾悉達醫學體系', '古代～中世紀', 70, 11, '泰米爾研究亞洲研究所（IAS）', 'IN-ST-14', 'https://www.unesco.org/en/memory-world/country-overview?country=IN', 'ta', '清奈泰米爾研究亞洲研究所藏泰米爾悉達（Siddha）醫學手稿，反映德羅毗荼古老醫療體系，1997年登錄UNESCO世界記憶（印度最早登錄之一），為南印度傳統醫學文獻代表', '泰米爾;悉達醫學;手稿;UNESCO世界記憶;傳統醫學', '中世紀印度（德里蘇丹國，約550–1526）', '印度（泰米爾納德邦・清奈）', NULL, '濕婆悉檀多手稿（本地治里）', NULL, '泰米爾研究亞洲研究所（典藏）', '2026-08-01', 'ARR', '世界記憶遺產，官方典藏', '已收錄 metadata', NULL, '泰米爾悉達醫學文獻', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1291, '濕婆悉檀多手稿（本地治里）', '印度濕婆派悉檀多傳統', '中世紀', 70, 7, '本地治里法國研究所（IFP）', 'IN-ST-15', 'https://www.unesco.org/en/memory-world/country-overview?country=IN', 'sa;ta', '本地治里法國研究所（IFP）與法國遠東學院（EFEO）共同典藏全球最大濕婆悉檀多文獻群，數千卷格蘭塔（Grantha）字體梵文棕櫚葉寫本，2005年登錄UNESCO世界記憶，為南印度濕婆教哲學經典之核心', '濕婆悉檀多;梵文手稿;棕櫚葉寫本;UNESCO世界記憶;印度教', '中世紀印度（德里蘇丹國，約550–1526）', '印度（本地治里）', NULL, 'IAS泰米爾醫學手稿;劍橋大學圖書館梵文手稿', NULL, '本地治里法國研究所（數位化）', '2026-08-01', 'ARR', '世界記憶遺產，官方典藏', '已收錄 metadata', NULL, '濕婆悉檀多文獻群', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1292, '《帖木兒王朝史》（Tarikh-i-Khandan-i-Timuriyya）', '阿克巴大帝御前史官', '1577–1578', 71, 7, '庫達巴赫什東方公共圖書館', 'IN-ST-16', 'https://www.unesco.org/en/memory-world/tarikh-e-khandan-e-timuriyah', 'fa', '阿克巴大帝委託撰寫之帖木兒王室世系史，世界僅存孤本，含132幅御用宮廷畫家繪製之彩圖，記帖木兒－莫臥兒王統與阿克巴朝史事，2011年登錄UNESCO世界記憶，為莫臥兒史畫與史學之祖', '帖木兒王朝;阿克巴大帝;莫臥兒;波斯史籍;UNESCO世界記憶', '莫臥兒帝國（1526–1857）', '印度（比哈爾邦・巴特那）', NULL, '德里蘇丹時期波斯史籍;蘭普爾拉札細密畫暨手稿', NULL, '庫達巴赫什東方公共圖書館（孤本典藏）', '2026-08-01', 'ARR', '世界記憶遺產，孤本典藏', '已收錄 metadata', NULL, '莫臥兒史畫之祖', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1293, '蘭普爾拉札圖書館細密畫暨手稿', '莫臥兒・波斯宮廷書畫傳統', '16–19世紀', 71, 5, '蘭普爾拉札圖書館', 'IN-ST-17', 'https://razalibrary.gov.in/', 'fa;ar;hi', '蘭普爾拉札圖書館（1774年建立）為國家級印度—伊斯蘭文化庫，藏17,000部手稿・5,000幅細密畫，含阿克巴宮廷《Jahangirnama》（賈漢吉爾書）等名作，約18萬頁已數位化，為莫臥兒宮廷藝術之重鎮', '蘭普爾拉札;細密畫;莫臥兒;Jahangirnama;伊斯蘭藝術', '莫臥兒帝國（1526–1857）', '印度（北方邦・蘭普爾）', NULL, '莫臥兒細密畫收藏;《帖木兒王朝史》', NULL, '蘭普爾拉札圖書館（數位化）', '2026-08-01', 'ARR', '官方圖書館典藏，線上瀏覽', '已收錄 metadata', NULL, '莫臥兒宮廷藝術重鎮', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1294, '莫臥兒細密畫收藏（國家博物館）', '莫臥兒・拉賈斯坦・帕哈里畫派', '16–19世紀', 71, 5, '印度國家博物館', 'IN-ST-18', 'https://nationalmuseumindia.gov.in/', 'fa;hi', '印度國家博物館藏印度最大細密畫收藏之一（約17,000件），涵蓋莫臥兒・拉賈斯坦・帕哈里各畫派宮廷肖像・狩獵宴樂圖，官方站提供藏品資料庫與策展人專欄，為莫臥兒宮廷視覺文化核心典藏', '莫臥兒細密畫;拉賈斯坦畫派;宮廷藝術;視覺史;博物館', '莫臥兒帝國（1526–1857）', '印度（新德里）', NULL, '蘭普爾拉札圖書館細密畫暨手稿', NULL, '印度國家博物館（藏品資料庫）', '2026-08-01', 'ARR', '官方博物館典藏，線上瀏覽', '已收錄 metadata', NULL, '印度最大細密畫收藏之一', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1295, '泰姬陵（Taj Mahal）', '沙賈汗皇帝', '1632–1653', 71, 7, '印度考古調查局（ASI）', 'IN-ST-19', 'https://whc.unesco.org/en/list/252/', NULL, '沙賈汗為皇后慕塔芝瑪哈興建之白色大理石陵墓，融合波斯・土耳其・印度建築傳統，為莫臥兒建築顛峰，1983年登錄UNESCO世界文化遺產；印度考古調查局管理，官方與世界遺產中心提供影像與資料', '泰姬陵;莫臥兒;世界遺產;建築;沙賈汗', '莫臥兒帝國（1526–1857）', '印度（北方邦・阿格拉）', NULL, '德里紅堡複合體;莫臥兒細密畫收藏', NULL, '印度考古調查局（世界遺產管理）', '2026-08-01', 'ARR', '世界文化遺產，官方管理單位', '已收錄 metadata', NULL, '莫臥兒建築顛峰', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1296, '德里紅堡複合體（Red Fort Complex）', '沙賈汗皇帝', '1639–1648', 71, 7, '印度考古調查局（ASI）', 'IN-ST-20', 'https://whc.unesco.org/en/list/231/', NULL, '沙賈汗時代建於沙賈汗納巴德（舊德里）之皇城紅堡，為莫臥兒政治權力中心，融合波斯・帖木兒・印度傳統，2007年登錄UNESCO世界文化遺產；印度考古調查局管理，官方提供影像與導覽', '紅堡;莫臥兒;世界遺產;德里;建築', '莫臥兒帝國（1526–1857）', '印度（德里）', NULL, '泰姬陵;古德卜塔', NULL, '印度考古調查局（世界遺產管理）', '2026-08-01', 'ARR', '世界文化遺產，官方管理單位', '已收錄 metadata', NULL, '莫臥兒皇城代表', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1297, '古德卜塔（Qutb Minar Complex）', '德里蘇丹國（庫特卜丁·艾巴克）', '1193–1368', 70, 7, '印度考古調查局（ASI）', 'IN-ST-21', 'https://whc.unesco.org/en/list/233/', NULL, '德里古德卜塔為庫特卜丁·艾巴克始建之勝利塔群，含印度最早伊斯蘭清真寺（Quwwat-ul-Islam）與鐵柱，1993年登錄UNESCO世界文化遺產，象徵德里蘇丹國伊斯蘭化之開端，印度考古調查局管理', '古德卜塔;德里蘇丹;伊斯蘭建築;世界遺產;勝利塔', '中世紀印度（德里蘇丹國，約550–1526）', '印度（德里）', NULL, '德里紅堡複合體;德里蘇丹時期波斯史籍', NULL, '印度考古調查局（世界遺產管理）', '2026-08-01', 'ARR', '世界文化遺產，官方管理單位', '已收錄 metadata', NULL, '德里蘇丹伊斯蘭建築開端', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1298, '荷蘭東印度公司（VOC）檔案', '荷蘭東印度公司（VOC）', '1602–1795', 71, 1, '荷蘭國家檔案館', 'IN-ST-22', 'https://www.nationaalarchief.nl/onderzoeken/archief/1.04.02', 'nl;fa;ta;ml', '世界上第一個跨國公司檔案，500萬頁已掃描上線並以自動文字辨識（ATR）全文檢索，2003年登錄UNESCO世界記憶（荷／印尼／印度／斯里蘭卡／南非合登錄）；含印度洋航線與科欽・科羅曼德爾等印度據點史料，為荷印在印度貿易殖民史最重要檔案', 'VOC;荷蘭東印度公司;印度洋貿易;殖民檔案;UNESCO世界記憶', '莫臥兒帝國（1526–1857）', '印度（科欽・科羅曼德爾海岸・古吉拉特）', NULL, '果阿歷史檔案館;清奈Dutch Records', NULL, '荷蘭國家檔案館（數位典藏）', '2026-08-01', 'ARR', '世界記憶遺產，數位檔案庫開放', '已收錄 metadata', NULL, '荷印貿易殖民檔案', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1299, '果阿歷史檔案館（Arquivo Histórico do Estado da Índia）', '葡屬印度殖民政府', '1498–1961', 71, 1, '果阿邦檔案與考古局', 'IN-ST-23', 'https://www.goa.gov.in/', 'pt;fa;sa;ta', '1595年設立、葡屬印度最古老檔案館，含Monções（季風年度信函）・與鄰邦君主書信（Livros dos Reis Vizinhos）・機密檔案（Livros dos Segredos）等，正進行大規模數位化，為葡印五百年歷史之核心檔案庫', '果阿;葡屬印度;殖民檔案;季風信函;檔案館', '莫臥兒帝國（1526–1857）', '印度（果阿）', NULL, '荷蘭東印度公司（VOC）檔案;葡萄牙國家檔案館Torre do Tombo', NULL, '果阿邦檔案與考古局（數位化中）', '2026-08-01', 'ARR', '官方檔案館典藏，需申請閱覽', '已收錄 metadata', NULL, '葡屬印度五百年檔案庫', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1300, '印度國家檔案館東印度公司與英屬印度檔案', '東印度公司／英屬印度政府', '17世紀–1947', 72, 1, '印度國家檔案館（NAI）', 'IN-ST-24', 'https://nationalarchives.nic.in/', 'en;hi;fa', '南亞最大檔案庫（1891成立），典藏東印度公司至英屬印度之總督府・外務部檔案・輿圖與微縮片，含吉爾吉特佛經（UNESCO世界記憶2017）原件，為印度近代國家形成之國家記憶主庫', '印度國家檔案館;東印度公司;英屬印度;殖民檔案;國家記憶', '英屬印度（1858–1947）', '印度（新德里）', NULL, 'Abhilekh Patal數位典藏;吉爾吉特手稿', NULL, '印度國家檔案館（數位化）', '2026-08-01', 'ARR', '官方檔案館典藏，需申請閱覽', '已收錄 metadata', NULL, '南亞最大檔案庫', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1301, 'Abhilekh Patal數位檔庫', '印度國家檔案館（NAI）', '1748–現代', 72, 1, '印度國家檔案館（NAI）', 'IN-ST-25', 'https://www.abhilekh-patal.in/', 'en;hi;fa', 'NAI官方數位檢索平台，索引約700萬筆檔案・已數位化30萬筆（1,500萬頁），提供Page on Demand與Digitize on Demand服務，涵蓋莫臥兒末期至獨立後檔案，為印度官方檔案之線上主庫', 'Abhilekh Patal;數位檔案;印度國家檔案館;檔案檢索;英屬印度', '英屬印度（1858–1947）', '印度（新德里）', NULL, '印度國家檔案館東印度公司與英屬印度檔案', NULL, '印度國家檔案館（數位典藏）', '2026-08-01', 'ARR', '官方檔案數位庫，線上檢索', '已收錄 metadata', NULL, '印度官方檔案線上主庫', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1302, '英屬印度內政部政治檔案（Home Political）', '印度內政部／英屬印度政府', '約1880年代–1947', 72, 1, '印度國家檔案館（NAI）', 'IN-ST-26', 'https://www.abhilekh-patal.in/', 'en;hi;ur', '內政部Political-I/Internal系列：不合作運動・騷亂・學生運動・情治監控等印度獨立運動第一手檔案，已於Abhilekh Patal數位公開，為研究甘地時代民族運動之核心官方文獻', '獨立運動;不合作運動;內政部檔案;政治檔案;印度國族主義', '英屬印度（1858–1947）', '印度（新德里）', NULL, '甘地遺產入口;自由運動檔案', NULL, '印度國家檔案館（數位典藏）', '2026-08-01', 'ARR', '官方檔案數位庫，線上檢索', '已收錄 metadata', NULL, '印度獨立運動核心檔案', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1303, '印度人口普查數位圖書館（1872–2011）', '印度人口普查局', '1872–2011', 72, 6, '印度人口普查局', 'IN-ST-27', 'https://censusindia.gov.in/nada/', 'en;hi', '自1872年首度全印普查起之完整人口・宗教・種姓・職業統計報告數位庫，為英屬印度與印度共和社會經濟史最重要量化史料，含各年份普查報告全文數位影像', '人口普查;統計;種姓;社會經濟史;量化史料', '英屬印度（1858–1947）', '印度全國', NULL, '《帝國印度方志》;印度國家圖書館', NULL, '印度人口普查局（數位圖書館）', '2026-08-01', 'ARR', '官方統計數位庫，線上瀏覽', '已收錄 metadata', NULL, '印度社會經濟量化主庫', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1304, '印度國家圖書館（加爾各答）印刷品與期刊', '印度國家圖書館（Kolkata）', '18–20世紀', 72, 3, '印度國家圖書館（加爾各答）', 'IN-ST-28', 'https://nationallibrary.gov.in/', 'bn;hi;ta;en', '依1954送存法收存全印出版物，館藏含早期孟加拉語・印地語・坦米爾語印本書刊與地圖；逾2.5萬冊古籍數位化上傳至Indian Culture Portal，為印度出版史與知識傳播之國家書庫', '國家圖書館;報刊;印刷品;孟加拉語;數位典藏', '英屬印度（1858–1947）', '印度（西孟加拉邦・加爾各答）', NULL, '印度人口普查數位圖書館;《帝國印度方志》', NULL, '印度國家圖書館（數位化）', '2026-08-01', 'ARR', '官方圖書館典藏，線上瀏覽', '已收錄 metadata', NULL, '印度國家出版書庫', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1305, '《帝國印度方志》（Imperial Gazetteer of India）', '英屬印度政府官修方志', '1860–1940', 72, 2, '印度文化部（Indian Culture Portal）', 'IN-ST-29', 'https://www.indianculture.gov.in/', 'en', '印度文化數位入口（NVLI）數位重刊1908年版《Imperial Gazetteer of India》全26卷及各區方志（District Gazetteers），為英屬印度地理・行政・經濟最完整官修文獻，反映殖民治理之知識體系', '帝國印度方志;方志;英屬印度;地理;殖民知識', '英屬印度（1858–1947）', '印度全國', NULL, '印度人口普查數位圖書館;印度國家圖書館', NULL, '印度文化部（Indian Culture Portal）', '2026-08-01', 'ARR', '官方數位重刊，免費開放', '已收錄 metadata', NULL, '英屬印度官修方志大全', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1306, '自由運動檔案（Freedom Archive）', '印度文化部（印度獨立75週年）', '1857–1947', 72, 3, '印度文化部（Indian Culture Portal）', 'IN-ST-30', 'https://www.indianculture.gov.in/', 'en;hi;ur', '文化部為印度獨立75週年建置之殖民抵抗運動史料庫，匯集老報章剪報・照片・檔案文件與口述影像，含「Unsung Heroes」無名英雄專欄，為印度自由鬥爭之綜合數位史料', '自由運動;獨立運動;報刊;口述歷史;印度獨立', '英屬印度（1858–1947）', '印度全國', NULL, '英屬印度內政部政治檔案;甘地遺產入口', NULL, '印度文化部（Indian Culture Portal）', '2026-08-01', 'ARR', '官方數位典藏，免費開放', '已收錄 metadata', NULL, '印度自由鬥爭綜合史料庫', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1307, 'India Office Records（IOR）印度辦公室檔案', '英國東印度公司／印度事務部', '1600–1948', 72, 1, '大英圖書館', 'IN-ST-31', 'https://searcharchives.bl.uk/', 'en;hi;fa;ur', '大英圖書館藏英屬印度核心官方檔案全宗：東印度公司（1600–1858）與印度事務部（1858–1947）行政通訊・Proceedings・土地調查・地圖與照片，全長約15公里，為英印殖民統治最完整官方記錄', 'IOR;印度辦公室檔案;東印度公司;英屬印度;殖民檔案', '英屬印度（1858–1947）', '印度・英國（倫敦）', NULL, 'Qatar Digital Library;英國國家檔案館IOR目錄', NULL, '大英圖書館（檔案館藏）', '2026-08-01', 'ARR', '官方檔案館典藏，線上檢索', '已收錄 metadata', NULL, '英印殖民統治官方總檔', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1308, 'Qatar Digital Library數位化IOR（QDL）', '卡達國家圖書館×大英圖書館', '約1763–1951', 72, 1, '卡達國家圖書館', 'IN-ST-32', 'https://www.qdl.qa/en', 'en;ar', '卡達國家圖書館與大英圖書館合作免費開放約50萬頁IOR數位影像，含印度洋・波斯灣駐地檔・海圖・照片與錄音，英阿雙語檢索，為英屬印度洋檔案數位公開之旗艦平台', 'Qatar Digital Library;IOR;印度洋;殖民檔案;數位典藏', '英屬印度（1858–1947）', '印度洋・波斯灣（印度沿岸）', NULL, 'India Office Records（IOR）', NULL, '卡達國家圖書館（數位典藏）', '2026-08-01', 'ARR', '數位合作典藏，免費開放', '已收錄 metadata', NULL, '印度洋殖民檔案數位平台', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1309, '英國國家檔案館IOR目錄（Discovery）', '英國國家檔案館', '1600–1948', 72, 1, '英國國家檔案館', 'IN-ST-33', 'https://discovery.nationalarchives.gov.uk/', 'en', '英國國家檔案館Discovery平台收錄75萬筆IOR目錄描述（大英圖書館釋出），篩選「British Library: Asian and African Studies」即可檢索英屬印度殖民檔案；IOR原件實藏於大英圖書館，TNA另藏印度相關CO・FO・WO軍事外交系列', 'Discovery;IOR;英國國家檔案館;殖民檔案;檔案檢索', '英屬印度（1858–1947）', '印度・英國（倫敦）', NULL, 'India Office Records（IOR）', NULL, '英國國家檔案館（Discovery平台）', '2026-08-01', 'ARR', '官方檔案目錄，線上檢索', '已收錄 metadata', NULL, 'IOR目錄跨庫檢索入口', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1310, '甘地遺產入口（《甘地全集》100卷）', '甘地（Mahatma Gandhi）', '1869–1948', 72, 4, '甘地遺產入口（薩巴馬蒂道院）', 'IN-ST-34', 'https://www.gandhiheritageportal.org/', 'en;hi;gu', '甘地遺產入口受印度文化部委託建置，收錄《Collected Works of Mahatma Gandhi》英/印地/古吉拉特語全100卷・甘地著作初版與《Young India》等期刊，約50萬頁，附照片・電影與錄音，為全球最大甘地數位檔案', '甘地;甘地全集;非暴力運動;獨立運動;人物檔案', '英屬印度（1858–1947）', '印度（阿黙達巴德・薩巴馬蒂道院）', NULL, '英屬印度內政部政治檔案;自由運動檔案', NULL, '甘地遺產入口（薩巴馬蒂道院）', '2026-08-01', 'ARR', '官方數位典藏，免費開放', '已收錄 metadata', NULL, '全球最大甘地數位檔案', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1311, '甘地紀念館（Gandhi Smriti）', '甘地紀念與達山委員會', '1947–1948', 73, 4, '甘地紀念與達山委員會', 'IN-ST-35', 'https://www.gandhismriti.gov.in/', 'en;hi', '甘地遇刺地（老比爾拉宅邸）暨國家紀念館，保存其生命最後144日起居原貌・手稿・照片與「From Mohan to Mahatma」特展數位資料，為甘地晚年與殉道之國家記憶', '甘地紀念館;甘地;殉道;國家紀念館;人物檔案', '印度共和（1947–迄今）', '印度（新德里）', NULL, '甘地遺產入口;國家甘地博物館', NULL, '甘地紀念與達山委員會（典藏）', '2026-08-01', 'ARR', '官方紀念館典藏，線上瀏覽', '已收錄 metadata', NULL, '甘地遇刺地國家記憶', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1312, '國家甘地博物館（德里）', '甘地與卡司都麗家族文物', '1869–1948', 73, 4, '國家甘地博物館', 'IN-ST-36', 'https://www.gandhimuseum.org/', 'en;hi', '德里國家甘地博物館典藏甘地與卡司都麗遺物・著作・照片與影音，圖書館為全球最大甘地主題藏書之一，官方站提供文物目錄與展覽資訊，為甘地物質與精神遺產之國家典藏', '國家甘地博物館;甘地;遺物;人物檔案;博物館', '印度共和（1947–迄今）', '印度（新德里）', NULL, '甘地紀念館;甘地遺產入口', NULL, '國家甘地博物館（典藏）', '2026-08-01', 'ARR', '官方博物館典藏，線上瀏覽', '已收錄 metadata', NULL, '甘地遺物國家典藏', 'SA') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1313, '印度國家數位圖書館（NDLI）', '印度理工學院克勒格布爾', '跨各時期', 73, 6, '印度理工學院克勒格布爾（NDLI）', 'IN-ST-37', 'https://ndl.iitkgp.ac.in/', 'en;hi;ta;bn', '2018年上線之單一窗口全國數位圖書館，聚合各圖書館・博物館・檔案館數位資源逾2億件，可跨庫全文檢索，為印度知識資源之總入口（以現代教育資源為主、古籍為輔）', 'NDLI;數位圖書館;教育資源;數位典藏;知識入口', '印度共和（1947–迄今）', '印度全國', NULL, '印度國家圖書館（加爾各答）', NULL, '印度理工學院克勒格布爾（NDLI）', '2026-08-01', 'ARR', '官方數位平台，免費開放', '已收錄 metadata', NULL, '印度知識資源總入口', 'SA') ON CONFLICT (id) DO NOTHING;

SELECT setval('sources_id_seq', 1313) WHERE NOT EXISTS (SELECT 1 FROM sources WHERE id = 1313);
SELECT setval('sources_id_seq', (SELECT COALESCE(MAX(id), 0) FROM sources));

-- === 3. 史料←→資料類型 ===
INSERT INTO source_materials (source_id, material_type_id) VALUES
  (1277, 2),
  (1278, 2),
  (1279, 1),
  (1279, 2),
  (1280, 1),
  (1280, 2),
  (1281, 1),
  (1281, 2),
  (1282, 2),
  (1283, 2),
  (1284, 2),
  (1285, 1),
  (1285, 2),
  (1286, 2),
  (1287, 2),
  (1288, 1),
  (1288, 2),
  (1288, 4),
  (1289, 1),
  (1289, 2),
  (1290, 1),
  (1290, 2),
  (1291, 1),
  (1291, 2),
  (1292, 2),
  (1292, 1),
  (1293, 2),
  (1293, 1),
  (1294, 2),
  (1295, 2),
  (1295, 3),
  (1296, 2),
  (1296, 3),
  (1297, 2),
  (1297, 3),
  (1298, 1),
  (1298, 3),
  (1298, 2),
  (1299, 1),
  (1299, 2),
  (1300, 1),
  (1300, 3),
  (1301, 1),
  (1301, 2),
  (1302, 1),
  (1302, 2),
  (1303, 1),
  (1303, 2),
  (1304, 1),
  (1304, 3),
  (1305, 1),
  (1305, 3),
  (1306, 2),
  (1306, 1),
  (1306, 4),
  (1307, 1),
  (1307, 3),
  (1307, 2),
  (1308, 1),
  (1308, 3),
  (1308, 2),
  (1308, 4),
  (1309, 1),
  (1310, 1),
  (1310, 2),
  (1310, 4),
  (1311, 2),
  (1311, 4),
  (1312, 2),
  (1312, 1),
  (1313, 1),
  (1313, 2),
  (1313, 3),
  (1313, 4)
ON CONFLICT DO NOTHING;

-- === 4. 史料←→來源機構 ===
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (1277, 349, 'source'),
  (1277, 349, 'contributor'),
  (1278, 343, 'source'),
  (1278, 343, 'contributor'),
  (1279, 335, 'source'),
  (1279, 335, 'contributor'),
  (1280, 354, 'source'),
  (1280, 342, 'contributor'),
  (1281, 344, 'source'),
  (1281, 344, 'contributor'),
  (1282, 343, 'source'),
  (1282, 343, 'contributor'),
  (1283, 343, 'source'),
  (1283, 343, 'contributor'),
  (1284, 345, 'source'),
  (1284, 345, 'contributor'),
  (1285, 347, 'source'),
  (1285, 347, 'contributor'),
  (1286, 356, 'source'),
  (1286, 356, 'contributor'),
  (1287, 336, 'source'),
  (1287, 336, 'contributor'),
  (1288, 351, 'source'),
  (1288, 351, 'contributor'),
  (1289, 352, 'source'),
  (1289, 352, 'contributor'),
  (1290, 353, 'source'),
  (1290, 353, 'contributor'),
  (1291, 338, 'source'),
  (1291, 338, 'contributor'),
  (1292, 352, 'source'),
  (1292, 352, 'contributor'),
  (1293, 357, 'source'),
  (1293, 357, 'contributor'),
  (1294, 345, 'source'),
  (1294, 345, 'contributor'),
  (1295, 343, 'source'),
  (1295, 343, 'contributor'),
  (1296, 343, 'source'),
  (1296, 343, 'contributor'),
  (1297, 343, 'source'),
  (1297, 343, 'contributor'),
  (1298, 75, 'source'),
  (1298, 75, 'contributor'),
  (1299, 350, 'source'),
  (1299, 350, 'contributor'),
  (1300, 347, 'source'),
  (1300, 347, 'contributor'),
  (1301, 347, 'source'),
  (1301, 347, 'contributor')
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (1302, 347, 'source'),
  (1302, 347, 'contributor'),
  (1303, 341, 'source'),
  (1303, 341, 'contributor'),
  (1304, 346, 'source'),
  (1304, 346, 'contributor'),
  (1305, 342, 'source'),
  (1305, 342, 'contributor'),
  (1306, 342, 'source'),
  (1306, 342, 'contributor'),
  (1307, 6, 'source'),
  (1307, 6, 'contributor'),
  (1308, 337, 'source'),
  (1308, 337, 'contributor'),
  (1309, 94, 'source'),
  (1309, 94, 'contributor'),
  (1310, 340, 'source'),
  (1310, 340, 'contributor'),
  (1311, 339, 'source'),
  (1311, 339, 'contributor'),
  (1312, 355, 'source'),
  (1312, 355, 'contributor'),
  (1313, 348, 'source'),
  (1313, 348, 'contributor')
ON CONFLICT DO NOTHING;

-- === 完成 ===
