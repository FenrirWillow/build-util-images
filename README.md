# Build Util Images

![Master CI Pipeline](https://github.com/FenrirWillow/build-util-images/workflows/Master%20CI%20Pipeline/badge.svg)

---

## Overview

This repository contains Docker images that are useful for building Node + Terraform services.

The repository is available publicly on [DockerHub](https://hub.docker.com/r/fenrirwillow/build-util-images)

---

## Builds

Tag | Node version | Terraform Version
---|---|---
`node-12-terraform-0.12.29` | `12.18.3` | `0.12.29`
`node-12-terraform-0.12.24` | `12.18.3` | `0.12.24`
`node-12-terraform-0.11.14` | `12.18.3` | `0.11.14`

---

## Using the build images

TLDR: `docker pull fenrirwillow/build-util-images:<tag>`

The images contain the specified Node and Terraform version along with a few utilities (curl, unzip). They also contain the minimal native compiler toolchain via the `build-essential` package for building things like native Node modules.

---

## Contributing

> ⚠ This section is incomplete, sorry about that 😢

---
