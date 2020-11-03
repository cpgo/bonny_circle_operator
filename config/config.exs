import Config


config :k8s,
  clusters: %{
    default: %{
      conn: "~/.kube/config"
    }
  }

config :bonny,
  # Add each CRD Controller module for this operator to load here
  controllers: [
    HelloOperator.Controller.V1.Circle
  ],

  # Your kube config file here
  kubeconf_file: "~/.kube/config",


  # Bonny will default to using your current-context, optionally set cluster: and user: here.
  # kubeconf_opts: [cluster: "my-cluster", user: "my-user"]
  kubeconf_opts: []
