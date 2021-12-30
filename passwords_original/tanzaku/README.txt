tanzaku#2547

---
2021.12.26 18:27
解析プログラムを高速化して、下記条件下での全パスワードを列挙したのですがデータ欲しい人いますか？
条件1. {C,F,L,Q,V,X}の文字を含まない
条件2. {n,m,c}はバラバラでは出現せず、nmcと連続した文字列で出現する

枝刈りしていないので多数（4244112個）のパスワードが見つかり、途方に暮れています。
https://www.dropbox.com/s/8sg6seqwd5ijond/passwords.zip?dl=0


---
2021.12.28 3:00
（途中経過ですが最後まで発掘すると時間がかかりそうなのと既に結構量が多いので共有します）
tanzaku／nmcを含まない&CFLQVXのいずれかの文字を含むパスワード頭文字A~F
https://www.dropbox.com/s/qr202sxutq9wvna/passwords_except_nmc_prefix_A_to_F.zip?dl=0


---
2021.12.30 12:41

tanzaku／nmcを含まない&CFLQVXのいずれかの文字を含むパスワード頭文字G~!
https://www.dropbox.com/s/098cilmfor5rul5/passwords_except_nmc_prefix_G_to_%21.zip?dl=0

過去のものと合わせて、nmc含まないパスワードについては全て列挙完了です。
■ オペミスで抜けてる箇所がある可能性があるので、不自然なところがあったらご指摘お願いします。
■ 解析プログラムの中断再開した都合で同一パスワードが複数ファイルに含まれる場合があるので、そのあたりはよしなにやってください 
