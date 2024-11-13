# Solution: Automated Deployment Pipeline using Argo, Kargo and Actions CI

```
+--------------------+        +-----------------------+        +-----------------------+   
|   Development      |        |        UAT           |        |     Production        |   
|     (Test)         |        |                      |        |                       |   
|                    |        |                      |        |                       |   
|     Kargo          |        |       Kargo          |        |         Kargo         |   
|  Auto-promotes     +------> |    Auto-promotes     +------> | Requires Manual       |   
|   for Patch        |        |   for Minor/Major    |        |      Approval         |   
+--------------------+        +-----------------------+        +-----------------------+   

        GitHub Actions ---> GitHub ---> Registry
```
