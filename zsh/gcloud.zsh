
export GCLOUD_DIR=$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk

if [[ -s "${GCLOUD_DIR}/path.zsh.inc" ]]; then
  source "${GCLOUD_DIR}/path.zsh.inc"
fi
if [[ -s "${GCLOUD_DIR}/completion.zsh.inc" ]]; then
  source "${GCLOUD_DIR}/completion.zsh.inc"
fi
