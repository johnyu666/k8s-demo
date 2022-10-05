# 创建一个名字为nginx-pod1 的Pod,同时label:run=nginx-pod1
kubectl run nginx-pod1 --image=nginx
# 创建一个名字为nginx-pod2 的Pod,同时label:app=nginx-web
kubectl run nginx-pod2 --image=nginx -l='app=nginx-web'
# 创建一个名字为nginx-pod3 的Pod,同时label:app=nginx-web
# 同时，创建一个名字为nginx-pod3 的 Service,cluserPort 80 映射到 pod port 80
kubectl run nginx-pod3 --image=nginx -l='app=nginx-web' --expose --port=80
# 交互方式进入 pod 执行 bash
kubectl exec -it nginx-pod1 -- bash
# 为pod 追加 lable
kubectl label pods nginx-pod1 app=nginx-web
# 显示所有的pod的 labels
kubectl get pods --show-labels
# 创建deploy
kubectl create deploy nginx-deploy --image=nginx --replicas=2
# 伸缩 deploy
kubectl scale deploy nginx-deploy --replicas=3
# 利用deploy 创建 service
kubectl expose  deployment nginx-deploy --name=nginx-svc --port=3000 --target-port=80 --type=NodePort
# 利用pod 创建 service
kubectl expose pod/nginx-pod1 --name nginx-svc --port=9000 --target-port=80 --type=NodePort
# 本地8888端口(只能是执行此命令的node)的请求转发到mypod的5000端口，同时绑定本地网卡，同样适用于servcie,deployment
kubectl port-forward --address 0.0.0.0 pod/mypod 8888:5000
