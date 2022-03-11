//
//  NewStatsViewController.swift
//  RoadToLegends
//
//  Created by 黒川龍之介 on 2022/03/07.
//

import UIKit
import RealmSwift
import Eureka

class NewStatsViewController: FormViewController {
    
    var tableItem:[String] = ["モード","レジェンド","武器1","武器2"]

    let realm = try! Realm()
    let stats = Stats()
    
    var selectedMode:String = ""
    var selectedLegend:String = ""
    var selectedFirstWeapon:String = ""
    var selectedSecondWeapon:String = ""
    var selectedRank:String = ""
    var inputKill:String = ""
    var inputDeath: String = ""
    var inputDamage: String = ""
    var inputRankPoint: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "記録の追加"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "戻る", style: .plain, target: self, action: #selector(toBack))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "追加", style: .plain, target: self, action: #selector(saveNew))

        // Do any additional setup after loading the view.
        form
        +++ Section()
        <<< PickerInlineRow<String> { row in
            row.title = "モード"
            row.options = ["トリオ","デュオ","ランク","アリーナ","アリーナランク"]
            row.value = row.options.first
        }.onChange {[unowned self] row in
            self.selectedMode = row.value!
            stats.mode = selectedMode
            print(self.selectedMode )
        }
        <<< PickerInlineRow<String> { row in
            row.title = "レジェンド"
            row.options = ["ブラッドハウンド","ジブラルタル","ライフライン","パスファインダー","レイス","バンガロール","コースティック","オクタン","ワットソン","クリプト","レヴナント","ローバ","ランパート","ホライゾン","ヒューズ","ヴァルキリー","シア","アッシュ","マッドマギー"]
            row.value = row.options.first
        }.onChange {[unowned self] row in
            self.selectedLegend = row.value!
            stats.legends = self.selectedLegend
            print(self.selectedLegend )
        }
        <<< PickerInlineRow<String> { row in
            row.title = "武器1"
            row.options = ["P2020","RE-45オート","オルタネーターSMG","R99-SMG","R301カービン","G7スカウト","ランページLMG","30-30リピーター","ウィングマン","プラウラー","ヘムロック","フラットライン","スピットファイア","ボルトSMG","Lスター","ハボック","ディヴォージョン","トリプルテイク","モザンピーク","EVA-8","マスティフ","ピースキーパー","センチネル","チャージライフル","ロングボウDMR","クレーバー50"]
            row.value = row.options.first
        }.onChange {[unowned self] row in
            self.selectedFirstWeapon = row.value!
            stats.weapon1 = self.selectedFirstWeapon
            print(self.selectedMode )
        }
        <<< PickerInlineRow<String> { row in
            row.title = "武器2"
            row.options = ["P2020","RE-45オート","オルタネーターSMG","R99-SMG","R301カービン","G7スカウト","ランページLMG","30-30リピーター","ウィングマン","プラウラー","ヘムロック","フラットライン","スピットファイア","ボルトSMG","Lスター","ハボック","ディヴォージョン","トリプルテイク","モザンピーク","EVA-8","マスティフ","ピースキーパー","センチネル","チャージライフル","ロングボウDMR","クレーバー50"]
            row.value = row.options.first
        }.onChange {[unowned self] row in
            self.selectedSecondWeapon = row.value!
            stats.weapon2 = self.selectedSecondWeapon
            print(self.selectedMode )
        }
        <<< PickerInlineRow<String> { row in
            row.title = "順位"
            row.options = ["1位","2位","3位","4位","5位","6位","7位","8位","9位","10位","11位","12位","13位","14位","15位","16位","17位","18位","19位","20位"]
            row.value = row.options.first
        }.onChange {[unowned self] row in
            self.selectedRank = row.value!
            stats.rank = selectedRank
            print(self.selectedMode )
        }
        <<< TextRow{ row in
            row.title = "キル"
        }.onChange{ [self] row in
            self.inputKill = row.value!
            stats.kill = Int(self.inputKill)!
        }
        <<< TextRow{ row in
            row.title = "デス"
        }.onChange{ [self] row in
            self.inputDeath = row.value!
            stats.death = Int(self.inputDeath)!
        }
        <<< TextRow{ row in
            row.title = "ダメージ"
        }.onChange{ [self] row in
            self.inputDamage = row.value!
            stats.damage = Int(self.inputDamage)!
        }
        <<< TextRow{ row in
            row.title = "RP"
        }.onChange{ [self] row in
            self.inputRankPoint = row.value!
            stats.rankPoint = Int(self.inputRankPoint)!
        }
    }
    
    @objc func toBack(){
        dismiss(animated: true)
    }
    
    @objc func saveNew(){
        
        try! realm.write{
            realm.add(stats)
        }
        print(stats)
        dismiss(animated: true)
    }
}
