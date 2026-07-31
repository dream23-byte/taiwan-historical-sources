-- ============================================================
-- 東亞歷史權威史料庫 — 中國史料匯入 SQL（增量模式）
-- 由 Import-ChinaToSupabase.ps1 v2 自動產生
-- ============================================================

-- === 1. 來源機構（僅新增者） ===

SELECT setval('institutions_id_seq', 196);

-- === 2. 主要史料 ===
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (933, '《清實錄》', '清朝官方（歷朝實錄館）', '清（1636–1912）', 23, 1, '中央研究院', 'CN-ST-QING-SHILU-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '清代官修編年史，太祖至宣統十二朝凡四千四百餘卷，記詔令、奏疏、軍政與朝章國故，歷朝實錄館據檔冊與起居注編成，為清史研究最基本之第一手官方檔案，今通行本為1937年偽滿影印之《大清歷朝實錄》', '清實錄;編年史;官方檔案;清朝;實錄館', '清', '全中國', NULL, '清史稿;大清會典;康熙起居注', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '清史研究之基本史源', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (934, '《大清會典》', '清朝官方（歷朝會典館）', '清（1690–1899）', 23, 1, '中央研究院', 'CN-ST-QING-HUIDIAN-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '清代官修行政法典，以會典為綱、則例為目，歷康熙、雍正、乾隆、嘉慶、光緒五朝續修，光緒朝會典事例一千二百二十卷，備載職官、儀制、戶賦、兵刑諸制，為清代行政制度最系統之官方文獻', '大清會典;則例;官制;行政法典;清朝', '清', '全中國', NULL, '清實錄;清史稿;清史列傳', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '清代行政制度之總綱', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (935, '軍機處檔案與廷寄', '清朝軍機處', '清（1729–1911）', 23, 1, '中國第一歷史檔案館', 'CN-ST-QING-JUNJICHU-01', NULL, 'zh', '雍正七年（1729）設軍機處掌機要章奏與廷寄，所存錄副奏摺、上諭檔、月摺包、電報檔等檔案達九百萬件，現藏中國第一歷史檔案館，為清代中樞決策與地方奏報最核心之官方檔案群', '軍機處;廷寄;錄副奏摺;上諭檔;檔案', '清', '全中國;北京', NULL, '清代奏摺與硃批奏摺;清實錄', '中國第一歷史檔案館', NULL, '2026-07-31', 'ARR', '館藏檔案需申請調閱', '已收錄 metadata', NULL, '清代中樞政務之檔案核心', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (936, '《清史稿》', '趙爾巽等（清史館）', '民國十六年（1927）', 23, 1, '中央研究院', 'CN-ST-QING-QINGSHIGAO-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '民國三年設清史館、趙爾巽任館長，纂《清史稿》五百三十六卷，依紀傳體記清朝興亡，雖未及定稿、刊行後復遭查禁，然保存大量清季檔案掌故，為《清實錄》外最完整之清代史籍', '清史稿;趙爾巽;清史館;紀傳體;清代', '清', '全中國', NULL, '清實錄;清史列傳', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '清代最後一部官修史稿', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (937, '清代奏摺與硃批奏摺', '清朝皇帝（康熙至宣統）', '清（1684–1911）', 23, 1, '中國第一歷史檔案館', 'CN-ST-QING-ZOUZHE-01', NULL, 'zh', '奏摺為清代臣工直達皇帝之密奏，康熙中後期形成制度，雍正朝制度化並以硃筆批示，中國第一歷史檔案館藏硃批奏摺約五十萬件，為清代君臣互動與地方實況之第一手檔案', '奏摺;硃批;雍正皇帝;密奏;檔案', '清', '全中國', NULL, '軍機處檔案與廷寄;清實錄', '中國第一歷史檔案館', NULL, '2026-07-31', 'ARR', '館藏檔案需申請調閱', '已收錄 metadata', NULL, '清代君臣溝通之第一手檔案', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (938, '《籌辦夷務始末》', '清朝總理各國事務衙門（編）', '清（1836–1874）', 23, 1, '中央研究院', 'CN-ST-QING-CHOUBAN-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '道光、咸豐、同治三朝《籌辦夷務始末》凡二百六十卷，輯錄鴉片戰爭、英法聯軍及同治中興時期與各國交涉之諭旨、奏摺、照會，為晚清對外交涉最完整之官方檔案彙編', '籌辦夷務始末;鴉片戰爭;英法聯軍;對外交涉;晚清', '清', '全中國;東南沿海', NULL, '海國圖志與瀛寰志略;清代海關統計', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '晚清對外交涉之檔案總彙', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (939, '太平天國檔案與史料', '清朝官方／太平天國政權', '清（1851–1864）', 23, 1, '中國第一歷史檔案館', 'CN-ST-QING-TAIPING-01', NULL, 'zh', '太平天國1851年金田起義、1853年定都天京、1864年敗亡，其《天朝田畝制度》《資政新篇》與清方軍機處檔案、曾國藩奏稿等載其政制、田政與戰事，英國檔案並存太平天國官書印本，為晚清最大內戰之核心史料', '太平天國;洪秀全;天京;曾國藩;晚清', '清', '廣西;湖南;湖北;江蘇;浙江;安徽', NULL, '籌辦夷務始末;清史稿', '中國第一歷史檔案館', NULL, '2026-07-31', 'ARR', '館藏檔案需申請調閱', '已收錄 metadata', NULL, '晚清最大內戰之檔案實錄', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (940, '戊戌變法與晚清新政史料', '康有為／梁啟超／清朝官方', '清（1895–1911）', 23, 1, '中央研究院', 'CN-ST-QING-WUXU-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '甲午戰後變法思潮勃興，光緒二十四年（1898）戊戌維新百日而敗，庚子後清廷再行新政、廢科舉、練新軍、設諮議局，《光緒朝東華錄》、康梁文集與新政檔冊載其始末，為中國近代化轉型之關鍵文獻', '戊戌變法;維新;康有為;梁啟超;清末新政', '清', '全中國', NULL, '清代科舉制度史料;辛亥革命與清帝退位史料', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '晚清變法與改革之要籍', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (941, '辛亥革命與清帝退位史料', '清朝內閣／中華民國臨時政府', '清（1911–1912）', 23, 1, '中國第一歷史檔案館', 'CN-ST-QING-XINHAI-01', NULL, 'zh', '宣統三年（1911）武昌起義，各省相繼獨立，清廷起用袁世凱與革命軍議和，宣統三年十二月二十五日頒《清帝退位詔書》結束清朝兩百六十八年統治，詔書、電報與《辛亥革命回憶錄》等載其全過程', '辛亥革命;武昌起義;清帝退位;袁世凱;宣統帝', '清', '湖北;南京;北京', NULL, '戊戌變法與晚清新政史料;清史稿', '中國第一歷史檔案館', NULL, '2026-07-31', 'ARR', '館藏檔案需申請調閱', '已收錄 metadata', NULL, '清朝終結之第一手記錄', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (942, '《大清一統志》', '清朝官方（一統志館）', '清（1743–1842）', 23, 2, '中央研究院', 'CN-ST-QING-YITONGZHI-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '清修《大清一統志》歷康、乾、嘉三朝成書五百六十卷，以省府州縣為綱，備載疆域、山川、關隘、古蹟、田賦與人物，為清代全國地理總志與方志之集大成', '大清一統志;地理總志;方志;疆域;山川', '清', '全中國', NULL, '皇輿全覽圖與乾隆內府輿圖;大清會典', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '清代全國地理總志', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (943, '《皇輿全覽圖》與《乾隆內府輿圖》', '康熙帝（敕測）／白晉等（測繪）', '清（1708–1759）', 23, 2, '中國國家圖書館', 'CN-ST-QING-YUTU-01', NULL, 'zh', '康熙四十七年（1708）起命白晉、杜德美等耶穌會士以經緯測量繪《皇輿全覽圖》（1718），乾隆朝再補測新疆成《乾隆內府輿圖》，為中國史上首次科學實測之全國地圖，奠定清代疆域測繪之基', '皇輿全覽圖;乾隆內府輿圖;傳教士;測繪;疆域', '清', '全中國;亞洲內陸', NULL, '大清一統志', '中國國家圖書館', NULL, '2026-07-31', 'UNCLEAR', '國圖藏圖需到館閱覽', '已收錄 metadata', NULL, '中國首次科學實測全國地圖', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (944, '《清史列傳》與清代人物傳記', '清朝國史館（輯）', '清（17–20世紀）', 23, 4, '中央研究院', 'CN-ST-QING-RENWU-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '《清史列傳》八十卷收清代臣工傳記，係清國史館列傳之傳鈔本，民國十七年上海中華書局排印行世，《碑傳集》《續碑傳集》《國朝耆獻類徵初編》並輯碑誌傳狀，為清代人物傳記最系統之彙編', '清史列傳;國史館;碑傳集;人物傳記;清代人物', '清', '全中國', NULL, '清史稿;清實錄', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '清代人物傳記之淵藪', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (945, '《康熙起居注》', '清朝起居注館', '清（1667–1722）', 23, 4, '中央研究院', 'CN-ST-QING-KANGXI-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '清康熙朝起居注逐日記載皇帝言行、朝會與批答，記西學東漸、治河、征噶爾丹與諸王廢立諸大事尤詳，今存稿本經整理為《康熙起居注》行世，為康熙一朝政務運作之最直接記錄', '康熙起居注;康熙皇帝;起居注;清代', '清', '全中國', NULL, '清實錄;清史列傳', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '康熙一朝政務之逐日實錄', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (946, '《康熙南巡圖》與清代宮廷繪畫', '王翬等（清宮畫家）', '清（1689–1766）', 23, 5, '故宮博物院', 'CN-ST-QING-NANXUN-01', NULL, 'zh', '康熙二十八年（1689）第二次南巡，王翬等繪《康熙南巡圖》十二卷，寫實描繪江南山川市鎮與巡幸儀仗，今分藏北京故宮及海外；清代宮廷繪畫並有郎世寧等中西合璧之作，為清代社會與宮廷生活之重要圖像史料', '康熙南巡圖;王翬;郎世寧;宮廷繪畫;圖像史料', '清', '北京;江南', NULL, '清末老照片與影像史料;圓明園遺址與考古', '故宮博物院', NULL, '2026-07-31', 'ARR', '故宮藏品影像依院方規定', '已收錄 metadata', NULL, '清代宮廷社會之圖像實錄', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (947, '清末老照片與影像史料', '外國攝影師／中國照相館', '清（1860–1911）', 23, 5, '中國國家圖書館', 'CN-ST-QING-PHOTO-01', NULL, 'zh', '照相術道光末傳入中國，圓明園劫前舊影、咸豐至宣統間宮廷與社會百態之老照片散藏全球圖書館檔案館，中國國家圖書館、哈佛燕京圖書館等之清末照片為晚清社會生活最重要之影像史料', '老照片;攝影術;晚清;影像史料;圖像資料', '清', '全中國;北京', NULL, '康熙南巡圖與清代宮廷繪畫;圓明園遺址與考古', '中國國家圖書館', NULL, '2026-07-31', 'UNCLEAR', '影像分藏全球，數位版漸公開', '已收錄 metadata', NULL, '晚清社會百態之影像實錄', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (948, '清代人口統計與戶口冊', '清朝戶部', '清（1741–1911）', 23, 6, '中央研究院', 'CN-ST-QING-RENKOU-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '乾隆六年（1741）起清朝每年奏報人口，道光十四年（1834）全國逾四億，為清代社會經濟規模之基礎數據，《清史稿·食貨志》、各省戶口冊與《戶部則例》載其制度與數字', '人口統計;戶口;食貨志;保甲;清代', '清', '全中國', NULL, '大清會典;清代災害與荒政史料', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '清代人口資料之基礎', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (949, '海關貿易統計', '清朝總稅務司署', '清（1859–1911）', 23, 6, '中國國家圖書館', 'CN-ST-QING-HAIGUAN-01', NULL, 'zh', '同治二年（1863）赫德任總稅務司後，各口海關逐年登錄進出口貨值、稅收、航運與貿易國別，附各口年度報告，《中國近代海關貿易統計》為清代開埠後對外貿易最完整之統計系統', '海關;貿易統計;赫德;總稅務司;對外貿易', '清', '各通商口岸', NULL, '籌辦夷務始末;山西票號與清代金融', '中國國家圖書館', NULL, '2026-07-31', 'UNCLEAR', '海關統計已影印出版', '已收錄 metadata', NULL, '近代對外貿易之統計系統', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (950, '清宮造辦處與宮廷工藝', '清朝內務府造辦處', '清（1680–1911）', 23, 7, '故宮博物院', 'CN-ST-QING-ZAOBANCHU-01', NULL, 'zh', '內務府造辦處為清代皇家工藝作坊，承造琺瑯、玉器、漆器、琺瑯彩瓷與西洋鐘錶，其《活計檔》逐件登錄製作旨意、匠役與工期，故宮博物院藏造辦處檔案與傳世器物為清代宮廷工藝最系統之實證', '造辦處;內務府;活計檔;宮廷工藝;琺瑯彩', '清', '北京', NULL, '江南織造與官營絲織業;四庫全書', '故宮博物院', NULL, '2026-07-31', 'ARR', '故宮藏品與檔案影像依院方規定', '已收錄 metadata', NULL, '清代皇家工藝之檔案實錄', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (951, '圓明園遺址與考古', '清朝皇家園林／考古團隊', '清（1709–1860）', 23, 7, '北京市文物研究所', 'CN-ST-QING-YUANMINGYUAN-01', NULL, 'zh', '圓明園自康熙末至乾隆朝建成「萬園之園」，兼中西園林建築，咸豐十年（1860）遭英法聯軍焚掠、1900年再遭八國聯軍劫毀，遺址經考古發掘與三園保護規劃，殘構與流散海外文物為近代屈辱之象徵', '圓明園;英法聯軍;遺址考古;大水法;海外流散文物', '清', '北京', NULL, '清末老照片與影像史料;清東陵清西陵與皇家陵寢', '北京市文物研究所', NULL, '2026-07-31', 'ARR', '文保單位影像依相關規定使用', '已收錄 metadata', NULL, '萬園之園之劫餘遺址', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (952, '清東陵、清西陵與皇家陵寢', '清朝皇家陵寢', '清（1663–1911）', 23, 7, '河北省文物考古研究院', 'CN-ST-QING-DONGLING-01', NULL, 'zh', '清陵分遵化清東陵與易縣清西陵，葬帝后妃嬪近兩百人，乾隆裕陵地宮、慈禧定東陵貼金彩繪為最，1977年發掘裕陵地宮，陵區建築、地宮雕刻與碑碣為清代皇家葬制之完整實物', '清東陵;清西陵;裕陵;定東陵;皇家陵寢', '清', '河北遵化;河北易縣', NULL, '圓明園遺址與考古;清代碑刻與金石史料', '河北省文物考古研究院', NULL, '2026-07-31', 'ARR', '文保單位影像依相關規定使用', '已收錄 metadata', NULL, '清代皇家葬制之完整實物', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (953, '清代碑刻與金石史料', '清代各地官署／金石學家', '清（17–20世紀）', 23, 8, '中央研究院', 'CN-ST-QING-BEISHI-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '清代碑碣數量冠絕歷代，御製碑、學宮碑、水利碑與民間墓誌遍布各省，乾嘉金石學輯《金石萃編》《八瓊室金石補正》等，碑刻為清代制度、人物與社會生活之實物文獻', '碑刻;金石學;金石萃編;墓誌;御製碑', '清', '全中國', NULL, '清東陵清西陵與皇家陵寢;清代科舉制度史料', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '清代制度社會之實物文獻', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (954, '《庚子西狩叢談》與庚子事變口述史料', '吳永（口述）／劉治襄（記）', '清光緒二十七年（1901）', 23, 9, '中央研究院', 'CN-ST-QING-GENGZI-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '庚子事變八國聯軍陷北京，慈禧挾光緒西狩西安，懷來知縣吳永迎駕隨行，其口述《庚子西狩叢談》記西逃見聞與宮廷內幕；英人莫理循等亦留親歷紀錄，為義和團與庚子事變之珍貴口述史料', '庚子西狩;吳永;慈禧太后;義和團;口述史料', '清', '北京;山西;陝西', NULL, '清末老照片與影像史料;辛亥革命與清帝退位史料', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '庚子西逃之當事人回憶', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (955, '山西票號與清代金融', '日昇昌等（山西票號）', '清（1823–1911）', 23, 10, '中央研究院', 'CN-ST-QING-PIAOHAO-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '道光三年（1823）平遙日昇昌首創票號經營匯兌存貸，鼎盛時分號遍布全國及日本、南洋，號稱匯通天下；票號賬簿、信稿與《山西票莊史料》為清代金融與商業資本之系統實錄', '山西票號;日昇昌;匯兌;金融史;商業資本', '清', '山西;全中國;日本;南洋', NULL, '清代鹽政與鹽商史料;清代海關統計', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '中國近代銀行之濫觴', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (956, '清代鹽政與鹽商史料', '清朝戶部／兩淮鹽政', '清（1644–1911）', 23, 10, '中央研究院', 'CN-ST-QING-YANZHENG-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '清代鹽業行引岸專賣，兩淮鹽政歲入占全國鹽課之半，揚州鹽商富甲天下，《兩淮鹽法志》《清鹽法志》與鹽商檔案載其制度、利潤與奢靡，為清代官商關係與財政之核心史料', '鹽政;鹽商;兩淮;引岸制度;財政', '清', '揚州;兩淮;全中國', NULL, '山西票號與清代金融;江南織造與官營絲織業', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '清代官商財政之核心', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (957, '江南織造與官營絲織業', '清朝內務府江南織造', '清（1645–1911）', 23, 10, '中央研究院', 'CN-ST-QING-ZHIZAO-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '清設江寧、蘇州、杭州三織造衙署，供內廷綢緞衣料並兼充耳目採訪官場，曹雪芹家族世襲江寧織造，《紅樓夢》即取材其家世，織造檔案與南京雲錦技藝為清代官營絲織業之實錄', '江南織造;雲錦;內務府;曹雪芹;絲織業', '清', '江寧;蘇州;杭州', NULL, '紅樓夢;清宮造辦處與宮廷工藝', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '清代官營絲織之實錄', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (958, '清代科舉制度史料', '清朝禮部', '清（1646–1905）', 23, 11, '中央研究院', 'CN-ST-QING-KEJU-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '清代科舉承明制，三年大比，鄉試會試殿試三級相承，八股取士至光緒三十一年（1905）廢除；鄉會試硃卷、殿試策與《科場條例》存其制度，《儒林外史》諷其積弊，為中國千年科舉之終章', '科舉;八股文;硃卷;殿試;科場', '清', '全中國', NULL, '戊戌變法與晚清新政史料;清史稿', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '中國科舉制度之終章', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (959, '《醫宗金鑑》與清代醫學', '吳謙等（乾隆敕編）', '清乾隆七年（1742）', 23, 11, '中央研究院', 'CN-ST-QING-YIXUE-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '乾隆四年敕吳謙等編《醫宗金鑑》九十卷，為太醫院教科書，分訂正傷寒論、金匱要略、雜病心法、婦科、痘疹諸門；晚清西醫東傳、《醫林改錯》倡解剖，清代醫學為中醫承先啟後之樞紐', '醫宗金鑑;吳謙;太醫院;中醫;醫學史', '清', '全中國', NULL, '本草綱目;瘟疫論', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '清代官修醫典與醫學發展', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (960, '清代災害與荒政史料', '清朝戶部／地方官', '清（1644–1911）', 23, 12, '中央研究院', 'CN-ST-QING-ZAIHAI-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '清代水旱、地震、蝗災頻仍，《清實錄》逐年載報災蠲賑，荒政設常平倉、賑粥、緩徵之制，《荒政輯要》等專書與地方災害檔冊為清代災荒與救濟之系統史料，亦為古氣候重建之基礎資料', '災害;荒政;蠲賑;常平倉;古氣候', '清', '全中國', NULL, '清代人口統計與戶口冊;大清一統志', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '清代災荒與救濟之史料', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (961, '《四庫全書》', '紀昀等（乾隆敕編）', '清乾隆四十七年（1782）', 23, 7, '中國國家圖書館', 'CN-ST-QING-SIKU-01', NULL, 'zh', '乾隆三十八年開四庫全書館，紀昀等總纂，收書三千四百餘種、繕寫七部，分藏文淵、文溯、文津、文源、文匯、文宗、文瀾七閣，為中國古代最大叢書；纂修時寓禁於征、焚改書籍亦存文字獄之史', '四庫全書;紀昀;叢書;七閣;文字獄', '清', '全中國', NULL, '永樂大典殘本;大清一統志', '中國國家圖書館', NULL, '2026-07-31', 'UNCLEAR', '文津閣本藏國圖，數位版公開', '已收錄 metadata', NULL, '中國古代最大叢書', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (962, '《紅樓夢》', '曹雪芹（著）／高鶚（續）', '清乾隆五十六年（1791）', 23, 7, '中華書局', 'CN-ST-QING-HONGLOUMENG-01', NULL, 'zh', '曹雪芹著《紅樓夢》一百二十回，前八十回脂硯齋批本、後四十回高鶚續成，以賈府興衰寫貴族家庭與世情百態，為中國古典小說之顛峰，亦為清代社會、商業、園林與女性生活之百科式文學史料', '紅樓夢;曹雪芹;脂硯齋;世情小說;古典小說', '清', '北京;金陵', NULL, '江南織造與官營絲織業;聊齋誌異與清代文言小說', '中華書局', NULL, '2026-07-31', 'ARR', '中華書局校點本通行', '已收錄 metadata', NULL, '中國古典小說之顛峰', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (963, '《聊齋誌異》與清代文言小說', '蒲松齡', '清康熙十八年（1679）', 23, 7, '中央研究院', 'CN-ST-QING-LIAOZHAI-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '蒲松齡《聊齋誌異》收文言短篇近五百篇，假狐鬼仙怪寫世情、刺科場吏治，為中國文言短篇小說之集大成，存手稿本與青柯亭刻本，反映清代中葉民間信仰與士人精神世界', '聊齋誌異;蒲松齡;文言小說;志怪;狐鬼', '清', '全中國', NULL, '紅樓夢;清代科舉制度史料', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '文言短篇小說之集大成', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (964, '《海國圖志》與《瀛寰志略》', '魏源／徐繼畬', '清（1842–1849）', 23, 7, '中央研究院', 'CN-ST-QING-HAIGUO-01', 'https://hanchi.ihp.sinica.edu.tw/', 'zh', '鴉片戰爭後魏源《海國圖志》一百卷述各國史地並倡「師夷長技以制夷」，徐繼畬《瀛寰志略》以圖誌介紹寰宇地理，兩書為中國開眼看世界之里程碑，並深刻影響日本明治維新', '海國圖志;魏源;瀛寰志略;師夷長技;世界地理', '清', '全中國', NULL, '籌辦夷務始末;清代海關統計', '中央研究院', NULL, '2026-07-31', 'UNCLEAR', '漢籍全文資料庫需申請帳號密碼', '已收錄 metadata', NULL, '中國開眼看世界之里程碑', 'CN') ON CONFLICT (id) DO NOTHING;

SELECT setval('sources_id_seq', 964) WHERE NOT EXISTS (SELECT 1 FROM sources WHERE id = 964);
SELECT setval('sources_id_seq', (SELECT COALESCE(MAX(id), 0) FROM sources));

-- === 3. 史料←→資料類型 ===
INSERT INTO source_materials (source_id, material_type_id) VALUES
  (933, 1),
  (934, 1),
  (935, 1),
  (936, 1),
  (937, 1),
  (938, 1),
  (939, 1),
  (940, 1),
  (941, 1),
  (942, 1),
  (943, 3),
  (944, 1),
  (945, 1),
  (946, 2),
  (947, 2),
  (948, 1),
  (949, 1),
  (950, 2),
  (950, 1),
  (951, 2),
  (951, 1),
  (952, 2),
  (952, 1),
  (953, 1),
  (954, 1),
  (955, 1),
  (956, 1),
  (957, 1),
  (958, 1),
  (959, 1),
  (960, 1),
  (961, 1),
  (962, 1),
  (963, 1),
  (964, 1)
ON CONFLICT DO NOTHING;

-- === 4. 史料←→來源機構 ===
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (933, 7, 'source'),
  (933, 7, 'publisher'),
  (934, 7, 'source'),
  (934, 7, 'publisher'),
  (935, 24, 'source'),
  (935, 24, 'publisher'),
  (936, 7, 'source'),
  (936, 7, 'publisher'),
  (937, 24, 'source'),
  (937, 24, 'publisher'),
  (938, 7, 'source'),
  (938, 7, 'publisher'),
  (939, 24, 'source'),
  (939, 24, 'publisher'),
  (940, 7, 'source'),
  (940, 7, 'publisher'),
  (941, 24, 'source'),
  (941, 24, 'publisher'),
  (942, 7, 'source'),
  (942, 7, 'publisher'),
  (943, 137, 'source'),
  (943, 137, 'publisher'),
  (944, 7, 'source'),
  (944, 7, 'publisher'),
  (945, 7, 'source'),
  (945, 7, 'publisher'),
  (946, 196, 'source'),
  (946, 196, 'publisher'),
  (947, 137, 'source'),
  (947, 137, 'publisher'),
  (948, 7, 'source'),
  (948, 7, 'publisher'),
  (949, 137, 'source'),
  (949, 137, 'publisher'),
  (950, 196, 'source'),
  (950, 196, 'publisher'),
  (951, 188, 'source'),
  (951, 188, 'publisher'),
  (952, 144, 'source'),
  (952, 144, 'publisher'),
  (953, 7, 'source'),
  (953, 7, 'publisher'),
  (954, 7, 'source'),
  (954, 7, 'publisher'),
  (955, 7, 'source'),
  (955, 7, 'publisher'),
  (956, 7, 'source'),
  (956, 7, 'publisher'),
  (957, 7, 'source'),
  (957, 7, 'publisher'),
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (958, 7, 'source'),
  (958, 7, 'publisher'),
  (959, 7, 'source'),
  (959, 7, 'publisher'),
  (960, 7, 'source'),
  (960, 7, 'publisher'),
  (961, 137, 'source'),
  (961, 137, 'publisher'),
  (962, 138, 'source'),
  (962, 138, 'publisher'),
  (963, 7, 'source'),
  (963, 7, 'publisher'),
  (964, 7, 'source'),
  (964, 7, 'publisher')
ON CONFLICT DO NOTHING;

-- === 完成 ===
