# KBlog

## セットアップ

アプリケーションの起動には以下が必要です。

- [Docker](https://docs.docker.com/engine/install/)
- [minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- [Kustomize](https://kubernetes-sigs.github.io/kustomize/installation/)
- [Skaffold](https://skaffold.dev/docs/install/)

- Make
- [Go](https://golang.org/)

## 起動

### Minikube

以下の手順でアプリケーションを起動します。

```bash
# Minikube を起動
minikube start --kubernetes-version v1.16.13
eval $(minikube docker-env)

# context を設定
kubectl config set-context kblog --cluster=minikube --user=minikube --namespace=kblog
kubectl config use-context kblog

# 起動
make up
```

## 参考
- [dilmnqvovpnmlib / Hatena-Intern-2020 ](https://github.com/dilmnqvovpnmlib/Hatena-Intern-2020)
