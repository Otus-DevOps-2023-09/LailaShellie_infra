# LailaShellie_infra
LailaShellie Infra repository

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
