# Reactionetes

Spin up a Kubernetes stack dedicated to Reaction Commerce PDQ

[![Build Status](https://travis-ci.org/joshuacox/reactionetes.svg?branch=master)](https://travis-ci.org/joshuacox/reactionetes)
[![CircleCI](https://circleci.com/gh/joshuacox/reactionetes/tree/master.svg?style=svg)](https://circleci.com/gh/joshuacox/reactionetes/tree/master)
[![Waffle.io - Columns and their card count](https://badge.waffle.io/joshuacox/reactionetes.svg?columns=all)](https://waffle.io/joshuacox/reactionetes)

## TLDR

```
helm install \
  --name my-release-name \
	--set mongodbReleaseName=massive-mongonetes \
  --set replicaCount=1 \
  --set mongoReplicaCount=3 \
  --set image.repository=reactioncommerce/reaction \
  --set image.tag=latest \
  ./reactioncommerce
```

## Oneliner Autopilot

The oneliner:
```
curl -L https://git.io/reactionetes | bash
```

That merely performs the
[autopilot](#autopilot)
recipe using the [bootstrap](./bootstrap) file.

This script automagically attempts to determine your OS and tries to
install the minikube and kubectl appropriate for your OS.

At the end of which you will get some notes if everything went
successfully.  Here is some example output:

```
NOTES:
1. Get the ReactionCommerce URL by running these commands:
  export POD_NAME=$(kubectl get pods --namespace default -l
"app=reactionetes,release=EXAMPLE_RELEASE" -o
jsonpath="{.items[0].metadata.name}")
  echo "Visit http://127.0.0.1:3001 to use your application"
  kubectl port-forward $POD_NAME 3001:3000
```

It should be noted that you can then paste the last three lines from
your output (not the above example lines, `EXAMPLE_RELEASE` will have your
release name that is generated by kubernetes instead)
directly into your terminal and you will be able to access the reaction
commerce site once all the pods spin up at:

[127.0.0.1:3001](http://127.0.0.1:3001)

it may take some time depending mainly on your internet connection and
how fast you can download all the necessary images.  The first time
being the worst as you have to download kubectl and minikube, AND all
the docker images to spin up kubernetes.

### Detailed Docs

#### [autopilot](./autopilot.md)

#### [envvars](./envvars.md)

#### [manualinstall](./manualinstall.md)

#### [values](./values.md)

#### [scaling](./scaling.md)

#### [debug](./debug.md)

#### [branches](./branches.md)

#### [notes](./notes.md)

### Discussion

Feel free to open an
[issue](https://github.com/joshuacox/reactionetes/issues)
here at github.

There is also a
[forum post](https://forums.reactioncommerce.com/t/kubernetes-and-reaction/648)
at the reaction commerce forums.

I appreciate feedback and suggestions!
