# XMRig, CVN edition

This is [XMRig](https://github.com/xmrig/xmrig) with the RandomX settings of
[Covenant Standard (CVN)](https://github.com/kalashnikovski/cvn_node). It exists
so that everyone mining CVN can use the fastest miner available, not only
people able to modify one themselves.

**It mines CVN only.** The algorithm name `rx/0` in this edition means CVN's
RandomX, so it cannot mine Monero or any other RandomX coin; use the original
XMRig for those.

## What is different from XMRig

| | XMRig | This edition |
|---|---|---|
| RandomX salt | `RandomX\x03` | `RandomCVN\x01` |
| RandomX extra dataset size | 33,554,368 bytes | 33,424,704 bytes |
| Built-in donation | 1% minimum, to XMRig's developers | none (it would mine another coin) |
| Name shown | XMRig | XMRig-CVN |

Nothing else is changed. The licence is unchanged (GPL version 3, see
`LICENSE`), and this source is published as that licence requires. All credit
for the miner belongs to the XMRig developers; please consider supporting
them directly.

## Mining CVN with it

1. Run a CVN node on the same machine (see the CVN repository). On a RandomX
   network it offers mining work on its work-server port.
2. Start this miner pointed at the node, with your CVN address as the user:

       xmrig -o 127.0.0.1:PORT -u YOUR_CVN_ADDRESS -a rx/0

   `start_cvn.cmd` (Windows) and `start_cvn.sh` (Linux) do this; edit the
   address and port in them first.
3. The node pauses its own built-in miner while this one is connected, checks
   every block this miner finds, and pays the reward to the address you gave.

To mine with several machines through one node, start the node with
`--mining-listen 0.0.0.0` and point each miner at that machine's address.

Everything below is the original XMRig README.

---

# XMRig

[![Github All Releases](https://img.shields.io/github/downloads/xmrig/xmrig/total.svg)](https://github.com/xmrig/xmrig/releases)
[![GitHub release](https://img.shields.io/github/release/xmrig/xmrig/all.svg)](https://github.com/xmrig/xmrig/releases)
[![GitHub Release Date](https://img.shields.io/github/release-date/xmrig/xmrig.svg)](https://github.com/xmrig/xmrig/releases)
[![GitHub license](https://img.shields.io/github/license/xmrig/xmrig.svg)](https://github.com/xmrig/xmrig/blob/master/LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/xmrig/xmrig.svg)](https://github.com/xmrig/xmrig/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/xmrig/xmrig.svg)](https://github.com/xmrig/xmrig/network)

XMRig is a high performance, open source, cross platform RandomX, KawPow, CryptoNight and [GhostRider](https://github.com/xmrig/xmrig/tree/master/src/crypto/ghostrider#readme) unified CPU/GPU miner and [RandomX benchmark](https://xmrig.com/benchmark). Official binaries are available for Windows, Linux, macOS and FreeBSD.

## Mining backends
- **CPU** (x86/x64/ARMv7/ARMv8/RISC-V)
- **OpenCL** for AMD GPUs.
- **CUDA** for NVIDIA GPUs via external [CUDA plugin](https://github.com/xmrig/xmrig-cuda).

## Download
* **[Binary releases](https://github.com/xmrig/xmrig/releases)**
* **[Build from source](https://xmrig.com/docs/miner/build)**

## Usage
The preferred way to configure the miner is the [JSON config file](https://xmrig.com/docs/miner/config) as it is more flexible and human friendly. The [command line interface](https://xmrig.com/docs/miner/command-line-options) does not cover all features, such as mining profiles for different algorithms. Important options can be changed during runtime without miner restart by editing the config file or executing [API](https://xmrig.com/docs/miner/api) calls.

* **[Wizard](https://xmrig.com/wizard)** helps you create initial configuration for the miner.
* **[Workers](http://workers.xmrig.info)** helps manage your miners via HTTP API.

## Donations
* Default donation 1% (1 minute in 100 minutes) can be increased via option `donate-level` or disabled in source code.
* XMR: `48edfHu7V9Z84YzzMa6fUueoELZ9ZRXq9VetWzYGzKt52XU5xvqgzYnDK9URnRoJMk1j8nLwEVsaSWJ4fhdUyZijBGUicoD`

## Developers
* **[xmrig](https://github.com/xmrig)**
* **[sech1](https://github.com/SChernykh)**

## Contacts
* support@xmrig.com
* [reddit](https://www.reddit.com/user/XMRig/)
* [twitter](https://twitter.com/xmrig_dev)
