RESULT=$(kubectl get configmap -n  | grep ${{ inputs.resources-name }} | wc -l)
if [ $RESULT -eq 0 ]; then
    echo "FILES_TO_APPLY=kub/service.yml kub/deployment.yml kub/ingress.yml kub/autoscaling.yml kub/envs/configmap.yml" >> $GITHUB_ENV
elif [ $RESULT -eq 1 ]; then
    echo "FILES_TO_APPLY=kub/service.yml kub/deployment.yml kub/ingress.yml kub/autoscaling.yml" >> $GITHUB_ENV
fi