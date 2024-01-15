# LailaShellie_infra
LailaShellie Infra repository

##HW 4


##HW 4

##Cloud test application
```
yc compute instance create \
  --name reddit-app-test \
  --hostname reddit-app-test \
  --memory=4 \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --metadata-from-file user-data=./startup_script.yaml
```

testapp_IP = 158.160.116.40
testapp_port = 9292

##HW 3
##Способ подключения к someinternalhost в одну команду:
>ssh -J appuser@84.252.128.194 appuser@10.128.0.8
##Подключение по алиасу
Сначала требуется добавить хосты в ~/.ssh/config
>vim ~/.ssh/config

Пишем:
```
Host bastion
	HostName 84.252.128.194
    User appuser
Host someinternalhost
    HostName 10.128.0.8
    User appuser
    ProxyJump bastion'''Host bastion
```
Для подключения:
>ssh bastion
>ssh someinternalhost

bastion_IP = 84.252.128.194
someinternalhost_IP = 10.128.0.8
