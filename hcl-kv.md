Debug Bank Vault (for Hashicorp Vault) Operator

Find the secret which are being pulled.

```sh
kubectl exec pod/info-app-v1-7d59d7fff-qcnv9 -- /vault/vault-env env
```
