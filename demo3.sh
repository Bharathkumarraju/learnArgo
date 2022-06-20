1. API Server 
application management and status reporting.
ArgoCD manages infrastructure deployment using applications.
credential management
Authentication and auth delegation to external identity providers
RBAC enforcement
Listener/forwarder for Git Webhook events

2. Repository Service 
internal service maintains a local cache of the Git Repository


3. Application Controller 
Monitor the application...compares the live state of the application with the desired state in git manifest files.




