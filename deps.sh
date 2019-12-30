echo "gathering binary dependencies..."

TERRAFORM_VERSION="0.12.18"
TERRAGRUNT_VERSION="0.21.1"
KOPS_VERSION="1.14.0"

mkdir -p bin/

curl -Lo tf.zip https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
unzip tf.zip
mv terraform bin/terraform
rm tf.zip

curl -Lo bin/terragrunt https://github.com/gruntwork-io/terragrunt/releases/download/v${TERRAGRUNT_VERSION}/terragrunt_linux_amd64
chmod +x bin/terragrunt

curl -Lo bin/kops https://github.com/kubernetes/kops/releases/download/${KOPS_VERSION}/kops-linux-amd64
chmod +x bin/kops
