###Не создаётся пользователь test

Воспроизведение:

    terraform init
    terraform apply
    ssh ubuntu@{external-ip}
    ssh ubuntu@{external-ip} "echo ok"
    ssh test@{external-ip} "echo ok"
    ok
    ssh test@{external-ip} "echo ok"
    test@{external-ip}'s password: `