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
        前提 ページ"http://example.selenium.jp/reserveApp_Renewal/"を表示する
        ならば "2"秒待つ

	シナリオアウトライン: Nexus 10 を使ってエラー条件組み合わせテストケース
	  		もし デバイスを<向き>にする
        ならば "1"秒待つ

				もし  宿泊初日条件を<初日条件>にして
    		ならば "1"秒待つ
    		もし  連泊数選択をクリックして
				もし  連泊数を<連泊数>にして
				もし  宿泊人数を<宿泊人数>にして
				もし  氏名を<氏名>として

				もし  利用規約に同意して次へボタンをクリックする

				ならば  ポップアップ表示に<Result>が表示され

				もし  戻るボタンを押す
				かつ  画面更新
#TC001_Nexus_10_API_29
		例:
		|初日条件  |連泊数|宿泊人数|氏名  |向き    |Result|
		|"3ヶ月先" |"1"   |"0"     |""    |"横向き"|"お名前が指定されていません"|
		|"当日予約"|"0"   |"1"     |""    |"横向き"|"お名前が指定されていません"|
		|"翌日以降"|"0"   |"0"     |"有効"|"縦向き"|"宿泊日数が1日以下です"|

	シナリオ: Nexus 10 テスト終了
    もし シナリオを終了してブラウザを閉じる
    ならば "5"秒待つ


	シナリオ: TC002 Guest user Nexus 4
				前提 デバイスを"Nexus_4_API_29"で選ぶ
        前提 Webドライバは"Chrome"を選択する
        前提 ページ"http://example.selenium.jp/reserveApp_Renewal/"を表示する
        ならば "2"秒待つ

	シナリオアウトライン: Nexus 4 を使ってエラー条件組み合わせテストケース
	  		もし デバイスを<向き>にする
        ならば "1"秒待つ

				もし  宿泊初日条件を<初日条件>にして
    		ならば "1"秒待つ
#    		もし  連泊数選択をクリックして
				もし  氏名入力をクリックして
				もし  連泊数を<連泊数>にして
				もし  宿泊人数を<宿泊人数>にして
				もし  氏名を<氏名>として

				もし  利用規約に同意して次へボタンをクリックする

				ならば  ポップアップ表示に<Result>が表示され

				もし  戻るボタンを押す
				かつ  画面更新
#TC002_Nexus_4_API_29
		例:
		|初日条件  |連泊数|宿泊人数|氏名  |向き    |Result|
		|"3ヶ月先" |"1"   |"0"     |""    |"縦向き"|"お名前が指定されていません"|
		|"当日予約"|"0"   |"1"     |""    |"縦向き"|"お名前が指定されていません"|
		|"翌日以降"|"0"   |"0"     |"有効"|"縦向き"|"宿泊日数が1日以下です"|

	シナリオ: Nexus 4 テスト終了
    もし シナリオを終了してブラウザを閉じる
    ならば "5"秒待つ


	シナリオ: TC003 Guest user Nexus 6
				前提 デバイスを"Nexus_6_API_29"で選ぶ
        前提 Webドライバは"Chrome"を選択する
        前提 ページ"http://example.selenium.jp/reserveApp_Renewal/"を表示する
        ならば "2"秒待つ

	シナリオアウトライン: Nexus 6 を使ってエラー条件組み合わせテストケース
	  		もし デバイスを<向き>にする
        ならば "1"秒待つ

				もし  宿泊初日条件を<初日条件>にして
    		ならば "1"秒待つ
#    		もし  連泊数選択をクリックして
				もし  氏名入力をクリックして
				もし  連泊数を<連泊数>にして
				もし  宿泊人数を<宿泊人数>にして
				もし  氏名を<氏名>として

				もし  利用規約に同意して次へボタンをクリックする

				ならば  ポップアップ表示に<Result>が表示され

				もし  戻るボタンを押す
				かつ  画面更新
#TC003_Nexus_6_API_29
		例:
		|初日条件  |連泊数|宿泊人数|氏名  |向き    |Result|
		|"3ヶ月先" |"0"   |"1"     |""    |"縦向き"|"お名前が指定されていません"|
		|"当日予約"|"0"   |"1"     |""    |"縦向き"|"お名前が指定されていません"|
		|"翌日以降"|"1"   |"0"     |"有効"|"縦向き"|"人数が入力されていません。"|

	シナリオ: Nexus 6 テスト終了
    もし シナリオを終了してブラウザを閉じる
    ならば "5"秒待つ


	シナリオ: TC004 Guest user Nexus 9
				前提 デバイスを"Nexus_9_API_29"で選ぶ
        前提 Webドライバは"Chrome"を選択する
        前提 ページ"http://example.selenium.jp/reserveApp_Renewal/"を表示する
        ならば "2"秒待つ

	シナリオアウトライン: Nexus 9 を使ってエラー条件組み合わせテストケース
	  		もし デバイスを<向き>にする
        ならば "1"秒待つ

				もし  宿泊初日条件を<初日条件>にして
    		ならば "1"秒待つ
    		もし  連泊数選択をクリックして
				もし  連泊数を<連泊数>にして
				もし  宿泊人数を<宿泊人数>にして
				もし  氏名を<氏名>として

				もし  利用規約に同意して次へボタンをクリックする

				ならば  ポップアップ表示に<Result>が表示され

				もし  戻るボタンを押す
				かつ  画面更新
