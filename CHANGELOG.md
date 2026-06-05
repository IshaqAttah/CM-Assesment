## 1.0.0 (2026-06-05)


### Features

* add tasks ([c4e7de4](https://github.com/IshaqAttah/CM-Assesment/commit/c4e7de43402209232ab947ffe412d612174e65f3))
* **app:** add helm chart for user-app with dynamic pdb and hpa ([b70b844](https://github.com/IshaqAttah/CM-Assesment/commit/b70b844ca5b45af0f86ff41732511b6285b90cf8))
* **app:** add version endpoint ([44f2dac](https://github.com/IshaqAttah/CM-Assesment/commit/44f2dac6273eff4a57981ae980e537909a929965))
* **app:** trigger pipeline after ci fix ([c2d8dc8](https://github.com/IshaqAttah/CM-Assesment/commit/c2d8dc84a1f11a79290a750bbf2cf8b9a0145820))
* **gitops:** add flux kustomizations for infrastructure sources and releases ([a32afb2](https://github.com/IshaqAttah/CM-Assesment/commit/a32afb225022a310f06c3211f9f87b94231d6458))
* **gitops:** add infrastructure-namespaces kustomization for namespace pre-creation ([6563784](https://github.com/IshaqAttah/CM-Assesment/commit/65637841a05774ff63c0208b9c6d0fa9a24c786f))
* **grafana:** add Loki datasource ([57fbf0f](https://github.com/IshaqAttah/CM-Assesment/commit/57fbf0fd263dfb0e3ea50984f6953af083e777c6))
* improve startup logging ([5cad2c4](https://github.com/IshaqAttah/CM-Assesment/commit/5cad2c4a628f319628cc0a6f48db5d750cb4a1b9))
* **infra:** add helm repositories and releases for all platform tools ([bffa746](https://github.com/IshaqAttah/CM-Assesment/commit/bffa74613a3bb09f5b7e664e3f5410f3445ef176))
* rename image to user-app ([0d86342](https://github.com/IshaqAttah/CM-Assesment/commit/0d86342ccc249e42799786600f65a431790f94d4))


### Bug Fixes

* add missing user-app ServiceAccount ([8a86704](https://github.com/IshaqAttah/CM-Assesment/commit/8a86704f577333f0099287be7366f8be5adc07cc))
* add postgresql-secret SealedSecret to user-app kustomization ([49a0bc3](https://github.com/IshaqAttah/CM-Assesment/commit/49a0bc35b3375a418521ec809e13bb7866b8d7bb))
* add restricted PodSecurity context to postgresql StatefulSet ([d316d74](https://github.com/IshaqAttah/CM-Assesment/commit/d316d7461d680fcc81fb58f843c97b774ee2db43))
* allow egress from user-app to linkerd control plane ([5f3956d](https://github.com/IshaqAttah/CM-Assesment/commit/5f3956df300aaa50ea370b7e5ed2589fa63f2ef5))
* **alloy:** correct Loki service URL to monitoring-loki ([e4c02da](https://github.com/IshaqAttah/CM-Assesment/commit/e4c02dae6b9b32a6332cff6ed709a14ccd815517))
* **app:** downgrade to go 1.26.3 to match gosec action toolchain ([4f1b448](https://github.com/IshaqAttah/CM-Assesment/commit/4f1b448c79f237c6ec16a8cd08234587153562c7))
* apps ([9be0f9e](https://github.com/IshaqAttah/CM-Assesment/commit/9be0f9e42cd6e2df1cc76459effe66b9d12df761))
* **app:** trigger pipeline ([bd6af58](https://github.com/IshaqAttah/CM-Assesment/commit/bd6af583666f925a6e04491ce212ffc114120efb))
* **app:** trigger pipeline ([30b4301](https://github.com/IshaqAttah/CM-Assesment/commit/30b43018f894459208e91080986c0fafaf232ac9))
* **app:** upgrade pgx to v5.9.0 and x/crypto to v0.35.0 to fix critical CVEs ([b709e3f](https://github.com/IshaqAttah/CM-Assesment/commit/b709e3fe12858dabbff95fe4d2672624f4d1f89f))
* **app:** upgrade to go 1.24 to resolve govulncheck vulnerabilities ([3c91426](https://github.com/IshaqAttah/CM-Assesment/commit/3c9142630db05dfcfda3c10c48dfefdaaa6c63f5))
* **app:** upgrade to go 1.24.4 to resolve all  govulncheck vulnerabilities ([e357519](https://github.com/IshaqAttah/CM-Assesment/commit/e3575198dc04fab0ab3dc676973f1042cd9a45d8))
* **app:** upgrade to go 1.26.4 latest stable to resolve all govulncheck vulnerabilities ([c05ab80](https://github.com/IshaqAttah/CM-Assesment/commit/c05ab8077b1edca243de342d4101f7d87389e3f7))
* ask for no pr ([945b9e8](https://github.com/IshaqAttah/CM-Assesment/commit/945b9e84f6eb21641f16959b9ee7d58c5eab43a5))
* **ci:** add packages write permission to build-and-deploy job ([f159aed](https://github.com/IshaqAttah/CM-Assesment/commit/f159aedf8243d48a513b2a9f9bd5fa7f8cc98723))
* **ci:** add write permissions to semantic-release job ([a421b06](https://github.com/IshaqAttah/CM-Assesment/commit/a421b0643167eb80227c8dc2f2b0d3607ef1e4a3))
* **ci:** add write permissions to semantic-release job ([d2c0e7a](https://github.com/IshaqAttah/CM-Assesment/commit/d2c0e7a5adc365e107ab1a84432ef7070e24f7df))
* **ci:** fix extra_plugins indentation in semantic-release action ([db40873](https://github.com/IshaqAttah/CM-Assesment/commit/db408737ccbd17e300e44124ab644eae2484fb5b))
* **ci:** lowercase image name for ghcr compatibility ([e91a6fa](https://github.com/IshaqAttah/CM-Assesment/commit/e91a6fa394c82a7a9ba6af7152afa0f944619407))
* **ci:** pin go 1.26.3 and set GOTOOLCHAIN=local to prevent version switching ([7c58060](https://github.com/IshaqAttah/CM-Assesment/commit/7c5806008b2b0a2d909b85cf58ff5c08566c09af))
* **ci:** pin go 1.26.3 and set GOTOOLCHAIN=local to prevent version switching ([2eb281d](https://github.com/IshaqAttah/CM-Assesment/commit/2eb281d9edcaf907011918a08ec5131e19860770))
* **ci:** pin govulncheck version and upgrade to go 1.26.4 ([3068800](https://github.com/IshaqAttah/CM-Assesment/commit/3068800d6a609c3309b205366ed1575ef629a418))
* **ci:** revert to npx semantic-release with manual output capture ([5e88876](https://github.com/IshaqAttah/CM-Assesment/commit/5e888764cd447e1a893fa0bfa240a4711753c296))
* **ci:** separate scan and multi-arch push steps ([77058cb](https://github.com/IshaqAttah/CM-Assesment/commit/77058cb2625c6fd47e3bf94330ab4ed9fd1de80e))
* **ci:** use cycjimmy action to properly expose semantic-release outputs ([49f7efc](https://github.com/IshaqAttah/CM-Assesment/commit/49f7efc218095aa9f4550a97b13561ba45481d57))
* **ci:** use git tags to detect semantic-release output ([b5171b3](https://github.com/IshaqAttah/CM-Assesment/commit/b5171b3d780c40fcb6e57afec98d76c33450831b))
* **ci:** use govulncheck@latest instead of pinned old version ([72e4473](https://github.com/IshaqAttah/CM-Assesment/commit/72e4473207f22827716b71819bf9dc6bf6480291))
* clarification ([c5e56a8](https://github.com/IshaqAttah/CM-Assesment/commit/c5e56a81c0c0f0db1887a074c1cd182dfdf04442))
* clarification v2 ([3635c2f](https://github.com/IshaqAttah/CM-Assesment/commit/3635c2f0444c1b1fea72fc7ddfdc29d3077d150d))
* combine tasks ([bd6f7b9](https://github.com/IshaqAttah/CM-Assesment/commit/bd6f7b9b53b3e17e5276c29fff4d83264b3f3085))
* downgrade PodSecurity to baseline to allow Linkerd init ([57de66f](https://github.com/IshaqAttah/CM-Assesment/commit/57de66f4a76cd59a3a190e9895736c38e5a8beb3))
* **flux:** add createNamespace and remediation to user-app HelmRelease ([6f7ddf0](https://github.com/IshaqAttah/CM-Assesment/commit/6f7ddf08d260391ca7a622374d77fe2ea91e8d06))
* **flux:** fix loki values and simplify user-app dependsOn ([1953b49](https://github.com/IshaqAttah/CM-Assesment/commit/1953b4935c45d480485fe9d8f38cfa2c4738018d))
* **flux:** fix user-app dependsOn to reference HelmReleases not Kustomizations ([984a2b4](https://github.com/IshaqAttah/CM-Assesment/commit/984a2b4eafa2897c6bab41bd79f2a2f549090a0a))
* **flux:** remove hardcoded image tag override, reduce sync interval to 1m ([ccb5380](https://github.com/IshaqAttah/CM-Assesment/commit/ccb5380dc9bca624d3c2fce3b3418dc1ad8de258))
* **gitops:** add infrastructure kustomization to flux sync ([f32d660](https://github.com/IshaqAttah/CM-Assesment/commit/f32d66052aa4d63a5e7e2e66ef467ce67a4b6620))
* **gitops:** add infrastructure kustomization to flux sync ([4ad3f03](https://github.com/IshaqAttah/CM-Assesment/commit/4ad3f03a2b00d5494ba69f92b24b2a26a8b1a201))
* **gitops:** add kustomization.yaml to flux directory ([4878819](https://github.com/IshaqAttah/CM-Assesment/commit/4878819b03f939cfedea1ba7a972811a5d5f4a3b))
* **gitops:** add missing infrastructure kustomization and namespaces to flux resources ([0cd81e0](https://github.com/IshaqAttah/CM-Assesment/commit/0cd81e047107615cb977be82f9d435bfc8ca1569))
* **gitops:** add valid resources to infrastructure kustomization ([6e7b4b1](https://github.com/IshaqAttah/CM-Assesment/commit/6e7b4b1bf7c77b9ef9885352c6caf26dd917cf17))
* **gitops:** correct infrastructure kustomization names and dependencies ([c0a3610](https://github.com/IshaqAttah/CM-Assesment/commit/c0a3610b36ccc0096f2d0c6e923474fe2b37c404))
* **gitops:** fix ApiVersion casing in namespaces.yaml ([c9aba73](https://github.com/IshaqAttah/CM-Assesment/commit/c9aba7361b22435af177a1617f73b06d963e0c2b))
* **helm:** add networkpolicy to allow prometheus scraping from monitoring namespace ([d8f36ea](https://github.com/IshaqAttah/CM-Assesment/commit/d8f36ea7882dcd26842142464f2aed74eb3d2a9e))
* **helm:** fix template delimiters and add missing values keys ([dc0add5](https://github.com/IshaqAttah/CM-Assesment/commit/dc0add59354cfff013f0ea8cdba0430d9026a730))
* **helm:** pre-create user-app namespace via infrastructure kustomization ([8077725](https://github.com/IshaqAttah/CM-Assesment/commit/8077725e4261b5e1c9dfef02fb7e93b1bcb2acca))
* **helm:** set podSelector to {} on all NetworkPolicies to include Flagger primary pods ([0afbc64](https://github.com/IshaqAttah/CM-Assesment/commit/0afbc64c61cc45864eec48731bb103fc83347c39))
* **infra:** correct YAML indentation across all HelmRepository and HelmRelease files ([f73bef9](https://github.com/IshaqAttah/CM-Assesment/commit/f73bef958a6f4df669e3664b81a8c97b9ed3218b))
* **infra:** fix leading whitespace in HelmRelease and HelmRepository files ([09bb0b9](https://github.com/IshaqAttah/CM-Assesment/commit/09bb0b9d8ba8ce90ac3ce30680c7703479e476fd))
* **infra:** fix leading whitespace in linkerd HelmRepository ([537ccd3](https://github.com/IshaqAttah/CM-Assesment/commit/537ccd32eb74571d0a4a088e329f5daab31967d9))
* **loki:** add useTestSchema to satisfy schema_config requirement in loki 6.6.0 ([e46e796](https://github.com/IshaqAttah/CM-Assesment/commit/e46e79637f8ee206b2bed013386a9853b670bafe))
* **loki:** disable chunks-cache — insufficient memory on Kind worker node ([1a9d6c8](https://github.com/IshaqAttah/CM-Assesment/commit/1a9d6c87d4aec061787e8f85b72604b83c8a8e12))
* **loki:** move chunksCache/resultsCache to top-level values, ([0d234b3](https://github.com/IshaqAttah/CM-Assesment/commit/0d234b3cf9f3369f18d68abb6b345df35d3249ed))
* **monitoring:** add release label to servicemonitors for prometheus discovery ([e2104c7](https://github.com/IshaqAttah/CM-Assesment/commit/e2104c7acf63ceb76a68a32708e51534eaffaa37))
* **monitoring:** fix servicemonitor selectors and add release label for prometheus discovery ([06d7635](https://github.com/IshaqAttah/CM-Assesment/commit/06d7635a094a550537eb337a9fe1e5bc295349ee))
* no cloud for cluster ([13a1f96](https://github.com/IshaqAttah/CM-Assesment/commit/13a1f961314dfdbdec93fe9283a558133aa5236b))
* remove linkerd from postgresql, drop PodSecurity enforce for user-app ([d08960a](https://github.com/IshaqAttah/CM-Assesment/commit/d08960aa6a6d17b4b2a13c03cdcd292383849a88))
* reseal secrets, linkerd annotations, service-mesh kustomization, user-app db configmap ([a7f9a9f](https://github.com/IshaqAttah/CM-Assesment/commit/a7f9a9f0db4609eee3521fb5b03656329d80a6d6))
* **security:** use privileged pod security to allow Linkerd init container ([b93e636](https://github.com/IshaqAttah/CM-Assesment/commit/b93e6363f4470c29563d1fefd7e7c66878822f7d))
* **terraform:** fix linkerd gateway api url line wrap issue ([96de9b5](https://github.com/IshaqAttah/CM-Assesment/commit/96de9b5ddc4c31c44cf01cdac8daaa6a9bdb2f61))
* **terraform:** install gateway api crds before linkerd ([cdc6da4](https://github.com/IshaqAttah/CM-Assesment/commit/cdc6da46847cbb39852dcb1b0434df4aedb0412f))
* updated main.go ([cf6e6f6](https://github.com/IshaqAttah/CM-Assesment/commit/cf6e6f66f5a554ac304ae04026c3294eee59d6a1))
* use correct storageClassName standard instead of local-path ([6accd1b](https://github.com/IshaqAttah/CM-Assesment/commit/6accd1bc486fb6ac67edda70be02088c8cb49873))

## 1.0.0 (2026-06-05)


### Features

* add tasks ([c4e7de4](https://github.com/IshaqAttah/CM-Assesment/commit/c4e7de43402209232ab947ffe412d612174e65f3))
* **app:** add helm chart for user-app with dynamic pdb and hpa ([b70b844](https://github.com/IshaqAttah/CM-Assesment/commit/b70b844ca5b45af0f86ff41732511b6285b90cf8))
* **app:** add version endpoint ([44f2dac](https://github.com/IshaqAttah/CM-Assesment/commit/44f2dac6273eff4a57981ae980e537909a929965))
* **app:** trigger pipeline after ci fix ([c2d8dc8](https://github.com/IshaqAttah/CM-Assesment/commit/c2d8dc84a1f11a79290a750bbf2cf8b9a0145820))
* **gitops:** add flux kustomizations for infrastructure sources and releases ([a32afb2](https://github.com/IshaqAttah/CM-Assesment/commit/a32afb225022a310f06c3211f9f87b94231d6458))
* **gitops:** add infrastructure-namespaces kustomization for namespace pre-creation ([6563784](https://github.com/IshaqAttah/CM-Assesment/commit/65637841a05774ff63c0208b9c6d0fa9a24c786f))
* **grafana:** add Loki datasource ([57fbf0f](https://github.com/IshaqAttah/CM-Assesment/commit/57fbf0fd263dfb0e3ea50984f6953af083e777c6))
* **infra:** add helm repositories and releases for all platform tools ([bffa746](https://github.com/IshaqAttah/CM-Assesment/commit/bffa74613a3bb09f5b7e664e3f5410f3445ef176))
* rename image to user-app ([0d86342](https://github.com/IshaqAttah/CM-Assesment/commit/0d86342ccc249e42799786600f65a431790f94d4))


### Bug Fixes

* add missing user-app ServiceAccount ([8a86704](https://github.com/IshaqAttah/CM-Assesment/commit/8a86704f577333f0099287be7366f8be5adc07cc))
* add postgresql-secret SealedSecret to user-app kustomization ([49a0bc3](https://github.com/IshaqAttah/CM-Assesment/commit/49a0bc35b3375a418521ec809e13bb7866b8d7bb))
* add restricted PodSecurity context to postgresql StatefulSet ([d316d74](https://github.com/IshaqAttah/CM-Assesment/commit/d316d7461d680fcc81fb58f843c97b774ee2db43))
* allow egress from user-app to linkerd control plane ([5f3956d](https://github.com/IshaqAttah/CM-Assesment/commit/5f3956df300aaa50ea370b7e5ed2589fa63f2ef5))
* **alloy:** correct Loki service URL to monitoring-loki ([e4c02da](https://github.com/IshaqAttah/CM-Assesment/commit/e4c02dae6b9b32a6332cff6ed709a14ccd815517))
* **app:** downgrade to go 1.26.3 to match gosec action toolchain ([4f1b448](https://github.com/IshaqAttah/CM-Assesment/commit/4f1b448c79f237c6ec16a8cd08234587153562c7))
* apps ([9be0f9e](https://github.com/IshaqAttah/CM-Assesment/commit/9be0f9e42cd6e2df1cc76459effe66b9d12df761))
* **app:** trigger pipeline ([bd6af58](https://github.com/IshaqAttah/CM-Assesment/commit/bd6af583666f925a6e04491ce212ffc114120efb))
* **app:** trigger pipeline ([30b4301](https://github.com/IshaqAttah/CM-Assesment/commit/30b43018f894459208e91080986c0fafaf232ac9))
* **app:** upgrade pgx to v5.9.0 and x/crypto to v0.35.0 to fix critical CVEs ([b709e3f](https://github.com/IshaqAttah/CM-Assesment/commit/b709e3fe12858dabbff95fe4d2672624f4d1f89f))
* **app:** upgrade to go 1.24 to resolve govulncheck vulnerabilities ([3c91426](https://github.com/IshaqAttah/CM-Assesment/commit/3c9142630db05dfcfda3c10c48dfefdaaa6c63f5))
* **app:** upgrade to go 1.24.4 to resolve all  govulncheck vulnerabilities ([e357519](https://github.com/IshaqAttah/CM-Assesment/commit/e3575198dc04fab0ab3dc676973f1042cd9a45d8))
* **app:** upgrade to go 1.26.4 latest stable to resolve all govulncheck vulnerabilities ([c05ab80](https://github.com/IshaqAttah/CM-Assesment/commit/c05ab8077b1edca243de342d4101f7d87389e3f7))
* ask for no pr ([945b9e8](https://github.com/IshaqAttah/CM-Assesment/commit/945b9e84f6eb21641f16959b9ee7d58c5eab43a5))
* **ci:** add packages write permission to build-and-deploy job ([f159aed](https://github.com/IshaqAttah/CM-Assesment/commit/f159aedf8243d48a513b2a9f9bd5fa7f8cc98723))
* **ci:** add write permissions to semantic-release job ([a421b06](https://github.com/IshaqAttah/CM-Assesment/commit/a421b0643167eb80227c8dc2f2b0d3607ef1e4a3))
* **ci:** add write permissions to semantic-release job ([d2c0e7a](https://github.com/IshaqAttah/CM-Assesment/commit/d2c0e7a5adc365e107ab1a84432ef7070e24f7df))
* **ci:** fix extra_plugins indentation in semantic-release action ([db40873](https://github.com/IshaqAttah/CM-Assesment/commit/db408737ccbd17e300e44124ab644eae2484fb5b))
* **ci:** lowercase image name for ghcr compatibility ([e91a6fa](https://github.com/IshaqAttah/CM-Assesment/commit/e91a6fa394c82a7a9ba6af7152afa0f944619407))
* **ci:** pin go 1.26.3 and set GOTOOLCHAIN=local to prevent version switching ([7c58060](https://github.com/IshaqAttah/CM-Assesment/commit/7c5806008b2b0a2d909b85cf58ff5c08566c09af))
* **ci:** pin go 1.26.3 and set GOTOOLCHAIN=local to prevent version switching ([2eb281d](https://github.com/IshaqAttah/CM-Assesment/commit/2eb281d9edcaf907011918a08ec5131e19860770))
* **ci:** pin govulncheck version and upgrade to go 1.26.4 ([3068800](https://github.com/IshaqAttah/CM-Assesment/commit/3068800d6a609c3309b205366ed1575ef629a418))
* **ci:** revert to npx semantic-release with manual output capture ([5e88876](https://github.com/IshaqAttah/CM-Assesment/commit/5e888764cd447e1a893fa0bfa240a4711753c296))
* **ci:** separate scan and multi-arch push steps ([77058cb](https://github.com/IshaqAttah/CM-Assesment/commit/77058cb2625c6fd47e3bf94330ab4ed9fd1de80e))
* **ci:** use cycjimmy action to properly expose semantic-release outputs ([49f7efc](https://github.com/IshaqAttah/CM-Assesment/commit/49f7efc218095aa9f4550a97b13561ba45481d57))
* **ci:** use git tags to detect semantic-release output ([b5171b3](https://github.com/IshaqAttah/CM-Assesment/commit/b5171b3d780c40fcb6e57afec98d76c33450831b))
* **ci:** use govulncheck@latest instead of pinned old version ([72e4473](https://github.com/IshaqAttah/CM-Assesment/commit/72e4473207f22827716b71819bf9dc6bf6480291))
* clarification ([c5e56a8](https://github.com/IshaqAttah/CM-Assesment/commit/c5e56a81c0c0f0db1887a074c1cd182dfdf04442))
* clarification v2 ([3635c2f](https://github.com/IshaqAttah/CM-Assesment/commit/3635c2f0444c1b1fea72fc7ddfdc29d3077d150d))
* combine tasks ([bd6f7b9](https://github.com/IshaqAttah/CM-Assesment/commit/bd6f7b9b53b3e17e5276c29fff4d83264b3f3085))
* downgrade PodSecurity to baseline to allow Linkerd init ([57de66f](https://github.com/IshaqAttah/CM-Assesment/commit/57de66f4a76cd59a3a190e9895736c38e5a8beb3))
* **flux:** add createNamespace and remediation to user-app HelmRelease ([6f7ddf0](https://github.com/IshaqAttah/CM-Assesment/commit/6f7ddf08d260391ca7a622374d77fe2ea91e8d06))
* **flux:** fix loki values and simplify user-app dependsOn ([1953b49](https://github.com/IshaqAttah/CM-Assesment/commit/1953b4935c45d480485fe9d8f38cfa2c4738018d))
* **flux:** fix user-app dependsOn to reference HelmReleases not Kustomizations ([984a2b4](https://github.com/IshaqAttah/CM-Assesment/commit/984a2b4eafa2897c6bab41bd79f2a2f549090a0a))
* **gitops:** add infrastructure kustomization to flux sync ([f32d660](https://github.com/IshaqAttah/CM-Assesment/commit/f32d66052aa4d63a5e7e2e66ef467ce67a4b6620))
* **gitops:** add infrastructure kustomization to flux sync ([4ad3f03](https://github.com/IshaqAttah/CM-Assesment/commit/4ad3f03a2b00d5494ba69f92b24b2a26a8b1a201))
* **gitops:** add kustomization.yaml to flux directory ([4878819](https://github.com/IshaqAttah/CM-Assesment/commit/4878819b03f939cfedea1ba7a972811a5d5f4a3b))
* **gitops:** add missing infrastructure kustomization and namespaces to flux resources ([0cd81e0](https://github.com/IshaqAttah/CM-Assesment/commit/0cd81e047107615cb977be82f9d435bfc8ca1569))
* **gitops:** add valid resources to infrastructure kustomization ([6e7b4b1](https://github.com/IshaqAttah/CM-Assesment/commit/6e7b4b1bf7c77b9ef9885352c6caf26dd917cf17))
* **gitops:** correct infrastructure kustomization names and dependencies ([c0a3610](https://github.com/IshaqAttah/CM-Assesment/commit/c0a3610b36ccc0096f2d0c6e923474fe2b37c404))
* **gitops:** fix ApiVersion casing in namespaces.yaml ([c9aba73](https://github.com/IshaqAttah/CM-Assesment/commit/c9aba7361b22435af177a1617f73b06d963e0c2b))
* **helm:** add networkpolicy to allow prometheus scraping from monitoring namespace ([d8f36ea](https://github.com/IshaqAttah/CM-Assesment/commit/d8f36ea7882dcd26842142464f2aed74eb3d2a9e))
* **helm:** fix template delimiters and add missing values keys ([dc0add5](https://github.com/IshaqAttah/CM-Assesment/commit/dc0add59354cfff013f0ea8cdba0430d9026a730))
* **helm:** pre-create user-app namespace via infrastructure kustomization ([8077725](https://github.com/IshaqAttah/CM-Assesment/commit/8077725e4261b5e1c9dfef02fb7e93b1bcb2acca))
* **helm:** set podSelector to {} on all NetworkPolicies to include Flagger primary pods ([0afbc64](https://github.com/IshaqAttah/CM-Assesment/commit/0afbc64c61cc45864eec48731bb103fc83347c39))
* **infra:** correct YAML indentation across all HelmRepository and HelmRelease files ([f73bef9](https://github.com/IshaqAttah/CM-Assesment/commit/f73bef958a6f4df669e3664b81a8c97b9ed3218b))
* **infra:** fix leading whitespace in HelmRelease and HelmRepository files ([09bb0b9](https://github.com/IshaqAttah/CM-Assesment/commit/09bb0b9d8ba8ce90ac3ce30680c7703479e476fd))
* **infra:** fix leading whitespace in linkerd HelmRepository ([537ccd3](https://github.com/IshaqAttah/CM-Assesment/commit/537ccd32eb74571d0a4a088e329f5daab31967d9))
* **loki:** add useTestSchema to satisfy schema_config requirement in loki 6.6.0 ([e46e796](https://github.com/IshaqAttah/CM-Assesment/commit/e46e79637f8ee206b2bed013386a9853b670bafe))
* **loki:** disable chunks-cache — insufficient memory on Kind worker node ([1a9d6c8](https://github.com/IshaqAttah/CM-Assesment/commit/1a9d6c87d4aec061787e8f85b72604b83c8a8e12))
* **loki:** move chunksCache/resultsCache to top-level values, ([0d234b3](https://github.com/IshaqAttah/CM-Assesment/commit/0d234b3cf9f3369f18d68abb6b345df35d3249ed))
* **monitoring:** add release label to servicemonitors for prometheus discovery ([e2104c7](https://github.com/IshaqAttah/CM-Assesment/commit/e2104c7acf63ceb76a68a32708e51534eaffaa37))
* **monitoring:** fix servicemonitor selectors and add release label for prometheus discovery ([06d7635](https://github.com/IshaqAttah/CM-Assesment/commit/06d7635a094a550537eb337a9fe1e5bc295349ee))
* no cloud for cluster ([13a1f96](https://github.com/IshaqAttah/CM-Assesment/commit/13a1f961314dfdbdec93fe9283a558133aa5236b))
* remove linkerd from postgresql, drop PodSecurity enforce for user-app ([d08960a](https://github.com/IshaqAttah/CM-Assesment/commit/d08960aa6a6d17b4b2a13c03cdcd292383849a88))
* reseal secrets, linkerd annotations, service-mesh kustomization, user-app db configmap ([a7f9a9f](https://github.com/IshaqAttah/CM-Assesment/commit/a7f9a9f0db4609eee3521fb5b03656329d80a6d6))
* **security:** use privileged pod security to allow Linkerd init container ([b93e636](https://github.com/IshaqAttah/CM-Assesment/commit/b93e6363f4470c29563d1fefd7e7c66878822f7d))
* **terraform:** fix linkerd gateway api url line wrap issue ([96de9b5](https://github.com/IshaqAttah/CM-Assesment/commit/96de9b5ddc4c31c44cf01cdac8daaa6a9bdb2f61))
* **terraform:** install gateway api crds before linkerd ([cdc6da4](https://github.com/IshaqAttah/CM-Assesment/commit/cdc6da46847cbb39852dcb1b0434df4aedb0412f))
* updated main.go ([cf6e6f6](https://github.com/IshaqAttah/CM-Assesment/commit/cf6e6f66f5a554ac304ae04026c3294eee59d6a1))
* use correct storageClassName standard instead of local-path ([6accd1b](https://github.com/IshaqAttah/CM-Assesment/commit/6accd1bc486fb6ac67edda70be02088c8cb49873))

## 1.0.0 (2026-06-04)


### Features

* add tasks ([c4e7de4](https://github.com/IshaqAttah/CM-Assesment/commit/c4e7de43402209232ab947ffe412d612174e65f3))
* **app:** add version endpoint ([44f2dac](https://github.com/IshaqAttah/CM-Assesment/commit/44f2dac6273eff4a57981ae980e537909a929965))
* **app:** trigger pipeline after ci fix ([c2d8dc8](https://github.com/IshaqAttah/CM-Assesment/commit/c2d8dc84a1f11a79290a750bbf2cf8b9a0145820))


### Bug Fixes

* add missing user-app ServiceAccount ([8a86704](https://github.com/IshaqAttah/CM-Assesment/commit/8a86704f577333f0099287be7366f8be5adc07cc))
* add postgresql-secret SealedSecret to user-app kustomization ([49a0bc3](https://github.com/IshaqAttah/CM-Assesment/commit/49a0bc35b3375a418521ec809e13bb7866b8d7bb))
* add restricted PodSecurity context to postgresql StatefulSet ([d316d74](https://github.com/IshaqAttah/CM-Assesment/commit/d316d7461d680fcc81fb58f843c97b774ee2db43))
* allow egress from user-app to linkerd control plane ([5f3956d](https://github.com/IshaqAttah/CM-Assesment/commit/5f3956df300aaa50ea370b7e5ed2589fa63f2ef5))
* **app:** downgrade to go 1.26.3 to match gosec action toolchain ([4f1b448](https://github.com/IshaqAttah/CM-Assesment/commit/4f1b448c79f237c6ec16a8cd08234587153562c7))
* apps ([9be0f9e](https://github.com/IshaqAttah/CM-Assesment/commit/9be0f9e42cd6e2df1cc76459effe66b9d12df761))
* **app:** trigger pipeline ([bd6af58](https://github.com/IshaqAttah/CM-Assesment/commit/bd6af583666f925a6e04491ce212ffc114120efb))
* **app:** trigger pipeline ([30b4301](https://github.com/IshaqAttah/CM-Assesment/commit/30b43018f894459208e91080986c0fafaf232ac9))
* **app:** upgrade pgx to v5.9.0 and x/crypto to v0.35.0 to fix critical CVEs ([b709e3f](https://github.com/IshaqAttah/CM-Assesment/commit/b709e3fe12858dabbff95fe4d2672624f4d1f89f))
* **app:** upgrade to go 1.24 to resolve govulncheck vulnerabilities ([3c91426](https://github.com/IshaqAttah/CM-Assesment/commit/3c9142630db05dfcfda3c10c48dfefdaaa6c63f5))
* **app:** upgrade to go 1.24.4 to resolve all  govulncheck vulnerabilities ([e357519](https://github.com/IshaqAttah/CM-Assesment/commit/e3575198dc04fab0ab3dc676973f1042cd9a45d8))
* **app:** upgrade to go 1.26.4 latest stable to resolve all govulncheck vulnerabilities ([c05ab80](https://github.com/IshaqAttah/CM-Assesment/commit/c05ab8077b1edca243de342d4101f7d87389e3f7))
* ask for no pr ([945b9e8](https://github.com/IshaqAttah/CM-Assesment/commit/945b9e84f6eb21641f16959b9ee7d58c5eab43a5))
* **ci:** add packages write permission to build-and-deploy job ([f159aed](https://github.com/IshaqAttah/CM-Assesment/commit/f159aedf8243d48a513b2a9f9bd5fa7f8cc98723))
* **ci:** add write permissions to semantic-release job ([a421b06](https://github.com/IshaqAttah/CM-Assesment/commit/a421b0643167eb80227c8dc2f2b0d3607ef1e4a3))
* **ci:** add write permissions to semantic-release job ([d2c0e7a](https://github.com/IshaqAttah/CM-Assesment/commit/d2c0e7a5adc365e107ab1a84432ef7070e24f7df))
* **ci:** fix extra_plugins indentation in semantic-release action ([db40873](https://github.com/IshaqAttah/CM-Assesment/commit/db408737ccbd17e300e44124ab644eae2484fb5b))
* **ci:** lowercase image name for ghcr compatibility ([e91a6fa](https://github.com/IshaqAttah/CM-Assesment/commit/e91a6fa394c82a7a9ba6af7152afa0f944619407))
* **ci:** pin go 1.26.3 and set GOTOOLCHAIN=local to prevent version switching ([7c58060](https://github.com/IshaqAttah/CM-Assesment/commit/7c5806008b2b0a2d909b85cf58ff5c08566c09af))
* **ci:** pin go 1.26.3 and set GOTOOLCHAIN=local to prevent version switching ([2eb281d](https://github.com/IshaqAttah/CM-Assesment/commit/2eb281d9edcaf907011918a08ec5131e19860770))
* **ci:** pin govulncheck version and upgrade to go 1.26.4 ([3068800](https://github.com/IshaqAttah/CM-Assesment/commit/3068800d6a609c3309b205366ed1575ef629a418))
* **ci:** revert to npx semantic-release with manual output capture ([5e88876](https://github.com/IshaqAttah/CM-Assesment/commit/5e888764cd447e1a893fa0bfa240a4711753c296))
* **ci:** separate scan and multi-arch push steps ([77058cb](https://github.com/IshaqAttah/CM-Assesment/commit/77058cb2625c6fd47e3bf94330ab4ed9fd1de80e))
* **ci:** use cycjimmy action to properly expose semantic-release outputs ([49f7efc](https://github.com/IshaqAttah/CM-Assesment/commit/49f7efc218095aa9f4550a97b13561ba45481d57))
* **ci:** use git tags to detect semantic-release output ([b5171b3](https://github.com/IshaqAttah/CM-Assesment/commit/b5171b3d780c40fcb6e57afec98d76c33450831b))
* **ci:** use govulncheck@latest instead of pinned old version ([72e4473](https://github.com/IshaqAttah/CM-Assesment/commit/72e4473207f22827716b71819bf9dc6bf6480291))
* clarification ([c5e56a8](https://github.com/IshaqAttah/CM-Assesment/commit/c5e56a81c0c0f0db1887a074c1cd182dfdf04442))
* clarification v2 ([3635c2f](https://github.com/IshaqAttah/CM-Assesment/commit/3635c2f0444c1b1fea72fc7ddfdc29d3077d150d))
* combine tasks ([bd6f7b9](https://github.com/IshaqAttah/CM-Assesment/commit/bd6f7b9b53b3e17e5276c29fff4d83264b3f3085))
* downgrade PodSecurity to baseline to allow Linkerd init ([57de66f](https://github.com/IshaqAttah/CM-Assesment/commit/57de66f4a76cd59a3a190e9895736c38e5a8beb3))
* **gitops:** add infrastructure kustomization to flux sync ([f32d660](https://github.com/IshaqAttah/CM-Assesment/commit/f32d66052aa4d63a5e7e2e66ef467ce67a4b6620))
* **gitops:** add infrastructure kustomization to flux sync ([4ad3f03](https://github.com/IshaqAttah/CM-Assesment/commit/4ad3f03a2b00d5494ba69f92b24b2a26a8b1a201))
* **gitops:** add kustomization.yaml to flux directory ([4878819](https://github.com/IshaqAttah/CM-Assesment/commit/4878819b03f939cfedea1ba7a972811a5d5f4a3b))
* **gitops:** add valid resources to infrastructure kustomization ([6e7b4b1](https://github.com/IshaqAttah/CM-Assesment/commit/6e7b4b1bf7c77b9ef9885352c6caf26dd917cf17))
* **gitops:** fix ApiVersion casing in namespaces.yaml ([c9aba73](https://github.com/IshaqAttah/CM-Assesment/commit/c9aba7361b22435af177a1617f73b06d963e0c2b))
* no cloud for cluster ([13a1f96](https://github.com/IshaqAttah/CM-Assesment/commit/13a1f961314dfdbdec93fe9283a558133aa5236b))
* remove linkerd from postgresql, drop PodSecurity enforce for user-app ([d08960a](https://github.com/IshaqAttah/CM-Assesment/commit/d08960aa6a6d17b4b2a13c03cdcd292383849a88))
* reseal secrets, linkerd annotations, service-mesh kustomization, user-app db configmap ([a7f9a9f](https://github.com/IshaqAttah/CM-Assesment/commit/a7f9a9f0db4609eee3521fb5b03656329d80a6d6))
* **terraform:** fix linkerd gateway api url line wrap issue ([96de9b5](https://github.com/IshaqAttah/CM-Assesment/commit/96de9b5ddc4c31c44cf01cdac8daaa6a9bdb2f61))
* **terraform:** install gateway api crds before linkerd ([cdc6da4](https://github.com/IshaqAttah/CM-Assesment/commit/cdc6da46847cbb39852dcb1b0434df4aedb0412f))
* updated main.go ([cf6e6f6](https://github.com/IshaqAttah/CM-Assesment/commit/cf6e6f66f5a554ac304ae04026c3294eee59d6a1))
* use correct storageClassName standard instead of local-path ([6accd1b](https://github.com/IshaqAttah/CM-Assesment/commit/6accd1bc486fb6ac67edda70be02088c8cb49873))

## [1.2.6](https://github.com/IshaqAttah/CM-Assesment/compare/user-app-v1.2.5...user-app-v1.2.6) (2026-06-03)


### Bug Fixes

* **app:** trigger pipeline ([5c4831b](https://github.com/IshaqAttah/CM-Assesment/commit/5c4831ba5314686926e38b91734343858e6676b6))

## [1.2.5](https://github.com/IshaqAttah/CM-Assesment/compare/user-app-v1.2.4...user-app-v1.2.5) (2026-06-03)


### Bug Fixes

* **app:** trigger pipeline ([021d476](https://github.com/IshaqAttah/CM-Assesment/commit/021d476362e68e8fd5a713073686d4c2c979583d))

## [1.2.4](https://github.com/IshaqAttah/CM-Assesment/compare/user-app-v1.2.3...user-app-v1.2.4) (2026-06-02)


### Bug Fixes

* **ci:** add packages write permission to build-and-deploy job ([ae0dd68](https://github.com/IshaqAttah/CM-Assesment/commit/ae0dd6882262bb1185d12eaf33cc0b20eb332112))

## [1.2.3](https://github.com/IshaqAttah/CM-Assesment/compare/user-app-v1.2.2...user-app-v1.2.3) (2026-06-02)


### Bug Fixes

* **app:** upgrade pgx to v5.9.0 and x/crypto to v0.35.0 to fix critical CVEs ([3c2e747](https://github.com/IshaqAttah/CM-Assesment/commit/3c2e74769c456ea0d300163d15e0a96481c56cf0))

## [1.2.2](https://github.com/IshaqAttah/CM-Assesment/compare/user-app-v1.2.1...user-app-v1.2.2) (2026-06-02)


### Bug Fixes

* **ci:** separate scan and multi-arch push steps ([01d4e59](https://github.com/IshaqAttah/CM-Assesment/commit/01d4e59365a454f6aca2ede41b2a05faef8681ea))

## [1.2.1](https://github.com/IshaqAttah/CM-Assesment/compare/user-app-v1.2.0...user-app-v1.2.1) (2026-06-02)


### Bug Fixes

* **ci:** lowercase image name for ghcr compatibility ([4cec296](https://github.com/IshaqAttah/CM-Assesment/commit/4cec2965e60af72f26d313595ad590b35a3101c0))

## [1.2.0](https://github.com/IshaqAttah/CM-Assesment/compare/user-app-v1.1.0...user-app-v1.2.0) (2026-06-02)


### Features

* **app:** trigger pipeline after ci fix ([1d0295f](https://github.com/IshaqAttah/CM-Assesment/commit/1d0295fb2a93c428de9f7da3ea5ea4e5202753ca))


### Bug Fixes

* **ci:** fix extra_plugins indentation in semantic-release action ([861446a](https://github.com/IshaqAttah/CM-Assesment/commit/861446a72447edaee28d301f93e117f6f7cf43a4))
* **ci:** pin govulncheck version and upgrade to go 1.26.4 ([15a6dc5](https://github.com/IshaqAttah/CM-Assesment/commit/15a6dc5eaa96a51c9c000aeb0ae3eab6ddc7f710))
* **ci:** revert to npx semantic-release with manual output capture ([ebabfaa](https://github.com/IshaqAttah/CM-Assesment/commit/ebabfaa26babb365bad28f3a2783cd16f77f55f3))
* **ci:** use cycjimmy action to properly expose semantic-release outputs ([046afd9](https://github.com/IshaqAttah/CM-Assesment/commit/046afd98ccca5f0bb53f9aebd32abafadc9b005d))
* **ci:** use git tags to detect semantic-release output ([04fadc4](https://github.com/IshaqAttah/CM-Assesment/commit/04fadc4a2c4236fe4d0db9ee8082fff67fdd13a7))
* **ci:** use govulncheck@latest instead of pinned old version ([e6f5654](https://github.com/IshaqAttah/CM-Assesment/commit/e6f5654fef718e36c2e51f32ca4e67974fed20fa))

## [1.1.0](https://github.com/IshaqAttah/CM-Assesment/compare/user-app-v1.0.0...user-app-v1.1.0) (2026-06-02)


### Features

* **app:** add version endpoint ([ce03717](https://github.com/IshaqAttah/CM-Assesment/commit/ce03717d214b51bb8570e983a29c415c104120b5))

## 1.0.0 (2026-06-02)


### Features

* add tasks ([c4e7de4](https://github.com/IshaqAttah/CM-Assesment/commit/c4e7de43402209232ab947ffe412d612174e65f3))


### Bug Fixes

* **app:** downgrade to go 1.26.3 to match gosec action toolchain ([4f1b448](https://github.com/IshaqAttah/CM-Assesment/commit/4f1b448c79f237c6ec16a8cd08234587153562c7))
* apps ([9be0f9e](https://github.com/IshaqAttah/CM-Assesment/commit/9be0f9e42cd6e2df1cc76459effe66b9d12df761))
* **app:** upgrade to go 1.24 to resolve govulncheck vulnerabilities ([3c91426](https://github.com/IshaqAttah/CM-Assesment/commit/3c9142630db05dfcfda3c10c48dfefdaaa6c63f5))
* **app:** upgrade to go 1.24.4 to resolve all  govulncheck vulnerabilities ([e357519](https://github.com/IshaqAttah/CM-Assesment/commit/e3575198dc04fab0ab3dc676973f1042cd9a45d8))
* **app:** upgrade to go 1.26.4 latest stable to resolve all govulncheck vulnerabilities ([c05ab80](https://github.com/IshaqAttah/CM-Assesment/commit/c05ab8077b1edca243de342d4101f7d87389e3f7))
* ask for no pr ([945b9e8](https://github.com/IshaqAttah/CM-Assesment/commit/945b9e84f6eb21641f16959b9ee7d58c5eab43a5))
* **ci:** add write permissions to semantic-release job ([86976b8](https://github.com/IshaqAttah/CM-Assesment/commit/86976b846ead2a4332b072c1f32acc75349c1165))
* **ci:** add write permissions to semantic-release job ([767e29e](https://github.com/IshaqAttah/CM-Assesment/commit/767e29e83eed2c37413110a14e48116696382900))
* **ci:** pin go 1.26.3 and set GOTOOLCHAIN=local to prevent version switching ([7c58060](https://github.com/IshaqAttah/CM-Assesment/commit/7c5806008b2b0a2d909b85cf58ff5c08566c09af))
* **ci:** pin go 1.26.3 and set GOTOOLCHAIN=local to prevent version switching ([2eb281d](https://github.com/IshaqAttah/CM-Assesment/commit/2eb281d9edcaf907011918a08ec5131e19860770))
* clarification ([c5e56a8](https://github.com/IshaqAttah/CM-Assesment/commit/c5e56a81c0c0f0db1887a074c1cd182dfdf04442))
* clarification v2 ([3635c2f](https://github.com/IshaqAttah/CM-Assesment/commit/3635c2f0444c1b1fea72fc7ddfdc29d3077d150d))
* combine tasks ([bd6f7b9](https://github.com/IshaqAttah/CM-Assesment/commit/bd6f7b9b53b3e17e5276c29fff4d83264b3f3085))
* no cloud for cluster ([13a1f96](https://github.com/IshaqAttah/CM-Assesment/commit/13a1f961314dfdbdec93fe9283a558133aa5236b))
* **terraform:** fix linkerd gateway api url line wrap issue ([96de9b5](https://github.com/IshaqAttah/CM-Assesment/commit/96de9b5ddc4c31c44cf01cdac8daaa6a9bdb2f61))
* **terraform:** install gateway api crds before linkerd ([cdc6da4](https://github.com/IshaqAttah/CM-Assesment/commit/cdc6da46847cbb39852dcb1b0434df4aedb0412f))
* updated main.go ([cf6e6f6](https://github.com/IshaqAttah/CM-Assesment/commit/cf6e6f66f5a554ac304ae04026c3294eee59d6a1))
