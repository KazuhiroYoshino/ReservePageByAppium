#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
#language: ja

フィーチャ: 予約ページ

	背景: 宿泊初日の曜日と連泊数によって、週末料金アップ適用が異なる。オプションは別料金。連泊数・宿泊人数・オプションでトータル料金が決まる。

	シナリオ: TC001 Guest user Nexus 10
				前提 デバイスを"Nexus_10_API_29"で選ぶ
        前提 Webドライバは"Chrome"を選択する
#Hotel Planisphere TOPページを開く
        前提 ページ"http://example.selenium.jp/reserveApp_Renewal/"を表示する
        ならば "2"秒待つ

	シナリオアウトライン: Nexus 10 を使って宿泊料金検証テストケース
	  		もし デバイスを<向き>にする
        ならば "1"秒待つ

				もし  宿泊初日の曜日を<宿泊初日>として
    		ならば "1"秒待つ
    		もし  連泊数選択をクリックして
				もし  連泊数を<連泊数>にして
				もし  宿泊人数を<宿泊人数>にして
				もし  朝食バイキング有無を<朝食>にして
				もし  昼からチェックインプランを<昼からチェックインプラン>にして
				もし  お得な観光プランを<お得な観光プラン>にして
				もし  氏名を<氏名>として
				もし  予約内容を記録して

				もし  利用規約に同意して次へボタンをクリックする

				ならば  合計金額は<合計金額>となり
				ならば  宿泊期間の表示が正しく
				ならば  宿泊人数の表示が<宿泊人数>名様となり
				ならば  追加プランが<朝食>または<昼からチェックインプラン>または<お得な観光プラン>で正しく
				ならば  氏名の表示が<氏名>様となり

				もし    確定ボタンをクリックする

				ならば  ポップアップ表示に"ご来館、心よりお待ちしております。"が表示され

				もし    <向き>によってはナビゲータボタンをクリックする
				もし    HOMEボタンをクリックする
#TC001_Nexus_10_API_29
		例:
		|宿泊初日   |連泊数|宿泊人数|朝食 |昼からチェックインプラン|お得な観光プラン|氏名      |合計金額|向き|
		|"Monday"   |"1"   |"1"     |"off"|"off"                   |"off"           |"武田晴信"|"7000"  |"縦向き"|
		|"Tuesday"  |"2"   |"9"     |"off"|"off"                   |"off"           |"山本寛太"|"126000"|"横向き"|
		|"Wednesday"|"1"   |"1"     |"off"|"on"                    |"on"            |"真田昌虎"|"9000"|"横向き"|
		|"Thursday" |"3"   |"2"     |"on" |"off"                   |"off"           |"武田信子"|"51500"|"横向き"|
		|"Friday"   |"5"   |"8"     |"on" |"off"                   |"on"            |"上杉景虎"|"356000"|"縦向き"|
		|"Saturday" |"3"   |"9"     |"on" |"off"                   |"off"           |"柿崎家時"|"247500"|"縦向き"|
		|"Sunday"   |"9"   |"8"     |"on" |"on"                    |"on"            |"直江愛子"|"634000"|"横向き"|

	シナリオ: Nexus 10 テスト終了
    もし シナリオを終了してブラウザを閉じる
    ならば "5"秒待つ


	シナリオ: TC002 Guest user Nexus 4
				前提 デバイスを"Nexus_4_API_29"で選ぶ
        前提 Webドライバは"Chrome"を選択する
#Hotel Planisphere TOPページを開く
        前提 ページ"http://example.selenium.jp/reserveApp_Renewal/"を表示する
        ならば "2"秒待つ

	シナリオアウトライン: Nexus 4 を使って宿泊料金検証テストケース
	  		もし デバイスを<向き>にする
        ならば "1"秒待つ

				もし  宿泊初日の曜日を<宿泊初日>として
    		ならば "1"秒待つ
    		もし  連泊数選択をクリックして
				もし  連泊数を<連泊数>にして
				もし  宿泊人数を<宿泊人数>にして
				もし  朝食バイキング有無を<朝食>にして
				もし  昼からチェックインプランを<昼からチェックインプラン>にして
				もし  お得な観光プランを<お得な観光プラン>にして
				もし  氏名を<氏名>として
				もし  予約内容を記録して

				もし  利用規約に同意して次へボタンをクリックする

				ならば  合計金額は<合計金額>となり
				ならば  宿泊期間の表示が正しく
				ならば  宿泊人数の表示が<宿泊人数>名様となり
				ならば  追加プランが<朝食>または<昼からチェックインプラン>または<お得な観光プラン>で正しく
				ならば  氏名の表示が<氏名>様となり

				もし    確定ボタンをクリックする

				ならば  ポップアップ表示に"ご来館、心よりお待ちしております。"が表示され

				もし    <向き>によってはナビゲータボタンをクリックする
				もし    HOMEボタンをクリックする
