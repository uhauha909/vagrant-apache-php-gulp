# vagrant-apache-php-gulp

## イントロ
自分向け備忘録リポジトリ

## 起動
シェルを開いて path/to/vagrant/vagrant up で起動  
PCにLANポートがふたつ以上あったら他デバイス（スマホとか）からのアクセスにどれ使うか出るかもしれない  
ブラウザで [192.168.33.10](192.168.33.10) にアクセスしてなんか出たらおけ

## ssh
win版sshクライアントはRLoginがスキ  
vagrant@127.0.0.1:2222 (pw:vagrant)  
sshから抜けるときはexitとかのコマンドたたく

## gulp
sshでログインして /vagrant-data/gulp/run.sh をたたく  
watch中のgulpはctrl+cで止まる  
gulpではsassからcssに変換で使ってみてる  
cssnanoはコメントアウトしてるから使うときははずす

## 動作環境
vagrant 2.2.9  
virtualbox 6.1  
一応win mac ubuntuで動いた

## その他
vagrant-notify-forwarder を使ってる  
windowsはシンボリックリンクが基本ないのでnode_moduelsを /home/vagrant にマウントで回避  
tips上げてくれてるたくさんの人たちありがとう
