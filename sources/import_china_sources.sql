-- ============================================================
-- 東亞歷史權威史料庫 — 中國史料匯入 SQL（增量模式）
-- 由 Import-ChinaToSupabase.ps1 v2 自動產生
-- ============================================================

-- === 1. 來源機構（僅新增者） ===

SELECT setval('institutions_id_seq', 195);

-- === 2. 主要史料 ===
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (873, '拉施特《史集》（波斯文世界史）', '拉施特（波斯）', '元（1311）', 21, 7, '中央研究院', 'CN-ST-YUAN-JAMI-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '波斯伊利汗國宰相拉施特奉敕編《史集》，成於1311年，為波斯文世界通史巨著，其「蒙古史」部分據蒙古文秘籍與口述編纂，記成吉思汗祖先系譜與蒙元史事，與《蒙古秘史》《元史》互證補缺，為研究蒙古帝國史最珍貴之域外史料', '史集;拉施特;波斯文;伊利汗國;蒙古帝國', '元', '全中國', NULL, '蒙古秘史;元史;耶律楚材西遊錄', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢譯本已出版', '已收錄 metadata', NULL, '波斯文記蒙古帝國之巨著', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (874, '新安沉船與元代海上貿易', '中國國家博物館', '元（1323）', 21, 7, '中國國家博物館', 'CN-ST-YUAN-XINAN-01', NULL, 'zh', '新安沉船為1975年於韓國新安海域打撈之元代中國海船，船長34米，出水中國瓷器二萬餘件（龍泉窯、景德鎮窯）、銅錢八百餘萬枚及胡椒、香料，據貨物推定為1323年自慶元（寧波）駛往日本之貿易船，為元朝海上貿易規模最完整之沉船實證', '新安沉船;元代沉船;龍泉窯;海上貿易;慶元港', '元', '浙江寧波（出航）;韓國新安', NULL, '泉州後渚沉船;南宋海外貿易與市舶司史料;元青花瓷器', '中國國家博物館', NULL, '2026-07-31', 'ARR', '出水文物分藏中韓，整理報告已出版', '已收錄 metadata', NULL, '元代海上貿易之最完整沉船實證', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (875, '泉州後渚沉船（宋元海船）', '泉州海外交通史博物館', '1974', 21, 7, '泉州海外交通史博物館', 'CN-ST-YUAN-HOUZHU-01', NULL, 'zh', '1974年於泉州後渚港發掘之宋元海船殘體，船身長24米，為福船型尖底海船，13艙水密分隔，船中出土香料（沉香、龍腦）、陶瓷與木牌簽，現陳列於泉州海外交通史博物館，為中國古代造船技術與海上絲路航運之珍貴實物', '泉州後渚;福船;宋元海船;造船;香料', '元', '福建泉州', NULL, '新安沉船;南宋海外貿易與市舶司史料', '泉州海外交通史博物館', NULL, '2026-07-31', 'ARR', '館藏數位影像依館方規定', '已收錄 metadata', NULL, '中國古造船技術之珍貴實物', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (876, '元代京杭大運河與水利工程史料', '中央研究院', '元（13世紀）', 21, 1, '中央研究院', 'CN-ST-YUAN-YUNHE-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '元世祖至元年間開鑿會通河、通惠河，貫通京杭大運河全線，使南糧北運直達大都，並設都水監治河，郭守敬主持通惠河工程、開引白浮泉水入城，史料見《元史·河渠志》與《農桑輯要》，為元朝漕運體系與水利工程之核心記載', '京杭大運河;通惠河;會通河;郭守敬;漕運', '元', '全中國', NULL, '金中都水關遺址;元史', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '京杭運河全線貫通之關鍵', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (877, '元朝行省制度與地方行政史料', '中央研究院', '元（1260–1368）', 21, 1, '中央研究院', 'CN-ST-YUAN-XINGSHENG-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '元朝首創行中書省（行省）制度，除腹里外分設嶺北、遼陽、河南江北、陝西、四川、甘肅、雲南、江浙、江西、湖廣等行省，統轄路府州縣，開中國省制之先河，兼行宣政院轄吐蕃、征東行省轄高麗等特殊建制，史料見《元史·地理志》《百官志》', '行省制度;行中書省;元朝;地方行政;省制', '元', '全中國', NULL, '元史;元典章;元朝與高麗關係史料', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '中國省制之起源', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (878, '八思巴文碑刻與文獻（國字）', '北京市文物研究所', '元（1269–）', 21, 8, '北京市文物研究所', 'CN-ST-YUAN-BASIPA-01', NULL, 'zh', '元世祖命八思巴創制蒙古新字（八思巴字），至元六年（1269）頒行作為「國字」拼寫各民族語言，現存八思巴字碑刻以居庸關雲臺六體石刻、各地聖旨碑及八思巴字錢鈔為代表，為蒙古語文與元朝多語文並行之制度實證', '八思巴字;蒙古新字;居庸關雲臺;碑刻;國字', '元', '全中國', NULL, '女真文字石刻;元史;泉州穆斯林石刻', '北京市文物研究所', NULL, '2026-07-31', 'ARR', '文保單位影像依相關規定使用', '已收錄 metadata', NULL, '元朝國字之碑刻實證', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (879, '北京妙應寺白塔（阿尼哥）', '北京市文物研究所', '元至元十六年（1279）', 21, 5, '北京市文物研究所', 'CN-ST-YUAN-BAITA-01', NULL, 'zh', '北京妙應寺白塔建於元至元十六年（1279），為尼泊爾工匠阿尼哥主持營造之覆缽式磚石塔，通高50.9米，為元大都現存最重要之地面建築，象徵蒙元與西藏佛教之密切關係，亦為中國與南亞建築文化交流之見證', '妙應寺白塔;阿尼哥;覆缽式塔;藏傳佛教;尼泊爾', '元', '北京', NULL, '元大都城址考古;金代佛教遺存', '北京市文物研究所', NULL, '2026-07-31', 'ARR', '文保單位影像依相關規定使用', '已收錄 metadata', NULL, '尼泊爾工匠主持之元大都地標', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (880, '耶律楚材《西遊錄》（蒙古西征紀行）', '耶律楚材', '元（1228）', 21, 7, '中央研究院', 'CN-ST-YUAN-XIYOULU-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '耶律楚材於成吉思汗西征期間扈從西行六萬餘里，撰《西遊錄》記西域道里、山川、城郭與風俗，兼述蒙元興起，為13世紀上半葉中國人記中亞西域之最重要行記，與邱處機《長春真人西遊記》並為蒙元經略西域之第一手史料', '西遊錄;耶律楚材;蒙古西征;西域;行記', '元', '中亞', NULL, '蒙古秘史;史集;馬可波羅遊記', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '蒙元經略西域之第一手行記', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (881, '洪洞水神廟明應王殿元雜劇壁畫', '山西省古建築保護研究所', '元泰定元年（1324）', 21, 5, '山西省古建築保護研究所', 'CN-ST-YUAN-BIHUA-01', NULL, 'zh', '山西洪洞廣勝寺水神廟明應王殿南壁東側元雜劇演出壁畫，繪於元泰定元年（1324），橫幅畫面中戲臺、演員行當、伴奏樂隊俱全，橫額書「大行散樂忠都秀在此作場」，為元雜劇演劇實況之唯一存世壁畫，中國戲曲史之國寶級圖像', '洪洞水神廟;明應王殿;元雜劇;壁畫;戲曲史', '元', '山西臨汾（洪洞）', NULL, '元刊雜劇三十種;趙城金藏', '山西省古建築保護研究所', NULL, '2026-07-31', 'ARR', '文保單位影像依相關規定使用', '已收錄 metadata', NULL, '元雜劇演劇實況之唯一壁畫', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (882, '元朝與高麗、日本關係史料', '中央研究院', '元（1274–1368）', 21, 1, '中央研究院', 'CN-ST-YUAN-GAOLI-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '元朝兩度東征日本（1274、1281），並設征東行省轄高麗、遼東，日本鎌倉幕府拒命，元日關係以「文永·弘安之役」與往還國書為要；高麗則與元王室聯姻通婚。史料見《元史·日本傳》《高麗史》及元人文集，為東亞國際關係史之重要文獻', '元日關係;征東行省;高麗;蒙古來襲;東亞', '元', '東亞', NULL, '元史;史集;遣隋使', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '蒙古兩度征日之東亞外交', 'CN') ON CONFLICT (id) DO NOTHING;

SELECT setval('sources_id_seq', 882) WHERE NOT EXISTS (SELECT 1 FROM sources WHERE id = 882);
SELECT setval('sources_id_seq', (SELECT COALESCE(MAX(id), 0) FROM sources));

-- === 3. 史料←→資料類型 ===
INSERT INTO source_materials (source_id, material_type_id) VALUES
  (873, 1),
  (874, 2),
  (874, 1),
  (875, 2),
  (875, 1),
  (876, 1),
  (877, 1),
  (878, 2),
  (878, 1),
  (879, 2),
  (880, 1),
  (881, 2),
  (882, 1)
ON CONFLICT DO NOTHING;

-- === 4. 史料←→來源機構 ===
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (873, 7, 'source'),
  (873, 7, 'publisher'),
  (874, 136, 'source'),
  (874, 136, 'publisher'),
  (875, 191, 'source'),
  (875, 191, 'publisher'),
  (876, 7, 'source'),
  (876, 7, 'publisher'),
  (877, 7, 'source'),
  (877, 7, 'publisher'),
  (878, 188, 'source'),
  (878, 188, 'publisher'),
  (879, 188, 'source'),
  (879, 188, 'publisher'),
  (880, 7, 'source'),
  (880, 7, 'publisher'),
  (881, 192, 'source'),
  (881, 192, 'publisher'),
  (882, 7, 'source'),
  (882, 7, 'publisher')
ON CONFLICT DO NOTHING;

-- === 完成 ===