#TC002_Nexus_4_API_29
		例:
		|宿泊初日   |連泊数|宿泊人数|朝食 |昼からチェックインプラン|お得な観光プラン|氏名      |合計金額|向き|
		|"Monday"   |"2"   |"1"     |"off"|"off"                   |"off"           |"武田晴信"|"14000"|"縦向き"|
		|"Tuesday"  |"3"   |"8"     |"on" |"on"                    |"off"           |"山本寛太"|"200000"|"縦向き"|
		|"Wednesday"|"9"   |"9"     |"on" |"on"                    |"off"           |"真田昌虎"|"688500"|"縦向き"|
		|"Thursday" |"1"   |"9"     |"off"|"on"                    |"on"            |"武田信子"|"81000"|"縦向き"|
		|"Friday"   |"5"   |"1"     |"off"|"on"                    |"off"           |"上杉景虎"|"39500"|"縦向き"|
		|"Saturday" |"2"   |"1"     |"off"|"off"                   |"on"            |"柿崎家時"|"18500"|"縦向き"|
		|"Sunday"   |"5"   |"2"     |"off"|"on"                    |"off"           |"直江愛子"|"75500"|"縦向き"|

	シナリオ: Nexus 4 テスト終了
    もし シナリオを終了してブラウザを閉じる
    ならば "5"秒待つ


	シナリオ: TC003 Guest user Nexus 6
				前提 デバイスを"Nexus_6_API_29"で選ぶ
        前提 Webドライバは"Chrome"を選択する
#Hotel Planisphere TOPページを開く
        前提 ページ"http://example.selenium.jp/reserveApp_Renewal/"を表示する
        ならば "2"秒待つ

	シナリオアウトライン: Nexus 6 を使って宿泊料金検証テストケース
	  		もし デバイスを<向き>にする
        ならば "1"秒待つ

				もし  宿泊初日の曜日を<宿泊初日>として
    		ならば "1"秒待つ
#    		もし  連泊数選択をクリックして
				もし  氏名入力をクリックして
				もし  連泊数を<連泊数>にして
				もし  宿泊人数を<宿泊人数>にして
				もし  朝食バイキング有無を<朝食>にして
				もし  昼からチェックインプランを<昼からチェックインプラン>にして
				もし  お得な観光プランを<お得な観光プラン>にして
				もし  氏名を<氏名>として
				もし  予約内容を記録して

				もし  利用規約に同意して次へボタンをクリックする

				ならば  合計金額は<合計金額>となり
				ならば  宿泊期間の表示が正しく
				ならば  宿泊人数の表示が<宿泊人数>名様となり
				ならば  追加プランが<朝食>または<昼からチェックインプラン>または<お得な観光プラン>で正しく
				ならば  氏名の表示が<氏名>様となり

				もし    確定ボタンをクリックする

				ならば  ポップアップ表示に"ご来館、心よりお待ちしております。"が表示され

				もし    <向き>によってはナビゲータボタンをクリックする
				もし    HOMEボタンをクリックする
