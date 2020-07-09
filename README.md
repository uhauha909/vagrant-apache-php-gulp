# vagrant-apache-php-gulp

## イントロ
自分向け備忘録リポジトリ  
httpd動かしたい  
vagrantのvm上でsassを回したい

## 起動
シェルを開いて path/to/vagrant/vagrant up で起動  
PCにLANポートがふたつ以上あったら他デバイス（スマホとか）からのアクセスにどれ使うか出るかもしれない  
ブラウザで [192.168.33.10](http://192.168.33.10) にアクセスしてなんか出たらおけ

## ssh
win版sshクライアントはRLoginがスキ  
vagrant@127.0.0.1:2222 (pw:vagrant)  
macやlinuxからだとシェルから vagrant ssh コマンドでOK  
sshから抜けるときはexitとかのコマンドたたく

## gulp
windowsの場合は vagrant fsnotify をコマンドプロンプトでたたいておく(ctrl+cで止めれる)  
sshでログインして /vagrant-data/gulp/run.sh をたたく  
192.168.33.10にブラウザでアクセスしてcssが当たってるのを確認する  
src/html/scss/index.scssあたりをちょっといじってみてcssが更新されるか確認する  
watch中のgulpはctrl+cで止まる  
gulpではsassからcssに変換で使ってみてる  
cssnanoはコメントアウトしてるから使うときははずす

## 動作環境
vagrant 2.2.9  
virtualbox 6.1  
一応win mac ubuntuで動いた

## その他
vmへのファイルの変更の通知に vagrant-notify-forwarder や vagrant fsnotify を使ってる  
windowsはシンボリックリンクが基本ないのでnode_moduelsを /home/vagrant にマウントで回避  
今日はもういいや、ってなったら vagrant halt を忘れずに  
もうこれいじくることないわ、ってなったら vagrant destroy を忘れずに  
tips上げてくれてるたくさんの人たちありがとう
