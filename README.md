# Start here

## Terraform Setup Instructions

### Modify `main.tf` Accordingly

1. **Create a Cloud Run v2 Service**
    - Name: `cr_service_INITIALE`
    - Use image: `us-docker.pkg.dev/cloudrun/container/hello`
    - Set CPU to `2`
    - Set memory to `1024Mi`

2. **Create a Service Account**
    - Name: `cloud_run_invoker_INITIALE`
    - Use the project name from variables

3. **Bind the Previously Created Service Account**
    - Use the Service Account ID from computed attributes that are exported from the previous step
    - Add the Invoker role to the Service Account. You can search for the Invoker role [here](https://cloud.google.com/run/docs/reference/iam/roles)
    - Use the Service Account email from computed attributes that are exported from the previous step

4. **Make your Cloud Run service internet accesible**
    - Switch from GCP interface your Cloud Run setting - Authentication - Allow unauthenticated invocations 


# Hints for later

🔧 Access terraform resources [here](https://registry.terraform.io/providers/hashicorp/google/latest/docs).

🚨 Make sure to clone the repo and create your own branch - format NUME_PRENUME.

💡 Open a Pull Request, check your action status. 

⛔️ DO NOT MERGE YOUR BRANCHES ⛔️