#TC003_Nexus_6_API_29
		例:
		|宿泊初日   |連泊数|宿泊人数|朝食 |昼からチェックインプラン|お得な観光プラン|氏名      |合計金額|向き|
		|"Monday"   |"3"   |"8"     |"on" |"off"                   |"on"            |"武田晴信"|"200000"|"縦向き"|
		|"Tuesday"  |"5"   |"1"     |"off"|"off"                   |"off"           |"山本寛太"|"36750"|"縦向き"|
		|"Wednesday"|"1"   |"2"     |"on" |"on"                    |"off"           |"真田昌虎"|"18000"|"縦向き"|
		|"Thursday" |"5"   |"1"     |"off"|"on"                    |"on"            |"武田信子"|"40500"|"縦向き"|
		|"Friday"   |"2"   |"9"     |"on" |"off"                   |"off"           |"上杉景虎"|"159750"|"縦向き"|
		|"Saturday" |"9"   |"2"     |"on" |"off"                   |"off"           |"柿崎家時"|"158000"|"縦向き"|
		|"Sunday"   |"9"   |"8"     |"on" |"on"                    |"on"            |"直江愛子"|"634000"|"縦向き"|

	シナリオ: Nexus 6 テスト終了
    もし シナリオを終了してブラウザを閉じる
    ならば "5"秒待つ


	シナリオ: TC004 Guest user Nexus 9
				前提 デバイスを"Nexus_9_API_29"で選ぶ
        前提 Webドライバは"Chrome"を選択する
#Hotel Planisphere TOPページを開く
        前提 ページ"http://example.selenium.jp/reserveApp_Renewal/"を表示する
        ならば "2"秒待つ

	シナリオアウトライン: Nexus 9 を使って宿泊料金検証テストケース
	  		もし デバイスを<向き>にする
        ならば "1"秒待つ

				もし  宿泊初日の曜日を<宿泊初日>として
    		ならば "1"秒待つ
    		もし  連泊数選択をクリックして
				もし  連泊数を<連泊数>にして
				もし  宿泊人数を<宿泊人数>にして
				もし  朝食バイキング有無を<朝食>にして
				もし  昼からチェックインプランを<昼からチェックインプラン>にして
				もし  お得な観光プランを<お得な観光プラン>にして
				もし  氏名を<氏名>として
				もし  予約内容を記録して

				もし  利用規約に同意して次へボタンをクリックする

				ならば  合計金額は<合計金額>となり
				ならば  宿泊期間の表示が正しく
				ならば  宿泊人数の表示が<宿泊人数>名様となり
				ならば  追加プランが<朝食>または<昼からチェックインプラン>または<お得な観光プラン>で正しく
				ならば  氏名の表示が<氏名>様となり

				もし    確定ボタンをクリックする

				ならば  ポップアップ表示に"ご来館、心よりお待ちしております。"が表示され

				もし    <向き>によってはナビゲータボタンをクリックする
				もし    HOMEボタンをクリックする
#TC004_Nexus_9_API_29
		例:
		|宿泊初日   |連泊数|宿泊人数|朝食 |昼からチェックインプラン|お得な観光プラン|氏名      |合計金額|向き|
		|"Monday"   |"2"   |"2"     |"on" |"on"                    |"on"            |"武田晴信"|"36000"|"横向き"|
		|"Tuesday"  |"3"   |"1"     |"on" |"on"                    |"on"            |"山本寛太"|"26000"|"縦向き"|
		|"Wednesday"|"5"   |"1"     |"on" |"on"                    |"off"           |"真田昌虎"|"44500"|"縦向き"|
		|"Thursday" |"9"   |"9"     |"off"|"on"                    |"off"           |"武田信子"|"607500"|"横向き"|
		|"Friday"   |"3"   |"9"     |"on" |"on"                    |"on"            |"上杉景虎"|"265500"|"横向き"|
		|"Saturday" |"1"   |"8"     |"off"|"on"                    |"off"           |"柿崎家時"|"78000"|"横向き"|
		|"Sunday"   |"2"   |"8"     |"off"|"off"                   |"off"           |"直江愛子"|"126000"|"縦向き"|

	シナリオ: Nexus 9 テスト終了
    もし シナリオを終了してブラウザを閉じる
    ならば "5"秒待つ


	シナリオ: TC005 Guest user Pixel 3 XL
				前提 デバイスを"Pixel_3_XL_API_29"で選ぶ
        前提 Webドライバは"Chrome"を選択する
#Hotel Planisphere TOPページを開く
        前提 ページ"http://example.selenium.jp/reserveApp_Renewal/"を表示する
        ならば "2"秒待つ

	シナリオアウトライン: Pixel 3 XL を使って宿泊料金検証テストケース
	  		もし デバイスを<向き>にする
        ならば "1"秒待つ

				もし  宿泊初日の曜日を<宿泊初日>として
    		ならば "1"秒待つ