#TC004_Nexus_9_API_29
		例:
		|初日条件  |連泊数|宿泊人数|氏名  |向き    |Result|
		|"3ヶ月先" |"1"   |"0"     |"有効"|"縦向き"|"宿泊日には、3ヶ月以内のお日にちのみ指定できます。"|
		|"当日予約"|"0"   |"1"     |""    |"横向き"|"お名前が指定されていません"|
		|"翌日以降"|"1"   |"0"     |"有効"|"横向き"|"人数が入力されていません。"|

	シナリオ: Nexus 9 テスト終了
    もし シナリオを終了してブラウザを閉じる
    ならば "5"秒待つ


	シナリオ: TC005 Guest user Pixel 3 XL
				前提 デバイスを"Pixel_3_XL_API_29"で選ぶ
        前提 Webドライバは"Chrome"を選択する
        前提 ページ"http://example.selenium.jp/reserveApp_Renewal/"を表示する
        ならば "2"秒待つ

	シナリオアウトライン: Pixel 3 XL を使ってエラー条件組み合わせテストケース
	  		もし デバイスを<向き>にする
        ならば "1"秒待つ

				もし  宿泊初日条件を<初日条件>にして
    		ならば "1"秒待つ
#    		もし  連泊数選択をクリックして
				もし  氏名入力をクリックして
				もし  連泊数を<連泊数>にして
				もし  宿泊人数を<宿泊人数>にして
				もし  氏名を<氏名>として

				もし  利用規約に同意して次へボタンをクリックする

				ならば  ポップアップ表示に<Result>が表示され

				もし  戻るボタンを押す
				かつ  画面更新
#TC005_Pixel_3_XL_API_29
		例:
		|初日条件  |連泊数|宿泊人数|氏名  |向き    |Result|
		|"3ヶ月先" |"0"   |"1"     |""    |"縦向き"|"お名前が指定されていません"|
		|"当日予約"|"0"   |"0"     |"有効"|"縦向き"|"宿泊日数が1日以下です"|
		|"翌日以降"|"1"   |"0"     |""    |"縦向き"|"お名前が指定されていません"|

	シナリオ: Pixel 3 XL テスト終了
    もし シナリオを終了してブラウザを閉じる
    ならば "5"秒待つ


	シナリオ: TC006 Guest user Pixel 4 XL
				前提 デバイスを"Pixel_4_XL_API_29"で選ぶ
        前提 Webドライバは"Chrome"を選択する
        前提 ページ"http://example.selenium.jp/reserveApp_Renewal/"を表示する
        ならば "2"秒待つ

	シナリオアウトライン: Pixel 4 XL を使ってエラー条件組み合わせテストケース
	  		もし デバイスを<向き>にする
        ならば "1"秒待つ

				もし  宿泊初日条件を<初日条件>にして
    		ならば "1"秒待つ
#    		もし  連泊数選択をクリックして
				もし  氏名入力をクリックして
				もし  連泊数を<連泊数>にして
				もし  宿泊人数を<宿泊人数>にして
				もし  氏名を<氏名>として

				もし  利用規約に同意して次へボタンをクリックする

				ならば  ポップアップ表示に<Result>が表示され

				もし  戻るボタンを押す
				かつ  画面更新
#TC006_Pixel_4_XL_API_29
		例:
		|初日条件  |連泊数|宿泊人数|氏名  |向き    |Result|
		|"3ヶ月先" |"0"   |"1"     |""    |"縦向き"|"お名前が指定されていません"|
		|"当日予約"|"0"   |"0"     |"有効"|"縦向き"|"宿泊日数が1日以下です"|
		|"翌日以降"|"1"   |"0"     |""    |"縦向き"|"お名前が指定されていません"|

	シナリオ: Pixel 4 XL テスト終了
    もし シナリオを終了してブラウザを閉じる
    ならば "5"秒待つ


	シナリオ: TC007 Guest user Pixel C
				前提 デバイスを"Pixel_C_API_29"で選ぶ
        前提 Webドライバは"Chrome"を選択する
        前提 ページ"http://example.selenium.jp/reserveApp_Renewal/"を表示する
        ならば "2"秒待つ

	シナリオアウトライン: Pixel C を使ってエラー条件組み合わせテストケース
	  		もし デバイスを<向き>にする
        ならば "1"秒待つ

				もし  宿泊初日条件を<初日条件>にして
    		ならば "1"秒待つ
    		もし  連泊数選択をクリックして
				もし  連泊数を<連泊数>にして
				もし  宿泊人数を<宿泊人数>にして
				もし  氏名を<氏名>として

				もし  利用規約に同意して次へボタンをクリックする

				ならば  ポップアップ表示に<Result>が表示され

				もし  戻るボタンを押す
				かつ  画面更新
#TC007_Pixel_C_API_29
		例:
		|初日条件  |連泊数|宿泊人数|氏名  |向き    |Result|
		|"3ヶ月先" |"0"   |"1"     |""    |"縦向き"|"お名前が指定されていません"|
		|"当日予約"|"1"   |"0"     |"有効"|"横向き"|"宿泊日には、翌日以降の日付を指定してください。"|
		|"翌日以降"|"1"   |"0"     |""    |"横向き"|"お名前が指定されていません"|

	シナリオ: Pixel C テスト終了
    もし シナリオを終了してブラウザを閉じる
