-- ============================================================
-- 東亞歷史權威史料庫 — 中國史料匯入 SQL（增量模式）
-- 由 Import-ChinaToSupabase.ps1 v2 自動產生
-- ============================================================

-- === 1. 來源機構（僅新增者） ===
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (234, '大公報社') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (235, '中共中央文獻研究室') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (236, '中國社會科學院近代史研究所') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (237, '中國國家檔案局') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (238, '中國國家鐵路集團有限公司') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (239, '中華人民共和國政府') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (240, '中華人民共和國國家計畫委員會') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (241, '中華民國政府') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (242, '北京市人民政府') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (243, '北京政府') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (244, '各省縣地方志編纂委員會') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (245, '南京臨時政府') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (246, '國民政府') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (247, '國民政府主計處統計局') ON CONFLICT (name_zh) DO NOTHING;
INSERT INTO institutions (id, name_zh) OVERRIDING SYSTEM VALUE VALUES (248, '深圳市人民政府') ON CONFLICT (name_zh) DO NOTHING;

SELECT setval('institutions_id_seq', 248);

-- === 2. 主要史料 ===
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (972, '中華民國臨時約法', '南京臨時政府', '1912-03-11', 25, 1, '中國第二歷史檔案館', 'CN-ST-ROC-01', 'https://www.shac.net.cn/', 'zh', '1912年3月11日南京臨時政府公布之憲法性文件，確立人民自由權利、參議院與臨時大總統之制度安排，為中華民國第一部臨時憲法，奠定民國法制之基石，原檔藏於中國第二歷史檔案館', '中華民國臨時約法;臨時政府;憲法;南京', '中華民國（1912–1949）', '全中國', NULL, '中華民國臨時政府組織大綱;中華民國憲法', '南京臨時政府', NULL, '2026-07-31', 'UNCLEAR', '館藏原件，需申請調閱', '已收錄 metadata', NULL, '中華民國第一部憲法性文件', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (973, '北京政府大總統府檔案（北洋政府）', '北京政府（北洋政府）', '中華民國（1912–1928）', 25, 1, '中國第二歷史檔案館', 'CN-ST-ROC-02', 'https://www.shac.net.cn/', 'zh', '北洋政府時期（1912–1928）大總統府暨國務院之公文檔案，涵蓋袁世凱執政、護國戰爭、軍閥混戰與府院之爭等，為研究民國初期中央政權運作之核心檔案群', '北洋政府;大總統府;袁世凱;軍閥;北京', '中華民國（1912–1949）', '北京', NULL, '中華民國政府公報;國史館藏北洋政府檔案', '北京政府', NULL, '2026-07-31', 'UNCLEAR', '館藏原件，需申請調閱', '已收錄 metadata', NULL, '北洋時期中央政權第一手檔案', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (974, '中華民國政府公報（1912–1949）', '中華民國政府', '中華民國（1912–1949）', 25, 1, '中國國家圖書館', 'CN-ST-ROC-03', 'https://www.nlc.cn/', 'zh', '民國政府歷年頒布之法令、規章、人事任免與行政命令之官方紀錄，自臨時政府公報至國民政府公報連續出版，為查考民國法律制度與行政變遷之基本史料，中國國家圖書館有系統典藏', '政府公報;法令;行政命令;法規', '中華民國（1912–1949）', '全中國', NULL, '中華民國臨時約法;國民政府檔案', '中華民國政府', NULL, '2026-07-31', 'UNCLEAR', '館藏原件，需申請調閱', '已收錄 metadata', NULL, '民國法令沿革之權威紀錄', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (975, '國民政府檔案（南京國民政府）', '國民政府', '中華民國（1927–1949）', 25, 1, '中國第二歷史檔案館', 'CN-ST-ROC-04', 'https://www.shac.net.cn/', 'zh', '南京國民政府時期（1927–1949）行政院各部會之檔案，涵蓋訓政建設、抗戰遷都重慶、戰後接收與國共內戰，為中華民國大陸時期中央檔案之最大宗收藏', '國民政府;南京;行政院;訓政;抗戰', '中華民國（1912–1949）', '南京、重慶', NULL, '重慶國民政府戰時檔案;中華民國政府公報', '國民政府', NULL, '2026-07-31', 'UNCLEAR', '館藏原件，需申請調閱', '已收錄 metadata', NULL, '民國中央檔案之最大宗收藏', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (976, '國史館藏蔣中正總統文物', '國史館', '中華民國（1912–1975）', 25, 1, '國史館', 'CN-ST-ROC-05', 'https://www.drnh.gov.tw/', 'zh', '國史館典藏之蔣中正總統文物，含大溪檔案、事略稿本與相關函電，涵蓋北伐、抗戰與國共內戰期間之決策紀錄，為民國史與二次大戰東亞戰場之重要一手檔案', '蔣中正;總統;北伐;抗戰;大溪檔案', '中華民國（1912–1949）', '全中國', NULL, '重慶國民政府戰時檔案;西安事變史料', '國史館', NULL, '2026-07-31', 'UNCLEAR', '數位檔須於館內閱覽', '已收錄 metadata', '國史館', '蔣中正決策一手檔案', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (977, '重慶國民政府戰時檔案（1937–1945）', '國民政府', '中華民國（1937–1945）', 25, 1, '中國第二歷史檔案館', 'CN-ST-ROC-06', 'https://www.shac.net.cn/', 'zh', '抗戰時期國民政府遷都重慶後之部會公文與決策紀錄，涵蓋大後方建設、工業內遷、對日作戰與中美同盟合作，為研究中國抗日戰爭之核心官方檔案', '抗日戰爭;重慶;大後方;對日作戰;國防最高委員會', '中華民國（1912–1949）', '重慶、西南', NULL, '國民政府檔案;抗戰老兵口述史', '國民政府', NULL, '2026-07-31', 'UNCLEAR', '館藏原件，需申請調閱', '已收錄 metadata', NULL, '抗戰時期中央決策檔案', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (978, '汪精衛南京國民政府檔案', '汪精衛政權', '中華民國（1940–1945）', 25, 1, '中國第二歷史檔案館', 'CN-ST-ROC-07', 'https://www.shac.net.cn/', 'zh', '汪精衛於1940年在南京組設之國民政府（汪政權）檔案，含行政組織、淪陷區治理與日汪關係文電，為研究抗戰時期淪陷區與傀儡政權之重要史料', '汪精衛;南京國民政府;淪陷區;傀儡政權;中日戰爭', '中華民國（1912–1949）', '南京、華東', NULL, '重慶國民政府戰時檔案;中日戰爭史料', '汪精衛政權', NULL, '2026-07-31', 'UNCLEAR', '館藏原件，需申請調閱', '已收錄 metadata', NULL, '淪陷區政權檔案', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (979, '九一八事變與滿洲國檔案', '中央研究院近代史研究所', '中華民國（1931–1945）', 25, 1, '中央研究院近代史研究所', 'CN-ST-ROC-08', 'https://mh.sinica.edu.tw/', 'zh', '九一八事變爆發至滿洲國成立與覆滅期間之中日外交檔案與相關文電，涵蓋國際聯盟調查、抗日救亡運動與東北淪陷，近代史研究所整理之中日關係檔案為重要來源', '九一八事變;滿洲國;中日關係;東北;國際聯盟', '中華民國（1912–1949）', '東北、瀋陽', NULL, '西安事變史料;國史館藏蔣中正總統文物', '中央研究院近代史研究所', NULL, '2026-07-31', 'UNCLEAR', '數位資料庫需申請帳號', '已收錄 metadata', NULL, '東北淪陷與中日衝突檔案', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (980, '西安事變史料', '中國第二歷史檔案館', '中華民國（1936）', 25, 1, '中國第二歷史檔案館', 'CN-ST-ROC-09', 'https://www.shac.net.cn/', 'zh', '1936年12月張學良、楊虎城在西安扣押蔣中正（西安事變）之相關檔案與文電，涵蓋事變前後國共兩黨折衝與和平解決過程，為近代史關鍵事件之原始紀錄', '西安事變;張學良;楊虎城;蔣中正;國共合作', '中華民國（1912–1949）', '西安、陝西', NULL, '張學良口述歷史與檔案;九一八事變與滿洲國檔案', '中國第二歷史檔案館', NULL, '2026-07-31', 'UNCLEAR', '館藏原件，需申請調閱', '已收錄 metadata', NULL, '西安事變原始文電', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (981, '國共內戰與戡亂檔案', '國民政府', '中華民國（1945–1949）', 25, 1, '中國第二歷史檔案館', 'CN-ST-ROC-10', 'https://www.shac.net.cn/', 'zh', '抗戰勝利後國共軍事衝突至國民政府撤退期間之戡亂動員與軍事檔案，涵蓋接收東北、三大戰役與戰略崩潰過程，為中華民國大陸時期之末期官方紀錄', '國共內戰;戡亂;軍事;三大戰役;撤退', '中華民國（1912–1949）', '全中國', NULL, '國民政府檔案;中華民國政府公報', '國民政府', NULL, '2026-07-31', 'UNCLEAR', '館藏原件，需申請調閱', '已收錄 metadata', NULL, '民國大陸時期終局檔案', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (982, '中華民國海關總稅務司署檔案（1912–1949）', '總稅務司署', '中華民國（1912–1949）', 25, 1, '中央研究院近代史研究所', 'CN-ST-ROC-11', 'https://mh.sinica.edu.tw/', 'zh', '海關總稅務司署於民國時期之檔案與貿易統計，繼晚清赫德體制延續至國民政府時期，涵蓋關稅自主運動、走私查緝與貿易紀錄，近代史研究所整理之海關檔案為治民國經濟史之基礎', '海關;總稅務司署;關稅;貿易統計;近代史研究所', '中華民國（1912–1949）', '全中國', NULL, '近代中國海關貿易統計;中國銀行行史', '總稅務司署', NULL, '2026-07-31', 'UNCLEAR', '數位資料庫需申請帳號', '已收錄 metadata', NULL, '民國海關經濟史料', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (983, '申報（1872–1949）', '申報館', '中華民國（1912–1949）', 25, 3, '上海圖書館', 'CN-ST-ROC-12', 'https://www.library.sh.cn/', 'zh', '《申報》為近代中國發行時間最長之報紙，民國時期連續出版報導政治、社會、商業與文化生活，上海圖書館完成全文數位化，為研究民國社會史與新聞史之重要報刊史料', '申報;報刊;新聞史;上海;社會史', '中華民國（1912–1949）', '上海、全中國', NULL, '東方雜誌;大公報', '申報館', '上海圖書館', '2026-07-31', 'UNCLEAR', '數位庫限館內使用', '已收錄 metadata', NULL, '近代中國最長壽報紙', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (984, '大公報（1902–1949）', '大公報社', '中華民國（1912–1949）', 25, 3, '天津圖書館', 'CN-ST-ROC-13', 'https://www.tjl.tj.cn/', 'zh', '《大公報》自天津創刊，民國時期發展為全國性大報，以知識分子論政著稱，其「四不主義」辦報方針影響深遠，天津圖書館典藏完整並數位化，為民國新聞史料之要籍', '大公報;報刊;新聞史;天津;論政', '中華民國（1912–1949）', '天津、全中國', NULL, '申報;中央日報', '大公報社', '天津圖書館', '2026-07-31', 'UNCLEAR', '數位庫限館內使用', '已收錄 metadata', NULL, '民初知識分子論政報紙', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (985, '新青年（1915–1926）', '陳獨秀', '中華民國（1915–1926）', 25, 3, '中國國家圖書館', 'CN-ST-ROC-14', 'https://www.nlc.cn/', 'zh', '《新青年》原名《青年雜誌》，1915年陳獨秀創刊，為新文化運動之核心陣地，倡導文學革命、民主與科學，刊載魯迅〈狂人日記〉、胡適〈文學改良芻議〉等名篇', '新青年;新文化運動;陳獨秀;文學革命;五四運動', '中華民國（1912–1949）', '上海、北京', NULL, '魯迅日記與全集;胡適日記與書信集', '新青年社', '中國國家圖書館', '2026-07-31', 'UNCLEAR', '館藏原件，需申請調閱', '已收錄 metadata', NULL, '新文化運動核心刊物', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (986, '東方雜誌（1904–1948）', '商務印書館', '中華民國（1912–1948）', 25, 3, '上海圖書館', 'CN-ST-ROC-15', 'https://www.library.sh.cn/', 'zh', '《東方雜誌》由商務印書館發行，為近代中國最悠久之綜合性雜誌，民國時期刊載時事、學術與文藝評論，上海圖書館完成數位化，為研究民國知識界之重要期刊', '東方雜誌;商務印書館;期刊;學術;知識界', '中華民國（1912–1949）', '上海、全中國', NULL, '申報;新青年', '商務印書館', '上海圖書館', '2026-07-31', 'UNCLEAR', '數位庫限館內使用', '已收錄 metadata', NULL, '近代中國最悠久綜合期刊', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (987, '中央日報（1928–1949）', '中國國民黨中央宣傳部', '中華民國（1928–1949）', 25, 3, '中國國家圖書館', 'CN-ST-ROC-16', 'https://www.nlc.cn/', 'zh', '《中央日報》為中國國民黨中央機關報，1928年於上海創刊、後遷南京，抗戰時期移重慶，為國民政府官方輿論喉舌，其社論與報導反映執政黨立場，中國國家圖書館有完整典藏', '中央日報;國民黨;機關報;宣傳;抗戰', '中華民國（1912–1949）', '上海、南京、重慶', NULL, '大公報;中華民國政府公報', '中國國民黨中央宣傳部', '中國國家圖書館', '2026-07-31', 'UNCLEAR', '館藏原件，需申請調閱', '已收錄 metadata', NULL, '國民政府官方報紙', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (988, '獨立評論（1932–1937）', '獨立評論社', '中華民國（1932–1937）', 25, 3, '中央研究院近代史研究所', 'CN-ST-ROC-17', 'https://mh.sinica.edu.tw/', 'zh', '《獨立評論》1932年由胡適等知識分子創辦，以「不倚傍任何黨派」之獨立論政著稱，刊載大量時局評論，涵蓋中日衝突、憲政與民主自由議題，為民國自由主義言論之代表刊物', '獨立評論;胡適;自由主義;論政;知識分子', '中華民國（1912–1949）', '北平、全中國', NULL, '胡適日記與書信集;新青年', '獨立評論社', '中央研究院近代史研究所', '2026-07-31', 'UNCLEAR', '數位資料庫需申請帳號', '已收錄 metadata', NULL, '民國自由主義言論代表刊物', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (989, '蔣中正日記（1918–1972）', '蔣中正', '中華民國（1918–1972）', 25, 4, '史丹佛大學胡佛研究所', 'CN-ST-ROC-18', 'https://www.hoover.org/', 'zh', '蔣中正自1918年至1972年之逐日日記，涵蓋北伐、抗戰、國共內戰與遷台後時期，原件藏於史丹佛大學胡佛研究所檔案館並數位開放閱覽，為民國政治史最重要之個人史料', '蔣中正;日記;胡佛研究所;北伐;抗戰', '中華民國（1912–1949）', '全中國', NULL, '國史館藏蔣中正總統文物;張學良口述歷史與檔案', '蔣中正', '史丹佛大學胡佛研究所', '2026-07-31', 'UNCLEAR', '數位檔須於館內閱覽', '已收錄 metadata', NULL, '民國政治史最重要個人史料', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (990, '胡適日記與書信集', '胡適', '中華民國（1912–1962）', 25, 4, '中央研究院近代史研究所', 'CN-ST-ROC-19', 'https://mh.sinica.edu.tw/', 'zh', '胡適之留學日記、大陸時期日記與往來書信，記錄其在新文化運動、北大任教、駐美大使任內之交遊與思想，近代史研究所「胡適檔案」系統整理，為民國思想文化史之重要史料', '胡適;日記;書信;新文化運動;近代史研究所', '中華民國（1912–1949）', '北平、上海、美國', NULL, '獨立評論;新青年', '胡適', '中央研究院近代史研究所', '2026-07-31', 'UNCLEAR', '數位資料庫需申請帳號', '已收錄 metadata', NULL, '胡適手稿與書信檔案', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (991, '魯迅日記與全集', '魯迅', '中華民國（1912–1936）', 25, 4, '北京魯迅博物館', 'CN-ST-ROC-20', NULL, 'zh', '魯迅（周樹人）之逐日日記（1912–1936）與全集著作，日記紀錄其在教育部、北大與上海之日常與交遊，北京魯迅博物館典藏手稿，為新文化運動與民國文學之核心史料', '魯迅;日記;新文學;小說;博物館', '中華民國（1912–1949）', '北平、上海、廈門', NULL, '新青年;中華民國政府公報', '魯迅', '北京魯迅博物館', '2026-07-31', 'UNCLEAR', '館藏原件，需申請調閱', '已收錄 metadata', NULL, '魯迅手稿與日記典藏', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (992, '梁啟超全集', '梁啟超', '中華民國（1912–1929）', 25, 4, '中華書局', 'CN-ST-ROC-21', 'https://www.zhbc.com.cn/', 'zh', '梁啟超在民國時期之論著、書信與函牘全集，涵蓋其由維新派轉向民國政治與學術研究之歷程，中華書局整理出版，為研究民初政治與學術之基本文獻', '梁啟超;全集;民初政治;學術;中華書局', '中華民國（1912–1949）', '全中國', NULL, '新青年;中華民國政府公報', '中華書局', '中華書局', '2026-07-31', 'UNCLEAR', '出版品公開發行', '已收錄 metadata', NULL, '梁啟超民國論著全集', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (993, '張學良口述歷史與檔案', '張學良', '中華民國（1928–1936）', 25, 4, '哥倫比亞大學圖書館', 'CN-ST-ROC-22', 'https://library.columbia.edu/', 'zh', '張學良晚年口述歷史與其奉系、東北軍時期檔案，口述訪談錄音存於哥倫比亞大學圖書館，涵蓋西安事變始末與國民政府時期東北政局，為民國軍事史之關鍵見證', '張學良;口述歷史;東北軍;西安事變;哥倫比亞大學', '中華民國（1912–1949）', '東北、西安', NULL, '西安事變史料;蔣中正日記', '張學良', '哥倫比亞大學圖書館', '2026-07-31', 'UNCLEAR', '數位檔須於館內閱覽', '已收錄 metadata', NULL, '張學良晚年口述訪談', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (994, '宋慶齡文獻與年譜', '宋慶齡', '中華民國（1912–1981）', 25, 4, '上海宋慶齡故居紀念館', 'CN-ST-ROC-23', NULL, 'zh', '宋慶齡之函電、著作與年譜文獻，涵蓋其投身國民革命、抗日戰爭與新中國建設之歷程，上海宋慶齡故居紀念館典藏相關文物，為研究民國至建國時期女性政治人物之史料', '宋慶齡;年譜;函電;孫中山;革命', '中華民國（1912–1949）', '上海、全中國', NULL, '中華民國臨時約法;中華民國政府公報', '宋慶齡', '上海宋慶齡故居紀念館', '2026-07-31', 'UNCLEAR', '館藏原件，需申請調閱', '已收錄 metadata', '上海宋慶齡故居紀念館', '宋慶齡函電與文物', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (995, '傅斯年檔案', '傅斯年', '中華民國（1919–1950）', 25, 4, '中央研究院歷史語言研究所', 'CN-ST-ROC-24', 'https://www.ihp.sinica.edu.tw/', 'zh', '傅斯年於五四時期、史語所與台灣大學時期之文稿、函牘與治學檔案，為新文化運動與民國學術制度史之重要一手史料，史語所典藏並數位公開', '傅斯年;檔案;史語所;五四運動;學術史', '中華民國（1912–1949）', '北平、南京、台北', NULL, '安陽殷墟發掘報告;胡適日記與書信集', '傅斯年', '中央研究院歷史語言研究所', '2026-07-31', 'UNCLEAR', '數位資料庫需申請帳號', '已收錄 metadata', NULL, '傅斯年手稿與治學檔案', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (996, '民國時期中國影像（哈佛燕京圖書館）', '哈佛燕京圖書館', '中華民國（1912–1949）', 25, 5, '哈佛燕京圖書館', 'CN-ST-ROC-25', 'https://library.harvard.edu/', 'zh', '哈佛燕京圖書館典藏之民國時期中國照片，涵蓋城市景觀、人物肖像、社會風俗與重大事件，數位化後開放瀏覽，為民國社會史與物質文化之影像史料', '民國;照片;哈佛燕京;影像;城市', '中華民國（1912–1949）', '全中國', NULL, '民國南京城市老照片;抗日戰爭攝影集', '哈佛燕京圖書館', '哈佛燕京圖書館', '2026-07-31', 'CC-BY-NC', '圖像供研究使用須註明出處', '已收錄 metadata', NULL, '哈佛燕京民國影像典藏', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (997, '抗日戰爭攝影集（1937–1945）', '中國國家圖書館', '中華民國（1937–1945）', 25, 5, '中國國家圖書館', 'CN-ST-ROC-26', 'https://www.nlc.cn/', 'zh', '抗戰時期之中國戰地攝影與宣傳照片，涵蓋淞滬會戰、大後方生活、重慶大轟炸與勝利受降等畫面，中國國家圖書館整理抗戰影像專題典藏，為戰爭史之直接視覺史料', '抗日戰爭;攝影;戰地;重慶;受降', '中華民國（1912–1949）', '全中國', NULL, '重慶國民政府戰時檔案;民國時期中國影像', '中國國家圖書館', '中國國家圖書館', '2026-07-31', 'UNCLEAR', '館藏影像，需申請調閱', '已收錄 metadata', NULL, '抗戰影像專題典藏', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (998, '民國南京城市老照片', '南京市檔案館', '中華民國（1912–1949）', 25, 5, '南京市檔案館', 'CN-ST-ROC-27', NULL, 'zh', '南京市檔案館典藏之民國時期南京城市照片，涵蓋首都建設、中山陵工程、市街景觀與市民生活，為國民政府定都南京時期城市發展之影像紀錄', '南京;首都;城市;老照片;建設', '中華民國（1912–1949）', '南京', NULL, '國民政府檔案;民國時期中國影像', '南京市檔案館', '南京市檔案館', '2026-07-31', 'UNCLEAR', '館藏影像，需申請調閱', '已收錄 metadata', NULL, '民國首都城市影像', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (999, '中華民國統計提要', '國民政府主計處統計局', '中華民國（1935–1948）', 25, 6, '國史館', 'CN-ST-ROC-28', 'https://www.drnh.gov.tw/', 'zh', '國民政府主計處統計局編纂之《中華民國統計提要》，系統彙編人口、農工、交通、財政等部門統計，為民國時期最具權威之綜合統計年刊，國史館典藏各期', '統計;統計提要;主計處;人口;財政', '中華民國（1912–1949）', '全中國', NULL, '民國時期人口統計與戶口調查;中國工業調查資料', '國民政府主計處統計局', '國史館', '2026-07-31', 'UNCLEAR', '數位檔須於館內閱覽', '已收錄 metadata', '國史館', '民國權威綜合統計年刊', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1000, '中國工業調查資料（1930年代）', '劉大鈞', '中華民國（1933–1935）', 25, 6, '中央研究院近代史研究所', 'CN-ST-ROC-29', 'https://mh.sinica.edu.tw/', 'zh', '經濟學家劉大鈞主持之中國工業調查，實地查訪各地工廠之資本、勞工與生產統計，為國民政府時期首次系統性工業普查，其成果經整理為民國工業史之基礎統計資料', '工業調查;劉大鈞;統計;工廠;勞工', '中華民國（1912–1949）', '全中國', NULL, '中華民國統計提要;中國銀行行史', '劉大鈞', '中央研究院近代史研究所', '2026-07-31', 'UNCLEAR', '數位資料庫需申請帳號', '已收錄 metadata', NULL, '民國首次系統工業普查', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1001, '民國時期人口統計與戶口調查', '中國國家圖書館', '中華民國（1912–1949）', 25, 6, '中國國家圖書館', 'CN-ST-ROC-30', 'https://www.nlc.cn/', 'zh', '民國時期內政部與各省之戶口調查統計資料，含1912年、1928年及1942年等歷次戶口普查成果，為研究民國人口結構、遷徙與戰時人口變動之基本統計史料', '人口統計;戶口普查;內政部;人口;遷徙', '中華民國（1912–1949）', '全中國', NULL, '中華民國統計提要;國共內戰與戡亂檔案', '中國國家圖書館', '中國國家圖書館', '2026-07-31', 'UNCLEAR', '館藏原件，需申請調閱', '已收錄 metadata', NULL, '民國歷次戶口普查資料', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1002, '安陽殷墟發掘報告（1928–1937）', '中央研究院歷史語言研究所', '中華民國（1928–1937）', 25, 7, '中央研究院歷史語言研究所', 'CN-ST-ROC-31', 'https://www.ihp.sinica.edu.tw/', 'zh', '1928年起中央研究院史語所在安陽殷墟之十五次發掘紀錄與報告，出土甲骨、青銅器與宮殿基址，確立商代信史，為民國時期最重要之考古學成就，史語所整理出版田野工作報告', '殷墟;甲骨;考古;史語所;商代', '中華民國（1912–1949）', '河南安陽', NULL, '傅斯年檔案;中國營造學社古建築調查', '中央研究院歷史語言研究所', '中央研究院歷史語言研究所', '2026-07-31', 'UNCLEAR', '數位資料庫需申請帳號', '已收錄 metadata', NULL, '中國現代考古奠基發掘', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1003, '中國營造學社古建築調查', '中國營造學社', '中華民國（1930–1946）', 25, 7, '清華大學建築學院', 'CN-ST-ROC-32', NULL, 'zh', '中國營造學社（1930年成立）對全國古建築之系統調查測繪紀錄，梁思成、林徽因主持之田野工作與《中國營造學社彙刊》，奠定中國建築史研究之基礎，資料現藏於清華大學建築學院', '中國營造學社;梁思成;古建築;測繪;建築史', '中華民國（1912–1949）', '全中國', NULL, '安陽殷墟發掘報告;清華大學與北京大學民國時期校史檔案', '中國營造學社', '清華大學建築學院', '2026-07-31', 'UNCLEAR', '館藏原件，需申請調閱', '已收錄 metadata', NULL, '中國建築史研究奠基調查', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1004, '中央研究院近代史研究所口述歷史叢書', '中央研究院近代史研究所', '中華民國（1959–）', 25, 9, '中央研究院近代史研究所', 'CN-ST-ROC-33', 'https://mh.sinica.edu.tw/', 'zh', '近代史研究所自1959年起訪問民國時期政治、軍事、外交與財經人物之口述歷史，累積數百種訪談紀錄並整理出版，為民國史研究最具規模之口述史料計畫', '口述歷史;訪談;民國人物;近代史研究所;訪談錄', '中華民國（1912–1949）', '全中國', NULL, '張學良口述歷史與檔案;抗戰老兵口述史', '中央研究院近代史研究所', '中央研究院近代史研究所', '2026-07-31', 'UNCLEAR', '數位資料庫需申請帳號', '已收錄 metadata', NULL, '最具規模之民國口述史', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1005, '抗戰老兵口述史', '中國社會科學院近代史研究所', '中華民國（1937–1945）', 25, 9, '中國社會科學院近代史研究所', 'CN-ST-ROC-34', NULL, 'zh', '中國社會科學院近代史研究所與各地學術機構合作訪問抗戰親歷老兵之口述紀錄，涵蓋正面戰場、敵後游擊與後方民生，為戰史研究之珍貴田野資料', '抗日戰爭;口述歷史;老兵;戰史;訪談', '中華民國（1912–1949）', '全中國', NULL, '抗日戰爭攝影集;重慶國民政府戰時檔案', '中國社會科學院近代史研究所', NULL, '2026-07-31', 'UNCLEAR', '訪談資料需申請使用', '已收錄 metadata', NULL, '抗戰親歷者田野訪談', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1006, '中國銀行行史與民國銀行檔案', '中國銀行', '中華民國（1912–1949）', 25, 10, '中國銀行', 'CN-ST-ROC-35', 'https://www.boc.cn/', 'zh', '中國銀行自1912年改組成立起之行史與業務檔案，涵蓋其作為政府銀行、外匯銀行之角色與民國金融體系之演變，中國銀行總行檔案館整理行史資料', '中國銀行;金融;行史;外匯;銀行業', '中華民國（1912–1949）', '上海、全中國', NULL, '法幣改革與中央銀行檔案;中國工業調查資料', '中國銀行', '中國銀行', '2026-07-31', 'UNCLEAR', '館藏行史，需申請調閱', '已收錄 metadata', NULL, '民國金融體系重要銀行', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1007, '民國鐵道部與國有鐵路統計', '中華民國鐵道部', '中華民國（1912–1949）', 25, 10, '中國國家圖書館', 'CN-ST-ROC-36', 'https://www.nlc.cn/', 'zh', '民國時期鐵道部之國有鐵路營業統計與建設檔案，涵蓋平漢、津浦、隴海等幹線之里程、營收與運輸資料，為研究民國交通建設與經濟發展之基礎史料', '鐵路;鐵道部;交通;運輸;統計', '中華民國（1912–1949）', '全中國', NULL, '中華民國統計提要;中國工業調查資料', '中華民國鐵道部', '中國國家圖書館', '2026-07-31', 'UNCLEAR', '館藏原件，需申請調閱', '已收錄 metadata', NULL, '民國鐵路建設統計', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1008, '法幣改革與中央銀行檔案（1935）', '中央銀行', '中華民國（1935–1949）', 25, 10, '中央銀行', 'CN-ST-ROC-37', 'https://www.cbc.gov.tw/', 'zh', '1935年11月國民政府推行法幣改革之決策檔案與中央銀行業務紀錄，統一貨幣發行並建立法幣制度，為民國貨幣金融史之關鍵事件，相關檔案分藏台北中央銀行與中國第二歷史檔案館', '法幣;中央銀行;貨幣;金融;通貨膨脹', '中華民國（1912–1949）', '上海、重慶', NULL, '中國銀行行史;中華民國統計提要', '中央銀行', '中央銀行', '2026-07-31', 'UNCLEAR', '館藏檔案，需申請調閱', '已收錄 metadata', NULL, '法幣改革決策檔案', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1009, '近代中國海關貿易統計（1912–1949）', '總稅務司署', '中華民國（1912–1949）', 25, 10, '中央研究院近代史研究所', 'CN-ST-ROC-38', 'https://mh.sinica.edu.tw/', 'zh', '近代中國海關歷年貿易統計年刊，紀錄民國時期各口岸進出口貨值、商品結構與貿易對手國，為中外貿易史與經濟史研究之連續性統計史料', '海關;貿易統計;對外貿易;口岸;經濟史', '中華民國（1912–1949）', '全中國', NULL, '中華民國海關總稅務司署檔案;中國銀行行史', '總稅務司署', '中央研究院近代史研究所', '2026-07-31', 'UNCLEAR', '數位資料庫需申請帳號', '已收錄 metadata', NULL, '民國對外貿易連續統計', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1010, '清華大學與北京大學民國時期校史檔案', '清華學校', '中華民國（1911–1949）', 25, 11, '清華大學檔案館', 'CN-ST-ROC-39', 'https://archive.tsinghua.edu.cn/', 'zh', '清華學校（1928年改大學）與北京大學在民國時期之校史檔案，涵蓋庚款留學、西南聯大遷校與院系調整前之辦學紀錄，清華大學檔案館系統典藏並數位公開', '清華大學;北京大學;校史;西南聯大;高等教育', '中華民國（1912–1949）', '北平、長沙、昆明', NULL, '中國營造學社古建築調查;傅斯年檔案', '清華學校', '清華大學檔案館', '2026-07-31', 'UNCLEAR', '數位檔需申請帳號', '已收錄 metadata', NULL, '民國高等校史檔案', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1011, '北京協和醫學院民國時期史料', '北京協和醫學院', '中華民國（1915–1949）', 25, 11, '北京協和醫學院', 'CN-ST-ROC-40', 'https://www.pumc.edu.cn/', 'zh', '美國洛克菲勒基金會創辦之北京協和醫學院史料，含辦學檔案、醫案與公衛調查，其現代醫學教育制度影響中國醫學界深遠，為民國醫療史與公衛史之重要史料', '協和醫學院;醫學教育;公衛;洛克菲勒;醫療史', '中華民國（1912–1949）', '北平', NULL, '民國時期人口統計與戶口調查;教育與醫療', '北京協和醫學院', '北京協和醫學院', '2026-07-31', 'UNCLEAR', '館藏檔案，需申請調閱', '已收錄 metadata', NULL, '現代醫學教育重要史料', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1012, '1931年江淮大水檔案', '中華民國政府', '中華民國（1931）', 25, 12, '中國第二歷史檔案館', 'CN-ST-ROC-41', 'https://www.shac.net.cn/', 'zh', '1931年江淮特大水災之救災與災情檔案，涵蓋各省災區呈報、賑災委員會之放賑紀錄與災害損失統計，為民國環境史與災害史研究之重要官方檔案', '1931年水災;江淮;災害;賑災;環境史', '中華民國（1912–1949）', '江蘇、安徽、湖北', NULL, '中華民國統計提要;國共內戰與戡亂檔案', '中華民國政府', '中國第二歷史檔案館', '2026-07-31', 'UNCLEAR', '館藏原件，需申請調閱', '已收錄 metadata', NULL, '民國大災害官方檔案', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1013, '中華人民共和國國務院公報', '中華人民共和國國務院', '中華人民共和國（1949–迄今）', 26, 1, '中華人民共和國國務院', 'CN-ST-PRC-01', 'https://www.gov.cn/', 'zh', '中華人民共和國國務院公報，刊載國務院令、行政法規、部門規章與重要政策文件，自1954年創刊持續至今，中央人民政府入口網站提供歷年公報全文檢索', '國務院;公報;行政法規;政策;國務院令', '中華人民共和國（1949–迄今）', '全中國', NULL, '中華人民共和國憲法與法律文本;中國共產黨中央文件選編', '中華人民共和國國務院', '中華人民共和國國務院', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', '中華人民共和國國務院', '現行行政法規之官方紀錄', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1014, '全國人民代表大會常務委員會公報', '全國人民代表大會常務委員會', '中華人民共和國（1954–迄今）', 26, 1, '全國人民代表大會常務委員會', 'CN-ST-PRC-02', 'https://www.npc.gov.cn/', 'zh', '全國人民代表大會常務委員會公報，刊載立法審議紀錄、法律文本與監督事項，官方網站提供歷次會議內容，為查考共和國立法沿革之權威文獻', '全國人大;人大常委會;立法;法律;監督', '中華人民共和國（1949–迄今）', '北京', NULL, '中華人民共和國憲法與法律文本;中國人民政治協商會議史料', '全國人民代表大會常務委員會', '全國人民代表大會常務委員會', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '共和國立法沿革權威文獻', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1015, '中國共產黨中央文件選編', '中共中央文獻研究室', '中華人民共和國（1949–）', 26, 1, '中央檔案館', 'CN-ST-PRC-03', 'https://www.saac.gov.cn/', 'zh', '中共中央重要文件選編與《建國以來重要文獻選編》等系列，收錄1949年以來中央會議決議、方針政策與領導人文稿，中央檔案館與文獻研究部門整理，為共和國政治史之基本文獻', '中國共產黨;中央文件;文獻選編;政策;檔案', '中華人民共和國（1949–迄今）', '北京、全中國', NULL, '十一屆三中全會與改革開放文件;毛澤東選集與建國以來文稿', '中共中央文獻研究室', '中央檔案館', '2026-07-31', 'UNCLEAR', '出版品公開發行', '已收錄 metadata', NULL, '共和國政治史基本文獻', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1016, '新華社電訊與檔案', '新華通訊社', '中華人民共和國（1949–迄今）', 26, 1, '新華社', 'CN-ST-PRC-04', 'https://www.news.cn/', 'zh', '新華通訊社自建國起之電訊稿、通稿與歷史檔案，含重大事件現場報導與社論，新華網提供歷史報導檢索，為共和國官方新聞紀錄之主體', '新華社;電訊;通稿;新聞;官方', '中華人民共和國（1949–迄今）', '全中國', NULL, '開國大典影像與照片;新華社歷史圖片庫', '新華通訊社', '新華社', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', '新華社', '官方新聞紀錄主體', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1017, '中國人民政治協商會議史料', '中國人民政治協商會議全國委員會', '中華人民共和國（1949–迄今）', 26, 1, '中國人民政治協商會議全國委員會', 'CN-ST-PRC-05', 'https://www.cppcc.gov.cn/', 'zh', '中國人民政治協商會議歷屆會議之文件與提案史料，涵蓋1949年籌建新政協至當代協商民主制度，政協網站提供歷屆會議資訊，為共和國政治制度史之重要文獻', '政協;政治協商;統一戰線;會議;提案', '中華人民共和國（1949–迄今）', '北京、全中國', NULL, '中華人民共和國憲法與法律文本;全國人民代表大會常務委員會公報', '中國人民政治協商會議全國委員會', '中國人民政治協商會議全國委員會', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '政治協商制度文獻', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1018, '土地改革運動檔案', '中華人民共和國中央人民政府', '中華人民共和國（1950–1953）', 26, 1, '中國國家檔案局', 'CN-ST-PRC-06', 'https://www.saac.gov.cn/', 'zh', '1950年《土地改革法》公布後全國土地改革運動之檔案，涵蓋各地土改呈報、分田登記與農會資料，中央檔案館及各省檔案館典藏，為共和國初期農村改革之核心史料', '土地改革;土改;農村;農民;階級', '中華人民共和國（1949–迄今）', '全中國', NULL, '一五計畫與社會主義改造檔案;中國共產黨中央文件選編', '中華人民共和國中央人民政府', '中國國家檔案局', '2026-07-31', 'UNCLEAR', '館藏檔案，需申請調閱', '已收錄 metadata', NULL, '共和國初期農村改革檔案', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1019, '一五計畫與社會主義改造檔案', '中華人民共和國國家計畫委員會', '中華人民共和國（1953–1957）', 26, 1, '中央檔案館', 'CN-ST-PRC-07', 'https://www.saac.gov.cn/', 'zh', '第一個五年計畫（1953–1957）之經濟計畫文件與對農業、手工業、資本主義工商業社會主義改造之檔案，涵蓋重工業建設與公私合營過程，為共和國計畫經濟體制之開端紀錄', '一五計畫;社會主義改造;公私合營;計畫經濟;工業化', '中華人民共和國（1949–迄今）', '全中國', NULL, '土地改革運動檔案;中國人民銀行金融史料', '中華人民共和國國家計畫委員會', '中央檔案館', '2026-07-31', 'UNCLEAR', '館藏檔案，需申請調閱', '已收錄 metadata', NULL, '計畫經濟體制開端紀錄', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1020, '大躍進與人民公社史料', '中共中央', '中華人民共和國（1958–1961）', 26, 1, '中國國家圖書館', 'CN-ST-PRC-08', 'https://www.nlc.cn/', 'zh', '1958年大躍進運動與人民公社化之政策文件、報刊報導與地方史料，涵蓋全民大煉鋼鐵、糧食高產浮報與公社食堂，中國國家圖書館整理專題文獻，為共和國農業與經濟史之重要研究史料', '大躍進;人民公社;煉鋼;浮報;農業', '中華人民共和國（1949–迄今）', '全中國', NULL, '一五計畫與社會主義改造檔案;中國工業與國民經濟統計', '中共中央', '中國國家圖書館', '2026-07-31', 'UNCLEAR', '館藏原件，需申請調閱', '已收錄 metadata', NULL, '大躍進運動文獻', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1021, '文化大革命檔案', '中共中央文化革命小組', '中華人民共和國（1966–1976）', 26, 1, '中央檔案館', 'CN-ST-PRC-09', 'https://www.saac.gov.cn/', 'zh', '文化大革命（1966–1976）期間之中央文件、紅衛兵文獻與地方檔案，含毛澤東「五一六通知」「八一八接見」等歷史文電，中央檔案館與各地檔案館典藏，為共和國政治史最具爭議時期之原始史料', '文化大革命;文革;紅衛兵;中央文革小組;政治運動', '中華人民共和國（1949–迄今）', '全中國', NULL, '大躍進與人民公社史料;中國共產黨中央文件選編', '中共中央文化革命小組', '中央檔案館', '2026-07-31', 'UNCLEAR', '館藏檔案，需申請調閱', '已收錄 metadata', NULL, '文革時期原始文獻', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1022, '十一屆三中全會與改革開放文件', '中國共產黨', '中華人民共和國（1978–）', 26, 1, '中國共產黨新聞網', 'CN-ST-PRC-10', 'https://cpc.people.com.cn/', 'zh', '1978年12月中共十一屆三中全會決議與改革開放以來之中央文件，確立經濟體制改革與對外開放路線，中國共產黨新聞網提供歷屆全會公報與文件全文，為共和國轉型史之關鍵文獻', '十一屆三中全會;改革開放;經濟體制改革;鄧小平;決議', '中華人民共和國（1949–迄今）', '北京、全中國', NULL, '鄧小平文選與年譜;深圳經濟特區檔案', '中國共產黨', '中國共產黨新聞網', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', '中國共產黨新聞網', '改革開放開端文件', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1023, '香港澳門回歸檔案', '中華人民共和國政府', '中華人民共和國（1984–1999）', 26, 1, '中國第二歷史檔案館', 'CN-ST-PRC-11', 'https://www.shac.net.cn/', 'zh', '中英聯合聲明、中葡聯合聲明及香港（1997）、澳門（1999）回歸之官方檔案與典禮影像，涵蓋移交談判與特別行政區籌備過程，為共和國外交與國家統一史之重要史料', '香港回歸;澳門回歸;一國兩制;中英聯合聲明;主權移交', '中華人民共和國（1949–迄今）', '香港、澳門、北京', NULL, '中華人民共和國憲法與法律文本;新華社電訊與檔案', '中華人民共和國政府', '中國第二歷史檔案館', '2026-07-31', 'UNCLEAR', '館藏檔案，需申請調閱', '已收錄 metadata', NULL, '回歸過程官方檔案', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1024, '中華人民共和國憲法與法律文本', '全國人民代表大會', '中華人民共和國（1954–迄今）', 26, 1, '全國人民代表大會常務委員會', 'CN-ST-PRC-12', 'https://www.npc.gov.cn/', 'zh', '1954年、1975年、1978年、1982年歷部憲法及其修正案與現行法律文本，官方網站公布全文並持續更新，為查考共和國憲政演變與法制建設之基本文獻', '憲法;法律;修正案;全國人大;法制', '中華人民共和國（1949–迄今）', '北京、全中國', NULL, '全國人民代表大會常務委員會公報;中華民國臨時約法', '全國人民代表大會', '全國人民代表大會常務委員會', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '憲政演變基本文獻', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1025, '中華人民共和國行政區劃地圖集', '中華人民共和國民政部', '中華人民共和國（1949–迄今）', 26, 2, '中華人民共和國民政部', 'CN-ST-PRC-13', 'https://www.mca.gov.cn/', 'zh', '民政部編纂之行政區劃地圖與沿革資料，涵蓋省級行政區調整、地級市改制與縣級區劃變遷，民政部網站提供行政區劃查詢，為共和國行政區域變動之權威資料', '行政區劃;地圖;民政部;省級行政區;沿革', '中華人民共和國（1949–迄今）', '全中國', NULL, '中國新方志;國家統計局', '中華人民共和國民政部', '中華人民共和國民政部', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', '中華人民共和國民政部', '行政區劃變動權威資料', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1026, '中國新方志（1949年以來）', '各省縣地方志編纂委員會', '中華人民共和國（1949–迄今）', 26, 2, '中國國家圖書館', 'CN-ST-PRC-14', 'https://www.nlc.cn/', 'zh', '1949年以來各地編修之省志、市志與縣志，內容涵蓋地理、沿革、經濟、社會與人物，中國國家圖書館「新方志」典藏為全國最完整，為研究共和國地方史之基礎文獻', '新方志;地方志;縣志;省志;地方史', '中華人民共和國（1949–迄今）', '全中國', NULL, '中華人民共和國行政區劃地圖集;中華人民共和國統計', '各省縣地方志編纂委員會', '中國國家圖書館', '2026-07-31', 'UNCLEAR', '館藏原件，需申請調閱', '已收錄 metadata', NULL, '共和國地方史基礎文獻', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1027, '人民日報圖文資料庫', '人民日報社', '中華人民共和國（1948–迄今）', 26, 3, '人民日報社', 'CN-ST-PRC-15', 'https://www.people.com.cn/', 'zh', '《人民日報》為中共機關報，1948年創刊迄今連續出版，人民網提供1946年以來圖文全文檢索，為研究共和國政治、社會與輿論史之最重要報刊史料', '人民日報;機關報;報刊;新聞史;全文庫', '中華人民共和國（1949–迄今）', '北京、全中國', NULL, '光明日報;新華社電訊與檔案', '人民日報社', '人民日報社', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', '人民日報社', '共和國最重要報刊史料', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1028, '光明日報', '光明日報社', '中華人民共和國（1949–迄今）', 26, 3, '光明日報社', 'CN-ST-PRC-16', 'https://www.gmw.cn/', 'zh', '《光明日報》1949年創刊，以知識分子與學術界為主要讀者，報導科技、教育、文化與學術動態，光明網提供歷年內容檢索，為研究共和國知識界與意識形態史之重要報刊', '光明日報;知識分子;學術;教育;報刊', '中華人民共和國（1949–迄今）', '北京、全中國', NULL, '人民日報圖文資料庫;恢復高考檔案', '光明日報社', '光明日報社', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', '光明日報社', '知識界重要報刊', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1029, '參考消息', '新華通訊社', '中華人民共和國（1931–迄今）', 26, 3, '新華社', 'CN-ST-PRC-17', 'https://www.news.cn/', 'zh', '《參考消息》由新華社主辦，創刊於革命時期、建國後成為公開發行之國際資訊報刊，轉載境外媒體報導並反映官方視野，為研究共和國對外認知與輿論之特殊史料', '參考消息;新華社;國際資訊;報刊;輿論', '中華人民共和國（1949–迄今）', '北京、全中國', NULL, '人民日報圖文資料庫;新華社電訊與檔案', '新華通訊社', '新華社', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', '新華社', '國際資訊官方報刊', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1030, '中國青年報', '中國青年報社', '中華人民共和國（1951–迄今）', 26, 3, '中國青年報社', 'CN-ST-PRC-18', 'https://www.cyol.com/', 'zh', '《中國青年報》1951年創刊，為共青團中央機關報，記錄歷代青年運動、知識青年與當代青年文化，中青在線提供全文檢索，為研究共和國青年史之重要報刊', '中國青年報;青年;共青團;知青;報刊', '中華人民共和國（1949–迄今）', '北京、全中國', NULL, '知識青年上山下鄉口述;人民日報圖文資料庫', '中國青年報社', '中國青年報社', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', '中國青年報社', '青年運動重要報刊', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1031, '文匯報', '文匯報社', '中華人民共和國（1949–迄今）', 26, 3, '文匯報社', 'CN-ST-PRC-19', 'https://www.whb.cn/', 'zh', '《文匯報》前身1938年創刊於上海，建國後為上海主要報紙之一，以知識分子讀者與文化報導見長，文匯網提供新聞與歷史內容，為研究共和國上海城市史與知識界之報刊', '文匯報;上海;文化;知識分子;報刊', '中華人民共和國（1949–迄今）', '上海', NULL, '申報;光明日報', '文匯報社', '文匯報社', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', '文匯報社', '上海知識界報刊', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1032, '南方週末', '南方日報報業集團', '中華人民共和國（1984–迄今）', 26, 3, '南方日報報業集團', 'CN-ST-PRC-20', 'https://www.infzm.com/', 'zh', '《南方週末》1984年創刊，以深度報導與監督報導著稱，見證改革開放以來中國新聞界之發展，南方新聞網提供歷年文章，為研究當代中國社會與媒體史之代表性刊物', '南方週末;深度報導;新聞;改革開放;媒體', '中華人民共和國（1949–迄今）', '廣州、全中國', NULL, '人民日報圖文資料庫;改革開放親歷者口述', '南方日報報業集團', '南方日報報業集團', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', '南方日報報業集團', '改革時代深度報導刊物', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1033, '毛澤東選集與建國以來文稿', '毛澤東', '中華人民共和國（1949–1976）', 26, 4, '人民出版社', 'CN-ST-PRC-21', 'https://www.peoplepress.com.cn/', 'zh', '《毛澤東選集》四卷與《建國以來毛澤東文稿》系列，收錄毛澤東著作、講話與文稿，人民出版社出版，為研究共和國建政與政治運動之核心一手文獻', '毛澤東;選集;文稿;講話;中國共產黨', '中華人民共和國（1949–迄今）', '北京、全中國', NULL, '中國共產黨中央文件選編;文化大革命檔案', '毛澤東', '人民出版社', '2026-07-31', 'UNCLEAR', '出版品公開發行', '已收錄 metadata', NULL, '毛澤東著作與文稿', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1034, '周恩來年譜', '中共中央文獻研究室', '中華人民共和國（1949–1976）', 26, 4, '中共中央黨史和文獻研究院', 'CN-ST-PRC-22', 'https://www.dswxyjy.org.cn/', 'zh', '《周恩來年譜》與《周恩來文選》，系統編排周恩來自建國前至逝世之活動與文電，中共中央文獻研究室（現併入黨史和文獻研究院）編纂，為共和國外交與內政決策史之基礎史料', '周恩來;年譜;文選;外交;總理', '中華人民共和國（1949–迄今）', '北京、全中國', NULL, '中國共產黨中央文件選編;香港澳門回歸檔案', '中共中央文獻研究室', '中共中央黨史和文獻研究院', '2026-07-31', 'UNCLEAR', '出版品公開發行', '已收錄 metadata', NULL, '周恩來決策與活動紀錄', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1035, '鄧小平文選與年譜', '鄧小平', '中華人民共和國（1978–1997）', 26, 4, '中共中央黨史和文獻研究院', 'CN-ST-PRC-23', 'https://www.dswxyjy.org.cn/', 'zh', '《鄧小平文選》三卷與《鄧小平年譜》，收錄鄧小平主持改革開放時期之講話、談話與文稿，中共中央文獻研究室編纂，為共和國改革開放史之核心一手文獻', '鄧小平;文選;年譜;改革開放;南方談話', '中華人民共和國（1949–迄今）', '北京、深圳、全中國', NULL, '十一屆三中全會與改革開放文件;深圳經濟特區檔案', '鄧小平', '中共中央黨史和文獻研究院', '2026-07-31', 'UNCLEAR', '出版品公開發行', '已收錄 metadata', NULL, '改革開放核心文獻', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1036, '中國共產黨歷任領導人文獻庫', '中共中央黨史和文獻研究院', '中華人民共和國（1949–迄今）', 26, 4, '中國共產黨新聞網', 'CN-ST-PRC-24', 'https://cpc.people.com.cn/', 'zh', '中國共產黨新聞網整理之歷任領導人著作與講話文獻庫，涵蓋毛澤東以降各代領導人全集選集，為研究共和國高層政治與官方思想史之便捷檢索平台', '領導人;文獻庫;中國共產黨;講話;全集', '中華人民共和國（1949–迄今）', '北京、全中國', NULL, '毛澤東選集與建國以來文稿;鄧小平文選與年譜', '中共中央黨史和文獻研究院', '中國共產黨新聞網', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', '中國共產黨新聞網', '歷任領導人文獻集成', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1037, '中共黨史人物傳', '中共中央黨史研究室', '中華人民共和國（1949–）', 26, 4, '中共中央黨史和文獻研究院', 'CN-ST-PRC-25', 'https://www.dswxyjy.org.cn/', 'zh', '《中共黨史人物傳》大型人物傳記叢書，為歷代中國共產黨重要人物立傳，中共中央黨史研究室編纂、中共黨史出版社出版，為研究共和國政治人物史之基礎工具書', '中共黨史;人物傳;傳記;中國共產黨;黨史', '中華人民共和國（1949–迄今）', '全中國', NULL, '周恩來年譜;鄧小平文選與年譜', '中共中央黨史研究室', '中共中央黨史和文獻研究院', '2026-07-31', 'UNCLEAR', '出版品公開發行', '已收錄 metadata', NULL, '中共重要人物傳記叢書', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1038, '錢學森文獻與檔案', '錢學森', '中華人民共和國（1955–2009）', 26, 4, '中國科學院', 'CN-ST-PRC-26', 'https://www.cas.cn/', 'zh', '「兩彈一星」元勳錢學森之文集、書信與科學工作檔案，涵蓋其歸國、航天與系統工程思想，上海交通大學錢學森圖書館與中國科學院整理典藏，為共和國科技史之重要人物史料', '錢學森;航天;兩彈一星;系統工程;科技史', '中華人民共和國（1949–迄今）', '北京、上海、全中國', NULL, '兩彈一星元勳口述史;中國科學院科技發展史料', '錢學森', '中國科學院', '2026-07-31', 'UNCLEAR', '館藏檔案，需申請調閱', '已收錄 metadata', NULL, '航天奠基人檔案', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1039, '開國大典影像與照片（1949）', '中央檔案館', '中華人民共和國（1949）', 26, 5, '中央檔案館', 'CN-ST-PRC-27', 'https://www.saac.gov.cn/', 'zh', '1949年10月1日中華人民共和國開國大典之紀錄影片與照片，含毛澤東宣告「中華人民共和國中央人民政府今天成立了」之歷史畫面，中央檔案館典藏並適度公開', '開國大典;1949;影像;照片;天安門', '中華人民共和國（1949–迄今）', '北京', NULL, '新華社歷史圖片庫;中華人民共和國憲法與法律文本', '中央檔案館', '中央檔案館', '2026-07-31', 'UNCLEAR', '館藏影像，需申請調閱', '已收錄 metadata', NULL, '建國歷史時刻影像', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1040, '新華社歷史圖片庫', '新華通訊社', '中華人民共和國（1949–迄今）', 26, 5, '新華社', 'CN-ST-PRC-28', 'https://www.news.cn/', 'zh', '新華社通訊員拍攝之歷史新聞照片庫，涵蓋建國以來重大事件、領袖活動與社會變遷，新華網影像頻道提供專題瀏覽，為共和國視覺史之最大型官方圖庫', '新華社;新聞照片;圖庫;影像;歷史瞬間', '中華人民共和國（1949–迄今）', '全中國', NULL, '開國大典影像與照片;改革開放四十年影像', '新華通訊社', '新華社', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', '新華社', '共和國最大型官方圖庫', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1041, '文化大革命影像資料', '中國國家圖書館', '中華人民共和國（1966–1976）', 26, 5, '中國國家圖書館', 'CN-ST-PRC-29', 'https://www.nlc.cn/', 'zh', '文化大革命時期之照片、宣傳畫與紀錄影像資料，涵蓋紅衛兵運動、大串聯與批鬥大會等畫面，中國國家圖書館整理文革專題文獻，為該時期之直接視覺史料', '文化大革命;影像;紅衛兵;宣傳畫;照片', '中華人民共和國（1949–迄今）', '全中國', NULL, '文化大革命檔案;人民日報圖文資料庫', '中國國家圖書館', '中國國家圖書館', '2026-07-31', 'UNCLEAR', '館藏影像，需申請調閱', '已收錄 metadata', NULL, '文革時期視覺史料', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1042, '改革開放四十年影像', '人民網', '中華人民共和國（1978–2018）', 26, 5, '人民網', 'CN-ST-PRC-30', 'https://www.people.com.cn/', 'zh', '人民網製作之改革開放四十周年影像專題，含深圳特區、沿海開放、鄉鎮企業與城市變遷之新聞照片，為共和國轉型時期社會經濟變革之視覺紀錄', '改革開放;影像;四十年;深圳;變遷', '中華人民共和國（1949–迄今）', '全中國', NULL, '深圳經濟特區檔案;新華社歷史圖片庫', '人民網', '人民網', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', '人民網', '改革開放視覺紀錄', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1043, '中國統計年鑑', '國家統計局', '中華人民共和國（1981–迄今）', 26, 6, '國家統計局', 'CN-ST-PRC-31', 'https://www.stats.gov.cn/', 'zh', '《中國統計年鑑》自1981年起逐年出版，系統彙編國民經濟、人口、工業、農業、貿易與財政等指標，國家統計局網站提供歷年資料庫查詢，為研究共和國經濟社會之權威統計', '統計年鑑;國家統計局;國民經濟;指標;數據庫', '中華人民共和國（1949–迄今）', '全中國', NULL, '中國人口普查資料;中國工業與國民經濟統計', '國家統計局', '國家統計局', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '共和國權威綜合統計', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1044, '中國人口普查資料（1953–2020）', '國家統計局', '中華人民共和國（1953–2020）', 26, 6, '國家統計局', 'CN-ST-PRC-32', 'https://www.stats.gov.cn/', 'zh', '1953、1964、1982、1990、2000、2010、2020年歷次全國人口普查資料，涵蓋人口總量、結構、城鄉分布與家庭規模，國家統計局公布歷次普查公報與主要數據，為共和國人口史之基礎統計', '人口普查;人口;普查;國家統計局;人口結構', '中華人民共和國（1949–迄今）', '全中國', NULL, '中國統計年鑑;民國時期人口統計與戶口調查', '國家統計局', '國家統計局', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '歷次人口普查數據', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1045, '中國工業與國民經濟統計', '國家統計局', '中華人民共和國（1949–迄今）', 26, 6, '國家統計局', 'CN-ST-PRC-33', 'https://www.stats.gov.cn/', 'zh', '國家統計局發布之工業生產、國內生產總值、固定資產投資與國民經濟核算等統計資料，含改革開放前後對比數據，為研究共和國經濟發展與結構變遷之權威數據來源', '工業統計;國民經濟;GDP;統計數據;經濟發展', '中華人民共和國（1949–迄今）', '全中國', NULL, '中國統計年鑑;一五計畫與社會主義改造檔案', '國家統計局', '國家統計局', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '共和國經濟統計權威', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1046, '中國能源統計年鑑', '國家統計局', '中華人民共和國（1986–迄今）', 26, 6, '國家統計局', 'CN-ST-PRC-34', 'https://www.stats.gov.cn/', 'zh', '《中國能源統計年鑑》彙編能源生產、消費、進出口與結構數據，國家統計局能源統計資料庫提供歷年查詢，為研究共和國能源政策與環境變遷之基礎統計史料', '能源統計;能源;年鑑;統計數據;環境', '中華人民共和國（1949–迄今）', '全中國', NULL, '中國統計年鑑;三北防護林工程史料', '國家統計局', '國家統計局', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '能源數據基礎史料', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1047, '秦始皇兵馬俑發掘報告（1974）', '秦始皇帝陵博物院', '中華人民共和國（1974–）', 26, 7, '秦始皇帝陵博物院', 'CN-ST-PRC-35', 'https://www.bmy.com.cn/', 'zh', '1974年陝西臨潼農民打井發現、秦始皇兵馬俑坑之發掘與保護工作，出土陶俑、陶馬與青銅兵器，秦始皇帝陵博物院整理發掘報告與研究資料，為共和國最著名考古發現之一', '兵馬俑;秦始皇陵;考古;發掘報告;世界文化遺產', '中華人民共和國（1949–迄今）', '陝西西安', NULL, '馬王堆漢墓發掘報告;中華文明探源工程', '秦始皇帝陵博物院', '秦始皇帝陵博物院', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '二十世紀重大考古發現', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1048, '馬王堆漢墓發掘報告（1972–1974）', '湖南省博物館', '中華人民共和國（1972–1974）', 26, 7, '湖南省博物館', 'CN-ST-PRC-36', 'https://www.hnmuseum.com/', 'zh', '1972–1974年湖南長沙馬王堆漢墓之系統發掘，出土西漢女屍、帛畫、帛書與漆器，湖南省博物館典藏並發表發掘報告，為共和國考古學之里程碑發掘', '馬王堆;漢墓;帛書;發掘報告;西漢', '中華人民共和國（1949–迄今）', '湖南長沙', NULL, '秦始皇兵馬俑發掘報告;中華文明探源工程', '湖南省博物館', '湖南省博物館', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '馬王堆重大考古發掘', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1049, '南海一號沉船考古（2007）', '廣東省博物館', '中華人民共和國（1987–2007）', 26, 7, '廣東省博物館', 'CN-ST-PRC-37', 'https://www.gdmuseum.com/', 'zh', '南宋古船「南海一號」之發現與2007年整體打撈，出水大量瓷器、金器與錢幣，廣東省博物館（海上絲綢之路博物館）整理考古資料，為共和國水下考古之代表性成果', '南海一號;沉船;水下考古;海上絲綢之路;南宋', '中華人民共和國（1949–迄今）', '廣東陽江', NULL, '中華文明探源工程;三星堆祭祀坑新發掘', '廣東省博物館', '廣東省博物館', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '水下考古代表性成果', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1050, '三星堆祭祀坑新發掘（1986、2020–）', '四川省文物考古研究院', '中華人民共和國（1986–）', 26, 7, '三星堆博物館', 'CN-ST-PRC-38', 'https://www.sxd.cn/', 'zh', '1986年與2020年以來四川廣漢三星堆祭祀坑之發掘，出土青銅面具、神樹、金杖與象牙等，四川省文物考古研究院主持發掘、三星堆博物館展示，為古蜀文明之核心考古成果', '三星堆;古蜀文明;青銅器;祭祀坑;考古', '中華人民共和國（1949–迄今）', '四川廣漢', NULL, '中華文明探源工程;秦始皇兵馬俑發掘報告', '四川省文物考古研究院', '三星堆博物館', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '古蜀文明核心考古成果', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1051, '中華文明探源工程', '國家文物局', '中華人民共和國（2002–）', 26, 7, '國家文物局', 'CN-ST-PRC-39', 'https://www.ncha.gov.cn/', 'zh', '國家「中華文明探源工程」之考古研究與發掘成果，涵蓋良渚、石峁、陶寺、二里頭等遺址之多學科研究，國家文物局公布階段性成果，為共和國考古學國家工程之代表', '中華文明探源;考古;良渚;石峁;二里頭', '中華人民共和國（1949–迄今）', '全中國', NULL, '良渚古城與水利系統遺址;秦始皇兵馬俑發掘報告', '國家文物局', '國家文物局', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '文明起源國家考古工程', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1052, '人民英雄紀念碑碑文與設計史料', '北京市人民政府', '中華人民共和國（1949–1958）', 26, 8, '國家文物局', 'CN-ST-PRC-40', 'https://www.ncha.gov.cn/', 'zh', '北京天安門廣場人民英雄紀念碑之興建史料，含毛澤東題詞「人民英雄永垂不朽」與碑座浮雕設計，1958年落成，相關圖檔與設計資料為共和國紀念碑刻之代表', '人民英雄紀念碑;天安門;浮雕;紀念碑;碑文', '中華人民共和國（1949–迄今）', '北京', NULL, '革命紀念碑與烈士陵園史料;開國大典影像與照片', '北京市人民政府', '國家文物局', '2026-07-31', 'UNCLEAR', '館藏影像，需申請調閱', '已收錄 metadata', NULL, '共和國紀念碑刻代表', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1053, '革命紀念碑與烈士陵園史料', '國家文物局', '中華人民共和國（1949–迄今）', 26, 8, '國家文物局', 'CN-ST-PRC-41', 'https://www.ncha.gov.cn/', 'zh', '全國革命紀念碑、烈士陵園與革命文物之登錄與保護資料，國家文物局公布文物保護單位名錄與革命文物專題，為共和國「革命文物」體系之系統紀錄', '革命紀念碑;烈士陵園;革命文物;文物保護;紀念', '中華人民共和國（1949–迄今）', '全中國', NULL, '人民英雄紀念碑碑文與設計史料;國家文物局', '國家文物局', '國家文物局', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '革命文物體系紀錄', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1054, '兩彈一星元勳口述史', '中國科學院', '中華人民共和國（1955–）', 26, 9, '中國科學院', 'CN-ST-PRC-42', 'https://www.cas.cn/', 'zh', '參與原子彈、氫彈與人造衛星工程之科學家口述訪談，涵蓋錢學森、鄧稼先、于敏等元勳之親歷紀錄，中國科學院組織口述史計畫整理，為共和國科技史之珍貴見證', '兩彈一星;口述史;科學家;錢學森;國防科技', '中華人民共和國（1949–迄今）', '北京、青海、新疆', NULL, '錢學森文獻與檔案;中國科學院科技發展史料', '中國科學院', '中國科學院', '2026-07-31', 'UNCLEAR', '訪談資料需申請使用', '已收錄 metadata', NULL, '兩彈一星親歷者訪談', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1055, '知識青年上山下鄉口述', '中國國家圖書館', '中華人民共和國（1968–1981）', 26, 9, '中國國家圖書館', 'CN-ST-PRC-43', 'https://www.nlc.cn/', 'zh', '1968年知識青年上山下鄉運動之親歷者口述訪談與回憶錄，涵蓋下鄉知青在農村的勞動與生活經歷，中國國家圖書館整理專題文獻，為共和國社會史之重要口述史料', '知識青年;知青;上山下鄉;口述史;一代人', '中華人民共和國（1949–迄今）', '全中國', NULL, '中國青年報;改革開放親歷者口述', '中國國家圖書館', '中國國家圖書館', '2026-07-31', 'UNCLEAR', '訪談資料需申請使用', '已收錄 metadata', NULL, '知青一代口述紀錄', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1056, '改革開放親歷者口述', '人民網', '中華人民共和國（1978–）', 26, 9, '人民網', 'CN-ST-PRC-44', 'https://www.people.com.cn/', 'zh', '改革開放歷程親歷者之口述訪談專題，涵蓋特區建設者、鄉鎮企業家、留學生與下海者之見證，人民網製作系列訪談節目並整理文字稿，為共和國轉型史之生動口述史料', '改革開放;口述史;親歷者;特區;企業家', '中華人民共和國（1949–迄今）', '全中國', NULL, '深圳經濟特區檔案;改革開放四十年影像', '人民網', '人民網', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', '人民網', '改革開放見證訪談', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1057, '浦東開發開放口述史', '上海市地方誌辦公室', '中華人民共和國（1990–）', 26, 9, '上海市地方誌辦公室', 'CN-ST-PRC-45', NULL, 'zh', '上海浦東開發開放三十年之親歷者口述訪談，涵蓋規劃者、金融從業者與建設者之見證，上海市地方誌辦公室與相關機構整理出版，為共和國區域開發史之重要口述史料', '浦東;上海;開發開放;口述史;金融中心', '中華人民共和國（1949–迄今）', '上海', NULL, '深圳經濟特區檔案;改革開放親歷者口述', '上海市地方誌辦公室', '上海市地方誌辦公室', '2026-07-31', 'UNCLEAR', '訪談資料需申請使用', '已收錄 metadata', '上海市地方誌辦公室', '浦東開發親歷訪談', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1058, '中國人民銀行金融史料', '中國人民銀行', '中華人民共和國（1948–迄今）', 26, 10, '中國人民銀行', 'CN-ST-PRC-46', 'https://www.pbc.gov.cn/', 'zh', '中國人民銀行自1948年成立起之金融史料與貨幣發行紀錄，涵蓋人民幣制度、計畫經濟時期之金融管理與改革開放以來之央行體系，人民銀行網站提供歷史資料，為共和國金融史之核心史料', '中國人民銀行;央行;貨幣;金融史;人民幣', '中華人民共和國（1949–迄今）', '北京、全中國', NULL, '法幣改革與中央銀行檔案;中國銀行行史', '中國人民銀行', '中國人民銀行', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '共和國金融史核心史料', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1059, '大慶油田開發史料', '中國石油天然氣集團有限公司', '中華人民共和國（1959–）', 26, 10, '中國石油天然氣集團有限公司', 'CN-ST-PRC-47', 'https://www.cnpc.com.cn/', 'zh', '1959年大慶油田發現與開發之史料，含「鐵人」王進喜與石油會戰之檔案與報導，為共和國工業化與「石油工業學大慶」之象徵，中國石油集團整理油田開發史料', '大慶油田;石油;王進喜;工業化;石油會戰', '中華人民共和國（1949–迄今）', '黑龍江大慶', NULL, '一五計畫與社會主義改造檔案;中國工業與國民經濟統計', '中國石油天然氣集團有限公司', '中國石油天然氣集團有限公司', '2026-07-31', 'UNCLEAR', '館藏史料，需申請調閱', '已收錄 metadata', '中國石油天然氣集團有限公司', '共和國工業化象徵', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1060, '三峽工程檔案', '中國長江三峽集團有限公司', '中華人民共和國（1994–2020）', 26, 10, '中國長江三峽集團有限公司', 'CN-ST-PRC-48', 'https://www.ctg.com.cn/', 'zh', '長江三峽工程之論證、建設與移民安置檔案，1994年開工、2020年全面竣工，為世界最大水利樞紐工程，三峽集團與長江水利委員會整理工程史料，涵蓋建設、發電與生態爭議', '三峽工程;水利;發電;移民;長江', '中華人民共和國（1949–迄今）', '湖北宜昌、重慶', NULL, '1998年特大洪水檔案;中國能源統計年鑑', '中國長江三峽集團有限公司', '中國長江三峽集團有限公司', '2026-07-31', 'UNCLEAR', '館藏史料，需申請調閱', '已收錄 metadata', '中國長江三峽集團有限公司', '世界最大水利樞紐工程史料', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1061, '中國高速鐵路建設史料', '中國國家鐵路集團有限公司', '中華人民共和國（2008–）', 26, 10, '中國國家鐵路集團有限公司', 'CN-ST-PRC-49', 'https://www.china-railway.com.cn/', 'zh', '2008年京津城際鐵路通車以來中國高速鐵路建設與營運史料，涵蓋路網規劃、技術引進與自主創新歷程，中國國家鐵路集團公布營運數據與建設資料，為共和國交通現代化之重要紀錄', '高鐵;高速鐵路;鐵路;交通建設;鐵路網', '中華人民共和國（1949–迄今）', '全中國', NULL, '民國鐵道部與國有鐵路統計;中國統計年鑑', '中國國家鐵路集團有限公司', '中國國家鐵路集團有限公司', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '高鐵時代交通史料', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1062, '深圳經濟特區檔案', '深圳市人民政府', '中華人民共和國（1980–）', 26, 10, '深圳市檔案館', 'CN-ST-PRC-50', 'https://www.szdag.gov.cn/', 'zh', '1980年深圳經濟特區建立以來之決策與發展檔案，涵蓋特區條例、招商引資、城市規劃與改革試驗，深圳市檔案館典藏並提供開放查詢，為共和國改革開放史之關鍵地方檔案', '深圳;經濟特區;改革開放;特區檔案;城市化', '中華人民共和國（1949–迄今）', '廣東深圳', NULL, '十一屆三中全會與改革開放文件;浦東開發開放口述史', '深圳市人民政府', '深圳市檔案館', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '改革開放窗口城市檔案', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1063, '中國商飛C919研製史料', '中國商用飛機有限責任公司', '中華人民共和國（2008–）', 26, 10, '中國商用飛機有限責任公司', 'CN-ST-PRC-51', 'https://www.comac.cc/', 'zh', '中國商飛公司研製C919大型客機之史料，2008年成立公司、2023年商業首航，涵蓋自主研製、適航取證與產業鏈建設，公司官網發布研製進展與資料，為共和國高端製造之代表', 'C919;大飛機;中國商飛;航空工業;自主研製', '中華人民共和國（1949–迄今）', '上海、全中國', NULL, '中國科學院科技發展史料;改革開放四十年影像', '中國商用飛機有限責任公司', '中國商用飛機有限責任公司', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', '中國商用飛機有限責任公司', '大飛機研製代表史料', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1064, '掃盲運動史料', '中華人民共和國教育部', '中華人民共和國（1950–1990）', 26, 11, '中國國家圖書館', 'CN-ST-PRC-52', 'https://www.nlc.cn/', 'zh', '建國初期至八〇年代之掃盲運動檔案與教材，涵蓋冬學運動、掃盲識字班與工農速成教育，中國國家圖書館整理掃盲專題文獻，為共和國教育史與國民素質提升之重要史料', '掃盲;識字;教育;冬學;工農教育', '中華人民共和國（1949–迄今）', '全中國', NULL, '恢復高考檔案;中國新方志', '中華人民共和國教育部', '中國國家圖書館', '2026-07-31', 'UNCLEAR', '館藏原件，需申請調閱', '已收錄 metadata', NULL, '掃盲運動教育史料', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1065, '恢復高考（1977）檔案', '中華人民共和國教育部', '中華人民共和國（1977）', 26, 11, '中華人民共和國教育部', 'CN-ST-PRC-53', 'https://www.moe.gov.cn/', 'zh', '1977年恢復高等學校招生考試之文件與親歷紀錄，為文革後教育制度之轉折點，教育部整理恢復高考史料，涵蓋招生改革與人才選拔，為共和國教育史之關鍵事件', '恢復高考;1977;高考;招生;教育制度', '中華人民共和國（1949–迄今）', '全中國', NULL, '掃盲運動史料;光明日報', '中華人民共和國教育部', '中華人民共和國教育部', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', '中華人民共和國教育部', '高考制度恢復之轉折', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1066, '北京協和醫學院（1949年以來）', '北京協和醫學院', '中華人民共和國（1949–迄今）', 26, 11, '北京協和醫學院', 'CN-ST-PRC-54', 'https://www.pumc.edu.cn/', 'zh', '北京協和醫學院1949年後之辦學與醫學研究史料，涵蓋院校調整、臨床醫學與公共衛生發展，協和官網提供校史資料，為共和國現代醫學教育史之代表機構史料', '協和醫學院;醫學教育;公衛;醫療;院校調整', '中華人民共和國（1949–迄今）', '北京', NULL, '北京協和醫學院民國時期史料;SARS防治檔案', '北京協和醫學院', '北京協和醫學院', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '現代醫學教育代表機構', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1067, 'SARS防治檔案（2003）', '國家衛生健康委員會', '中華人民共和國（2003）', 26, 11, '國家衛生健康委員會', 'CN-ST-PRC-55', 'https://www.nhc.gov.cn/', 'zh', '2003年SARS疫情之防治政策文件與公衛應對紀錄，涵蓋疫情發布、隔離措施與醫療體系動員，國家衛生健康委員會網站保留歷年通報，為共和國公共衛生史之重大事件史料', 'SARS;非典;疫情;公共衛生;防治', '中華人民共和國（1949–迄今）', '北京、廣東、全中國', NULL, '新冠疫情公開數據與文件;北京協和醫學院', '國家衛生健康委員會', '國家衛生健康委員會', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, 'SARS疫情公衛史料', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1068, '新冠疫情公開數據與文件', '國家衛生健康委員會', '中華人民共和國（2020–2023）', 26, 11, '國家衛生健康委員會', 'CN-ST-PRC-56', 'https://www.nhc.gov.cn/', 'zh', 'COVID-19疫情期間國家衛生健康委員會發布之每日疫情通報、診療方案與防控文件，官網完整保留公開紀錄，為共和國當代公共衛生與社會應對之第一手官方史料', 'COVID-19;新冠疫情;疫情通報;公共衛生;防控', '中華人民共和國（1949–迄今）', '武漢、全中國', NULL, 'SARS防治檔案;國家統計局', '國家衛生健康委員會', '國家衛生健康委員會', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '當代疫情官方紀錄', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1069, '中國科學院科技發展史料', '中國科學院', '中華人民共和國（1949–迄今）', 26, 11, '中國科學院', 'CN-ST-PRC-57', 'https://www.cas.cn/', 'zh', '中國科學院自1949年成立起之科研機構沿革與重大科研成果史料，涵蓋「兩彈一星」、人工合成胰島素、北斗與深海探測等，科學院網站提供歷史資料，為共和國科技史之核心史料', '中國科學院;科研;科技史;兩彈一星;院士', '中華人民共和國（1949–迄今）', '北京、全中國', NULL, '兩彈一星元勳口述史;錢學森文獻與檔案', '中國科學院', '中國科學院', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '共和國科技發展核心史料', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1070, '1954年長江特大洪水檔案', '中華人民共和國水利部', '中華人民共和國（1954）', 26, 12, '中華人民共和國水利部', 'CN-ST-PRC-58', 'https://www.mwr.gov.cn/', 'zh', '1954年長江中下游特大洪水之災情與治理檔案，促成荊江分洪工程與堤防加固建設，水利部與長江水利委員會整理災害史料，為共和國水患治理史之關鍵紀錄', '1954年洪水;長江;水災;分洪;水利', '中華人民共和國（1949–迄今）', '長江中下游', NULL, '1998年特大洪水檔案;三峽工程檔案', '中華人民共和國水利部', '中華人民共和國水利部', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', '中華人民共和國水利部', '建國初期長江大水史料', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1071, '1998年特大洪水檔案', '中華人民共和國水利部', '中華人民共和國（1998）', 26, 12, '中華人民共和國水利部', 'CN-ST-PRC-59', 'https://www.mwr.gov.cn/', 'zh', '1998年長江、松花江特大洪水之災情與軍民抗洪檔案，涵蓋災害損失統計與後續水利投資政策，水利部公布抗洪與治理資料，為共和國當代災害治理史之重要史料', '1998年洪水;長江;抗洪;水災;水利投資', '中華人民共和國（1949–迄今）', '長江流域、松花江', NULL, '1954年長江特大洪水檔案;三峽工程檔案', '中華人民共和國水利部', '中華人民共和國水利部', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', '中華人民共和國水利部', '當代抗洪治理史料', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1072, '汶川地震（2008）檔案', '中國地震局', '中華人民共和國（2008）', 26, 12, '中國地震局', 'CN-ST-PRC-60', 'https://www.cea.gov.cn/', 'zh', '2008年5月12日汶川大地震之震情、救災與重建檔案，中國地震局發布地震參數與災情資料，涵蓋應急救援與災後重建，為共和國防災減災史之重大事件史料', '汶川地震;2008;地震;救災;重建', '中華人民共和國（1949–迄今）', '四川汶川、全中國', NULL, '中國現代氣象記錄;中國統計年鑑', '中國地震局', '中國地震局', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', '中國地震局', '八級地震災害史料', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1073, '三北防護林工程史料', '國家林業和草原局', '中華人民共和國（1978–）', 26, 12, '國家林業和草原局', 'CN-ST-PRC-61', 'https://www.forestry.gov.cn/', 'zh', '1978年啟動之三北防護林體系建設工程史料，涵蓋造林面積、荒漠化治理與生態效益統計，國家林業和草原局公布工程進展，為世界最大規模生態工程之官方紀錄', '三北防護林;植樹造林;荒漠化;生態工程;林業', '中華人民共和國（1949–迄今）', '西北、華北、東北', NULL, '中國能源統計年鑑;中國統計年鑑', '國家林業和草原局', '國家林業和草原局', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '最大規模生態工程史料', 'CN') ON CONFLICT (id) DO NOTHING;
INSERT INTO sources (id, title_zh, creator, date, period_id, source_type_id, source_name, identifier, source_url, language, description, subject, era_range, geo_range, translator, relation, publisher, contributor, access_date, license_status, license_note, collection_status, source_description, notes, region) OVERRIDING SYSTEM VALUE VALUES (1074, '中國現代氣象記錄', '中國氣象局', '中華人民共和國（1949–迄今）', 26, 12, '中國氣象局', 'CN-ST-PRC-62', 'https://www.cma.gov.cn/', 'zh', '中國氣象局1949年以來之氣象觀測與氣候記錄，含氣候變遷監測、極端天氣與氣象災害資料，氣象局網站提供歷史數據查詢，為共和國氣候與環境變遷之權威紀錄', '氣象;氣候變遷;觀測;氣象災害;環境', '中華人民共和國（1949–迄今）', '全中國', NULL, '中國能源統計年鑑;汶川地震檔案', '中國氣象局', '中國氣象局', '2026-07-31', 'UNCLEAR', '網站公開瀏覽', '已收錄 metadata', NULL, '共和國氣候權威紀錄', 'CN') ON CONFLICT (id) DO NOTHING;

SELECT setval('sources_id_seq', 1074) WHERE NOT EXISTS (SELECT 1 FROM sources WHERE id = 1074);
SELECT setval('sources_id_seq', (SELECT COALESCE(MAX(id), 0) FROM sources));

-- === 3. 史料←→資料類型 ===
INSERT INTO source_materials (source_id, material_type_id) VALUES
  (972, 1),
  (973, 1),
  (973, 2),
  (974, 1),
  (975, 1),
  (975, 2),
  (976, 1),
  (976, 2),
  (977, 1),
  (977, 2),
  (978, 1),
  (979, 1),
  (979, 2),
  (980, 1),
  (981, 1),
  (981, 2),
  (982, 1),
  (982, 2),
  (983, 1),
  (983, 2),
  (984, 1),
  (984, 2),
  (985, 1),
  (986, 1),
  (986, 2),
  (987, 1),
  (987, 2),
  (988, 1),
  (989, 1),
  (989, 2),
  (990, 1),
  (990, 2),
  (991, 1),
  (992, 1),
  (993, 1),
  (993, 4),
  (994, 1),
  (994, 2),
  (995, 1),
  (995, 2),
  (996, 2),
  (997, 2),
  (998, 2),
  (999, 1),
  (1000, 1),
  (1001, 1),
  (1002, 1),
  (1002, 2),
  (1003, 1),
  (1003, 2),
  (1004, 1),
  (1005, 1),
  (1005, 4),
  (1006, 1),
  (1007, 1),
  (1007, 2),
  (1008, 1),
  (1009, 1),
  (1010, 1),
  (1010, 2),
  (1011, 1),
  (1011, 2),
  (1012, 1),
  (1013, 1),
  (1014, 1),
  (1015, 1),
  (1016, 1),
  (1016, 2),
  (1016, 4),
  (1017, 1),
  (1018, 1),
  (1018, 2),
  (1019, 1),
  (1019, 2),
  (1020, 1),
  (1021, 1),
  (1021, 2),
  (1022, 1),
  (1023, 1),
  (1023, 2),
  (1023, 4),
  (1024, 1),
  (1025, 1),
  (1025, 3),
  (1026, 1),
  (1026, 3),
  (1027, 1),
  (1027, 2),
  (1028, 1),
  (1028, 2),
  (1029, 1),
  (1030, 1),
  (1030, 2),
  (1031, 1),
  (1032, 1),
  (1033, 1),
  (1034, 1),
  (1035, 1),
  (1036, 1),
  (1037, 1),
  (1038, 1),
  (1038, 2),
  (1039, 2),
  (1039, 4),
  (1040, 2),
  (1041, 2),
  (1041, 4),
  (1042, 2),
  (1042, 4),
  (1043, 1),
  (1044, 1),
  (1045, 1),
  (1046, 1),
  (1047, 1),
  (1047, 2),
  (1048, 1),
  (1048, 2),
  (1049, 1),
  (1049, 2),
  (1050, 1),
  (1050, 2),
  (1051, 1),
  (1051, 2),
  (1052, 1),
  (1052, 2),
  (1053, 1),
  (1053, 2),
  (1054, 1),
  (1054, 4),
  (1055, 1),
  (1055, 4),
  (1056, 1),
  (1056, 4),
  (1057, 1),
  (1057, 4),
  (1058, 1),
  (1059, 1),
  (1059, 2),
  (1060, 1),
  (1060, 2),
  (1061, 1),
  (1061, 2),
  (1062, 1),
  (1062, 2),
  (1063, 1),
  (1063, 2),
  (1064, 1),
  (1064, 2),
  (1065, 1),
  (1066, 1),
  (1067, 1),
  (1068, 1),
  (1069, 1),
  (1069, 2),
  (1070, 1),
  (1071, 1),
  (1072, 1),
  (1072, 2),
  (1073, 1),
  (1074, 1)
ON CONFLICT DO NOTHING;

-- === 4. 史料←→來源機構 ===
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (972, 214, 'source'),
  (972, 245, 'publisher'),
  (973, 214, 'source'),
  (973, 243, 'publisher'),
  (974, 137, 'source'),
  (974, 241, 'publisher'),
  (975, 214, 'source'),
  (975, 246, 'publisher'),
  (977, 214, 'source'),
  (977, 246, 'publisher'),
  (978, 214, 'source'),
  (979, 206, 'source'),
  (979, 206, 'publisher'),
  (980, 214, 'source'),
  (980, 214, 'publisher'),
  (981, 214, 'source'),
  (981, 246, 'publisher'),
  (982, 206, 'source'),
  (983, 5, 'source'),
  (983, 5, 'contributor'),
  (984, 217, 'source'),
  (984, 234, 'publisher'),
  (984, 217, 'contributor'),
  (985, 137, 'source'),
  (985, 137, 'contributor'),
  (986, 5, 'source'),
  (986, 5, 'contributor'),
  (987, 137, 'source'),
  (987, 137, 'contributor'),
  (988, 206, 'source'),
  (988, 206, 'contributor'),
  (989, 220, 'source'),
  (989, 220, 'contributor'),
  (990, 206, 'source'),
  (990, 206, 'contributor'),
  (991, 219, 'source'),
  (991, 219, 'contributor'),
  (992, 138, 'source'),
  (992, 138, 'publisher'),
  (992, 138, 'contributor'),
  (993, 224, 'source'),
  (993, 224, 'contributor'),
  (995, 8, 'source'),
  (995, 8, 'contributor'),
  (996, 37, 'source'),
  (996, 37, 'publisher'),
  (996, 37, 'contributor'),
  (997, 137, 'source'),
  (997, 137, 'publisher'),
  (997, 137, 'contributor'),
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (998, 223, 'source'),
  (998, 223, 'publisher'),
  (998, 223, 'contributor'),
  (999, 247, 'publisher'),
  (1000, 206, 'source'),
  (1000, 206, 'contributor'),
  (1001, 137, 'source'),
  (1001, 137, 'publisher'),
  (1001, 137, 'contributor'),
  (1002, 8, 'source'),
  (1002, 8, 'publisher'),
  (1002, 8, 'contributor'),
  (1003, 230, 'source'),
  (1003, 230, 'contributor'),
  (1004, 206, 'source'),
  (1004, 206, 'publisher'),
  (1004, 206, 'contributor'),
  (1005, 236, 'source'),
  (1005, 236, 'publisher'),
  (1006, 215, 'source'),
  (1006, 215, 'publisher'),
  (1006, 215, 'contributor'),
  (1007, 137, 'source'),
  (1007, 137, 'contributor'),
  (1008, 207, 'source'),
  (1008, 207, 'publisher'),
  (1008, 207, 'contributor'),
  (1009, 206, 'source'),
  (1009, 206, 'contributor'),
  (1010, 231, 'source'),
  (1010, 231, 'contributor'),
  (1011, 218, 'source'),
  (1011, 218, 'publisher'),
  (1011, 218, 'contributor'),
  (1012, 214, 'source'),
  (1012, 241, 'publisher'),
  (1012, 214, 'contributor'),
  (1014, 221, 'source'),
  (1014, 221, 'publisher'),
  (1014, 221, 'contributor'),
  (1015, 208, 'source'),
  (1015, 235, 'publisher'),
  (1015, 208, 'contributor'),
  (1017, 210, 'source'),
  (1017, 210, 'publisher'),
  (1017, 210, 'contributor'),
  (1018, 237, 'source'),
  (1018, 216, 'publisher'),
  (1018, 237, 'contributor'),
  (1019, 208, 'source'),
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (1019, 240, 'publisher'),
  (1019, 208, 'contributor'),
  (1020, 137, 'source'),
  (1020, 137, 'contributor'),
  (1021, 208, 'source'),
  (1021, 208, 'contributor'),
  (1023, 214, 'source'),
  (1023, 239, 'publisher'),
  (1023, 214, 'contributor'),
  (1024, 221, 'source'),
  (1024, 221, 'contributor'),
  (1026, 137, 'source'),
  (1026, 244, 'publisher'),
  (1026, 137, 'contributor'),
  (1033, 205, 'source'),
  (1033, 205, 'contributor'),
  (1034, 209, 'source'),
  (1034, 235, 'publisher'),
  (1034, 209, 'contributor'),
  (1035, 209, 'source'),
  (1035, 209, 'contributor'),
  (1036, 209, 'publisher'),
  (1037, 209, 'source'),
  (1037, 209, 'contributor'),
  (1038, 212, 'source'),
  (1038, 212, 'contributor'),
  (1039, 208, 'source'),
  (1039, 208, 'publisher'),
  (1039, 208, 'contributor'),
  (1041, 137, 'source'),
  (1041, 137, 'publisher'),
  (1041, 137, 'contributor'),
  (1043, 227, 'source'),
  (1043, 227, 'publisher'),
  (1043, 227, 'contributor'),
  (1044, 227, 'source'),
  (1044, 227, 'publisher'),
  (1044, 227, 'contributor'),
  (1045, 227, 'source'),
  (1045, 227, 'publisher'),
  (1045, 227, 'contributor'),
  (1046, 227, 'source'),
  (1046, 227, 'publisher'),
  (1046, 227, 'contributor'),
  (1047, 156, 'source'),
  (1047, 156, 'publisher'),
  (1047, 156, 'contributor'),
  (1048, 232, 'source'),
  (1048, 232, 'publisher'),
  (1048, 232, 'contributor'),
ON CONFLICT DO NOTHING;
INSERT INTO source_institutions (source_id, institution_id, role) VALUES
  (1049, 233, 'source'),
  (1049, 233, 'publisher'),
  (1049, 233, 'contributor'),
  (1050, 129, 'source'),
  (1050, 174, 'publisher'),
  (1050, 129, 'contributor'),
  (1051, 225, 'source'),
  (1051, 225, 'publisher'),
  (1051, 225, 'contributor'),
  (1052, 225, 'source'),
  (1052, 242, 'publisher'),
  (1052, 225, 'contributor'),
  (1053, 225, 'source'),
  (1053, 225, 'publisher'),
  (1053, 225, 'contributor'),
  (1054, 212, 'source'),
  (1054, 212, 'publisher'),
  (1054, 212, 'contributor'),
  (1055, 137, 'source'),
  (1055, 137, 'publisher'),
  (1055, 137, 'contributor'),
  (1058, 211, 'source'),
  (1058, 211, 'publisher'),
  (1058, 211, 'contributor'),
  (1061, 238, 'source'),
  (1061, 238, 'publisher'),
  (1061, 238, 'contributor'),
  (1062, 229, 'source'),
  (1062, 248, 'publisher'),
  (1062, 229, 'contributor'),
  (1064, 137, 'source'),
  (1064, 137, 'contributor'),
  (1066, 218, 'source'),
  (1066, 218, 'publisher'),
  (1066, 218, 'contributor'),
  (1067, 228, 'source'),
  (1067, 228, 'publisher'),
  (1067, 228, 'contributor'),
  (1068, 228, 'source'),
  (1068, 228, 'publisher'),
  (1068, 228, 'contributor'),
  (1069, 212, 'source'),
  (1069, 212, 'publisher'),
  (1069, 212, 'contributor'),
  (1073, 226, 'source'),
  (1073, 226, 'publisher'),
  (1073, 226, 'contributor'),
  (1074, 213, 'source'),
  (1074, 213, 'publisher'),
  (1074, 213, 'contributor')
ON CONFLICT DO NOTHING;

-- === 完成 ===