#    		もし  連泊数選択をクリックして
				もし  氏名入力をクリックして
				もし  連泊数を<連泊数>にして
				もし  宿泊人数を<宿泊人数>にして
				もし  朝食バイキング有無を<朝食>にして
				もし  昼からチェックインプランを<昼からチェックインプラン>にして
				もし  お得な観光プランを<お得な観光プラン>にして
				もし  氏名を<氏名>として
				もし  予約内容を記録して

				もし  利用規約に同意して次へボタンをクリックする

				ならば  合計金額は<合計金額>となり
				ならば  宿泊期間の表示が正しく
				ならば  宿泊人数の表示が<宿泊人数>名様となり
				ならば  追加プランが<朝食>または<昼からチェックインプラン>または<お得な観光プラン>で正しく
				ならば  氏名の表示が<氏名>様となり

				もし    確定ボタンをクリックする

				ならば  ポップアップ表示に"ご来館、心よりお待ちしております。"が表示され

				もし    <向き>によってはナビゲータボタンをクリックする
				もし    HOMEボタンをクリックする
#TC005_Pixel_3_XL_API_29
		例:
		|宿泊初日   |連泊数|宿泊人数|朝食 |昼からチェックインプラン|お得な観光プラン|氏名      |合計金額|向き|
		|"Monday"   |"5"   |"8"     |"on" |"off"                   |"off"           |"武田晴信"|"320000"|"縦向き"|
		|"Tuesday"  |"1"   |"9"     |"on" |"on"                    |"on"            |"山本寛太"|"90000"|"縦向き"|
		|"Wednesday"|"2"   |"9"     |"off"|"on"                    |"on"            |"真田昌虎"|"144000"|"縦向き"|
		|"Thursday" |"2"   |"1"     |"off"|"on"                    |"on"            |"武田信子"|"16000"|"縦向き"|
		|"Friday"   |"9"   |"2"     |"off"|"off"                   |"off"           |"上杉景虎"|"136500"|"縦向き"|
		|"Saturday" |"9"   |"2"     |"on" |"off"                   |"on"            |"柿崎家時"|"160000"|"縦向き"|
		|"Sunday"   |"3"   |"1"     |"on" |"on"                    |"on"            |"直江愛子"|"27750"|"縦向き"|

	シナリオ: Pixel 3 XL テスト終了
    もし シナリオを終了してブラウザを閉じる
    ならば "5"秒待つ


	シナリオ: TC006 Guest user Pixel 4 XL
				前提 デバイスを"Pixel_4_XL_API_29"で選ぶ
        前提 Webドライバは"Chrome"を選択する
#Hotel Planisphere TOPページを開く
        前提 ページ"http://example.selenium.jp/reserveApp_Renewal/"を表示する
        ならば "2"秒待つ

	シナリオアウトライン: Pixel 4 XL を使って宿泊料金検証テストケース
	  		もし デバイスを<向き>にする
        ならば "1"秒待つ

				もし  宿泊初日の曜日を<宿泊初日>として
    		ならば "1"秒待つ
#    		もし  連泊数選択をクリックして
				もし  氏名入力をクリックして
				もし  連泊数を<連泊数>にして
				もし  宿泊人数を<宿泊人数>にして
				もし  朝食バイキング有無を<朝食>にして
				もし  昼からチェックインプランを<昼からチェックインプラン>にして
				もし  お得な観光プランを<お得な観光プラン>にして
				もし  氏名を<氏名>として
				もし  予約内容を記録して

				もし  利用規約に同意して次へボタンをクリックする

				ならば  合計金額は<合計金額>となり
				ならば  宿泊期間の表示が正しく
				ならば  宿泊人数の表示が<宿泊人数>名様となり
				ならば  追加プランが<朝食>または<昼からチェックインプラン>または<お得な観光プラン>で正しく
				ならば  氏名の表示が<氏名>様となり

				もし    確定ボタンをクリックする

				ならば  ポップアップ表示に"ご来館、心よりお待ちしております。"が表示され

				もし    <向き>によってはナビゲータボタンをクリックする
				もし    HOMEボタンをクリックする
