name = "wms_welcome_bot"
name_k8s = name.replace("_", "-")
docker_build("rgeraskin/" + name, ".")
yaml = helm(
  "helm",
  name=name_k8s,
  namespace=name_k8s,
  values=["./helm/secrets.yaml"],
  )
k8s_yaml(yaml)
