#!/bin/bash

set -e

npm --prefix packages/flutter_fuels_beta3/web install
npm --prefix packages/flutter_fuels_beta3/web run build