#TC006_Pixel_4_XL_API_29
		例:
		|宿泊初日   |連泊数|宿泊人数|朝食 |昼からチェックインプラン|お得な観光プラン|氏名      |合計金額|向き|
		|"Monday"   |"3"   |"8"     |"off"|"off"                   |"off"           |"武田晴信"|"168000"|"縦向き"|
		|"Tuesday"  |"9"   |"1"     |"off"|"on"                    |"on"            |"山本寛太"|"68500"|"縦向き"|
		|"Wednesday"|"2"   |"8"     |"on" |"off"                   |"off"           |"真田昌虎"|"128000"|"縦向き"|
		|"Thursday" |"3"   |"9"     |"off"|"off"                   |"on"            |"武田信子"|"213750"|"縦向き"|
		|"Friday"   |"5"   |"1"     |"off"|"off"                   |"off"           |"上杉景虎"|"38500"|"縦向き"|
		|"Saturday" |"5"   |"9"     |"on" |"off"                   |"off"           |"柿崎家時"|"391500"|"縦向き"|
		|"Sunday"   |"1"   |"2"     |"off"|"on"                    |"off"           |"直江愛子"|"19500"|"縦向き"|

	シナリオ: Pixel 4 XL テスト終了
    もし シナリオを終了してブラウザを閉じる
    ならば "5"秒待つ


	シナリオ: TC007 Guest user Pixel C
				前提 デバイスを"Pixel_C_API_29"で選ぶ
        前提 Webドライバは"Chrome"を選択する
#Hotel Planisphere TOPページを開く
        前提 ページ"http://example.selenium.jp/reserveApp_Renewal/"を表示する
        ならば "2"秒待つ

	シナリオアウトライン: Pixel C を使って宿泊料金検証テストケース
	  		もし デバイスを<向き>にする
        ならば "1"秒待つ

				もし  宿泊初日の曜日を<宿泊初日>として
    		ならば "1"秒待つ
    		もし  連泊数選択をクリックして
				もし  連泊数を<連泊数>にして
				もし  宿泊人数を<宿泊人数>にして
				もし  朝食バイキング有無を<朝食>にして
				もし  昼からチェックインプランを<昼からチェックインプラン>にして
				もし  お得な観光プランを<お得な観光プラン>にして
				もし  氏名を<氏名>として
				もし  予約内容を記録して

				もし  利用規約に同意して次へボタンをクリックする

				ならば  合計金額は<合計金額>となり
				ならば  宿泊期間の表示が正しく
				ならば  宿泊人数の表示が<宿泊人数>名様となり
				ならば  追加プランが<朝食>または<昼からチェックインプラン>または<お得な観光プラン>で正しく
				ならば  氏名の表示が<氏名>様となり

				もし    確定ボタンをクリックする

				ならば  ポップアップ表示に"ご来館、心よりお待ちしております。"が表示され

				もし    <向き>によってはナビゲータボタンをクリックする
				もし    HOMEボタンをクリックする
#TC007_Pixel_C_API_29
		例:
		|宿泊初日   |連泊数|宿泊人数|朝食 |昼からチェックインプラン|お得な観光プラン|氏名      |合計金額|向き|
		|"Monday"   |"9"   |"9"     |"off"|"on"                    |"on"            |"武田晴信"|"616500"|"縦向き"|
		|"Tuesday"  |"5"   |"2"     |"off"|"off"                   |"off"           |"山本寛太"|"73500"|"横向き"|
		|"Wednesday"|"3"   |"9"     |"off"|"off"                   |"on"            |"真田昌虎"|"198000"|"横向き"|
		|"Thursday" |"2"   |"8"     |"on" |"off"                   |"off"           |"武田信子"|"128000"|"横向き"|
		|"Friday"   |"1"   |"1"     |"on" |"on"                    |"on"            |"上杉景虎"|"10000"|"横向き"|
		|"Saturday" |"2"   |"8"     |"on" |"on"                    |"on"            |"柿崎家時"|"172000"|"横向き"|
		|"Sunday"   |"3"   |"9"     |"off"|"off"                   |"off"           |"直江愛子"|"204750"|"横向き"|

	シナリオ: Pixel C テスト終了
    もし シナリオを終了してブラウザを閉じる
