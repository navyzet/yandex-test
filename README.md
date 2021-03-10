###Не создаётся пользователь test

#### Код представленный в репозитории в данный момент рабочий

Воспроизведение:

    terraform init
    terraform apply
    ssh ubuntu@{external-ip} "echo ok"
    ok
    ssh test@{external-ip} "echo ok"
    test@{external-ip}'s password: `

Исправление:

Добавить коментарий `#cloud-config` в файл meta.txt

