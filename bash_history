exit
ocreg get obc
oc describe obc/noobaa-registry
ocreg describe obc/noobaa-registry
oc get route/s3 -n openshift-registry
oc get route/s3 -n openshift-storage
lab start internal-gui
oc login -u admin -p redhat  https://api.ocp4.example.com:6443
oc whoami --show-console
oc get nodes
oc get nodes --show-labels
oc label node -l node-role.kubernetes.io/worker= cluster.ocs.openshift.io/opesnhift-storage=
lab start services-registry
oc get sc
cd DO370/labs/services-registry/
vi ~/.bashrc
source ~/.bashrc
ocreg get secret
oc extract secret/noobaa-registry 
ocreg extract secret/noobaa-registry 
oc create secret generic image-registry-private-configuration-user --from-literal=REGISTRY_STORAGE_S3_ACCESSKEY=$(cat AWS_ACCESS_KEY_ID) --from-literal=REGISTRY_STORAGE_S3_AWS_SECRETKEY=$(Cat AWS_SECRET_ACCESS_KEY)
ocreg create secret generic image-registry-private-configuration-user --from-literal=REGISTRY_STORAGE_S3_ACCESSKEY=$(cat AWS_ACCESS_KEY_ID) --from-literal=REGISTRY_STORAGE_S3_AWS_SECRETKEY=$(cat AWS_SECRET_ACCESS_KEY)
oc get secret
ocreg get secret
oc describe secret noobaa-registry
ocreg describe secret noobaa-registry
ocreg describe secret image-registry-private-configuration-user
ocreg create secret generic image-registry-private-configuration-user --from-literal=REGISTRY_STORAGE_S3_ACCESSKEY=$(cat AWS_ACCESS_KEY_ID) --from-literal=REGISTRY_STORAGE_S3_SECRETKEY=$(cat AWS_SECRET_ACCESS_KEY) 
ocreg delete secret image-registry-private-configuration-user
ocreg create secret generic image-registry-private-configuration-user --from-literal=REGISTRY_STORAGE_S3_ACCESSKEY=$(cat AWS_ACCESS_KEY_ID) --from-literal=REGISTRY_STORAGE_S3_SECRETKEY=$(cat AWS_SECRET_ACCESS_KEY) 
ocreg get secret
oc get obc
ocreg get obc
ocreg describe obc noobaa-registry   openshift-storage.noobaa.io   Bound   7m51s
oc edit configs.imageregistry.operator.openshift.io cluster 
ocreg edit configs.imageregistry.operator.openshift.io cluster 
ocreg get po
ocreg get po -w
./check-imageregistry-s3.sh
ocre get crd
ocreg get crd
ocreg get crd | grep cluster
ocreg get configs
oc describe crd/cluster
oc describe configs/cluster
oc edit configs/cluster
lab finish services-registry
cd
lab finish services-registry
rm -rf DO370/labs/services-registry/
lab finish services-registry
lab start services-metrics
oc get storageclasses -o name
cd DO370/labs/services-metrics/
ls
vi metrics-storage.yml 
./check-alertmanager.sh 
./check-prometheus.sh 
oc exec -n openshift-monitoring statefulset/prometheus-k8s -c prometheus -- df -h /prometheus
oc get sts
oc get sts -n openshift-monitoring
vi ~/.bashrc 
source ~/.bashrc 
ocmon exec -it sts/alertmanager-main -c prometheus -- df -h
ocmon exec -it sts/alertmanager-main -c alertmanager -- df -h /alermanager
ocmon exec -it sts/alertmanager-main -c alertmanager-main -- df -h /alermanager
ocmon exec -it sts/alertmanager-main -c alertmanager -- df -h /alertmanager
ocmon exec -it sts/prometheus-k8s -c prometheus -- df -h /prometheus
ocmon edit sts/prometheus-k8s 
vi metrics-storage.yml 
ocmon create cm cluster-monitoring-config --from-file=config.yaml=metrics-storage.yml 
ocmon get sts
oc get cm
ocmon get cm
oc get pvc
ocmon get pvc
oc exec -n openshift-monitoring statefulset/prometheus-k8s -c prometheus -- df -h /prometheus
oc exec -n openshift-monitoring statefulset/alertmanagermain -c alertmanager-main -- df -h /alertmanager
oc exec -n openshift-monitoring statefulset/alertmanager-main -c alertmanager-main -- df -h /alertmanager
oc exec -n openshift-monitoring statefulset/alertmanager-main -c alertmanager -- df -h /alertmanager
cd 
lab finish services-metrics
lab start workloads-classes
oc get sc
oc new-app --name=pg-workload-classes --template=postgresql-persistent-sc -p STORAGECLASS_NAME=ocs-storagecluster-ceph-rbd-xfs -p VOLUME_CAPACITY=150Mi -p POSTGRESQL_USER=student -p POSTGRESQL_PASSWORD=redhat -p POSTGRESQL_DATABASE=workloads-classes -p DATABASE_SERVICE_NAME=walid-sc
oc project default
oc new-app --name=pg-workload-classes --template=postgresql-persistent-sc -p STORAGECLASS_NAME=ocs-storagecluster-ceph-rbd-xfs -p VOLUME_CAPACITY=150Mi -p POSTGRESQL_USER=student -p POSTGRESQL_PASSWORD=redhat -p POSTGRESQL_DATABASE=workloads-classes -p DATABASE_SERVICE_NAME=walid-sc
oc project workloads-classes
oc new-app --name=pg-workload-classes --template=postgresql-persistent-sc -p STORAGECLASS_NAME=ocs-storagecluster-ceph-rbd-xfs -p VOLUME_CAPACITY=150Mi -p POSTGRESQL_USER=student -p POSTGRESQL_PASSWORD=redhat -p POSTGRESQL_DATABASE=workloads-classes -p DATABASE_SERVICE_NAME=walid-sc
oc new-project workloads-classes-ge
oc new-app --name=pg-workload-classes --template=postgresql-persistent-sc -p STORAGECLASS_NAME=ocs-storagecluster-ceph-rbd-xfs -p VOLUME_CAPACITY=150Mi -p POSTGRESQL_USER=student -p POSTGRESQL_PASSWORD=redhat -p POSTGRESQL_DATABASE=workloads-classes -p DATABASE_SERVICE_NAME=walid-sc
oc create -f DO370/labs/workloads-classes/postgresql-classes-ge.json
oc new-app --name=pg-workload-classes --template=postgresql-persistent-sc -p STORAGECLASS_NAME=ocs-storagecluster-ceph-rbd-xfs -p VOLUME_CAPACITY=150Mi -p POSTGRESQL_USER=student -p POSTGRESQL_PASSWORD=redhat -p POSTGRESQL_DATABASE=workloads-classes -p DATABASE_SERVICE_NAME=walid-sc
oc get pvc
oc get po
oc describe po walid-sc-1-4nbcf 
oc get sc
oc descibe sc/walid-test
oc describe sc/walid-test
oc describe po walid-sc-1-4nbcf 
oc get pvc
oc describe pvc walid-sc 
oc new-app --name=pg-workload-classes --template=postgresql-persistent-sc -p STORAGECLASS_NAME=walid-sc -p VOLUME_CAPACITY=150Mi -p POSTGRESQL_USER=student -p POSTGRESQL_PASSWORD=redhat -p POSTGRESQL_DATABASE=workloads-classes -p DATABASE_SERVICE_NAME=pg-workload-classes-ge
oc get pvc
oc delete pvc walid-sc 
oc get pvc
oc get po
oc get pvc
oc get po
oc delete deploymentconfigs.apps.openshift.io walid-sc 
oc new-app --name=pg-workload-classes --template=postgresql-persistent-sc -p STORAGECLASS_NAME=walid-sc -p VOLUME_CAPACITY=150Mi -p POSTGRESQL_USER=student -p POSTGRESQL_PASSWORD=redhat -p POSTGRESQL_DATABASE=workloads-classes -p DATABASE_SERVICE_NAME=pg-workload-classes-ge
oc get po
oc get po -w
oc logs -f po pg-workload-classes-ge-1-xb852
oc logs -f po/pg-workload-classes-ge-1-xb852
oc get po -w
oc lodescribe po/pg-workload-classes-ge-1-xb852
oc describe po/pg-workload-classes-ge-1-xb852
oc get pvc
oc describe pvc/pg-workload-classes-ge
oc delete pvc pg-workload-classes-ge 
oc new-app --name=pg-workload-classes --template=postgresql-persistent-sc -p STORAGECLASS_NAME=walid-sc -p VOLUME_CAPACITY=150Mi -p POSTGRESQL_USER=student -p POSTGRESQL_PASSWORD=redhat -p POSTGRESQL_DATABASE=workloads-classes -p DATABASE_SERVICE_NAME=pg-workload-classes-ge
oc get pvc
oc project
oc adm policy add-role-to-user view  developer  -n workloads-classes-ge
oc adm policy who-can view  -n workloads-classes-ge
oc adm policy who-can list all  -n workloads-classes-ge
oc adm policy who-can get all  -n workloads-classes-ge
oc adm policy who-can get all  -n workloads-classes-ge --as=ahmed 
oc adm policy who-can get all  -n workloads-classes-ge --as=developer
oc adm policy add-role-to-user view  developer  -n workloads-classes-ge
oc adm policy who-can get all  -n workloads-classes-ge --as=developer
oc adm policy add-role-to-user edit  developer  -n workloads-classes-ge
oc adm policy who-can get all  -n workloads-classes-ge --as=developer
oc adm policy add-role-to-user admin developer  -n workloads-classes-ge
oc adm policy who-can get all  -n workloads-classes-ge --as=developer
oc adm policy who-can get all  -n workloads-classes-ge 
oc adm policy who-can get all  -n workloads-classes-ge  | grep developer
oc adm policy who-can list all  -n workloads-classes-ge  | grep developer
oc adm policy who-can create pvc   -n workloads-classes-ge  | grep developer
oc adm policy who-can get all  -n workloads-classes-ge --as=developer
oc adm policy who-can get all  -n workloads-classes-ge 
oc adm policy who-can get all  -n workloads-classes-ge | grep developer
oc adm policy who-can get po  -n workloads-classes-ge | grep developer
oc adm policy who-can get all-resources  -n workloads-classes-ge | grep developer
oc adm policy who-can get --all-resources  -n workloads-classes-ge | grep developer
oc adm policy who-can get --all-resources -n workloads-classes-ge | grep developer
oc adm policy who-can get * -n workloads-classes-ge | grep developer
oc adm policy who-can get --resource=* -n workloads-classes-ge | grep developer
oc adm policy who-can create po -n workloads-classes-ge | grep developer
oc adm policy who-can create po -n workloads-classes-ge | grep admin
oc adm policy add-role-to-user createsa developer -n workloads-classes-ge
oc adm policy who-can create sa -n workloads-classes-ge
oc adm policy who-can create sa -n workloads-classes-ge | grep developer
oc adm policy add-role-to-user createsa developer -n workloads-classes-ge
oc adm policy add-role-to-user createsa developer --role-namespace=workloads-classes-ge -n workloads-classes-ge
oc adm policy who-can create dc -n workloads-classes-ge
oc adm policy who-can create dc -n workloads-classes-ge | grep developer
oc adm policy who-can create sa -n workloads-classes-ge | grep developer
oc adm policy who-can create serviceaccount -n workloads-classes-ge | grep developer
oc adm policy who-can create sa -n workloads-classes-ge | grep developer
oc create sa walid
oc get deployment
oc get deploymentconfig
oc adm policy add-scc-to-user anyuid -z developer
oc adm policy add-scc-to-user anyuid -z walid
oc set serviceaccount deplymentconfig/pg-workload-classes-ge walid
oc set serviceaccount deploymentconfig/pg-workload-classes-ge walid
oc set volume dc/pg-workload-classes-ge --add > -t secret -m /path/to/mount/volume > --name myvol --secret-name mysecret
oc set volume dc/pg-workload-classes-ge --add  -t secret -m /path/to/mount/volume  --name myvol --secret-name mysecret
oc edit dc/pg-workload-classes-ge
ls
pwd
cd DO370/
ls
ll labs/
ll labs/workloads-classes/
ll solutions/
ls
pwd
ls
cd ..
ll
history
history|more
vi .bash_history 
cp .bash_history bash_histry
cp .bash_history bash_history
git clone https://github.com/elmahdyh/DO288-apps.git
mv bash_history DO370/
mv DO370/ DO288-apps/
cd DO288-apps/
ll
git status
git add -A
ls
cd ..
ls
lab start services-registry
ls
ls DO370/
lab start services-metrics
lab start services-review
lab start internal-cli
Instructions
ls -lRd DO370
ls -lRd DO370/
ls -lrd DO370/
ls -l DO370/labs/
lab start workloads-ceph
lab start workloads-file
lab start workloads-block
lab start workloads-classes
lab start workloads-review
lab start capacity-monitoring
lab start capacity-quotas
lab start capacity-extend
lab start capacity-disk
lab start capacity-review
lab start backup-application
lab start backup-volume
lab start backup-review
lab start object-define
clab start object-obc
lab start object-obc
lab start object-configure
lab start bucket-monitor
lab start object-review
lab start comprehensive-review
ls DO370/
ls DO370/labs/
ls DO370/solutions/
cd DO288-apps/
ls
mv DO370/ DO370-demo
cd ..
cp DO370/ DO288-apps/
mv DO370/ DO288-apps/
cd DO288-apps/
ls
git status
git add -A
git commit -m "add DO370 course"
git status
git push origin
git push origin https://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@github.com/elmahdyh/DO288-apps.git
git push https://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@github.com/elmahdyh/DO288-apps.git
cd ..
cp -rp DO288-apps/ DO288-apps2
cd DO288-apps
git remote remove origin
git remote add  origin https://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@github.com/elmahdyh/DO288-apps.git
git push 
git branch
git push --set-upstream origin master
cd ../DO288-apps2/
git status
git push 
cd
cd -
git status
git push https://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@github.com/elmahdyh/DO288-apps.git
lab start internal-gui
pwd
ll
exit
