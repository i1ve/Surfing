# Surfing

  本项目基于 [Box4Magisk](https://github.com/CHIZI-0618/box4magisk) <br>为 Clash、sing-box、v2ray、xray 的 [Magisk](https://github.com/topjohnwu/Magisk) 与 [KernelSU](https://github.com/tiann/KernelSU) 模块。支持 REDIRECT（仅 TCP）、TPROXY（TCP + UDP）透明代理，支持 TUN（TCP + UDP），亦可 REDIRECT（TCP） + TUN（UDP） 混合模式代理。
  
  本模块默认配置仅支持 Clash，其它详看 [wiki](https://github.com/CHIZI-0618/box4magisk/blob/main/README.md)<br>本模块需在 Magisk/KernelSU 环境进行使用。<br>如果你不知道如何配置所需环境，你可能需要像 ClashForAndroid、v2rayNG、surfboard、SagerNet、AnXray 等应用程序。

# Surfing用户声明及免责

欢迎使用 在使用本项目前，请您仔细阅读并理解以下声明及免责条款。通过使用本项目，即表示您同意接受以下条款和条件。以下简称 **Surfing**

## 免责声明

1. 本项目是一个开源项目，仅供学习和研究之用，不提供任何形式的担保。使用者必须对使用本项目的风险和后果负全部责任。

2. 本项目仅为简化 Surfing 对 Clash 服务在 Magisk 环境中的安装和配置提供便利，并不对 Surfing 的功能和性能做出任何保证。如有任何问题或损失，本项目开发者概不负责。

3. 本项目 Surfing 模块的使用可能会违反您所在地区的法律法规或服务提供商的使用条款。您需要自行承担使用本项目所带来的风险。本项目开发者不对您的行为或使用后果负责。

4. 本项目开发者不对使用本项目产生的任何直接或间接损失或损害负责，包括但不限于数据丢失、设备损坏、服务中断、个人隐私泄露等。

## 使用须知

1. 在使用本项目 Surfing 模块前，请确保您已经仔细阅读并理解 Clash 和 Magisk 的使用说明和相关文档，并遵守其规定和条款。

2. 在使用本项目之前，请先备份您的设备数据和相关设置，以防发生意外情况。本项目开发者不对您的数据丢失或损坏负责。

3. 请在使用本项目时遵守当地的法律法规，并尊重其他用户的合法权益。禁止使用本项目进行任何违法、滥用或侵权的行为。

4. 如果您在使用本项目时遇到任何问题或有任何建议，欢迎您向本项目开发者反馈，但开发者对于解决问题和回应反馈没有义务和责任。

请您在明确理解并接受上述声明及免责条款后，再决定是否使用 Surfing 模块。如果您不同意或无法接受上述条款，请立即停止使用本项目。

## 法律适用

在使用本项目的过程中，您须遵守您所在地区的法律法规。如有任何争议，应依照当地法律法规进行解释和处理。

## 安装

- 从 [Release](https://github.com/MoGuangYu/Surfing/releases) 页下载模块压缩包，然后通过 Magisk Manager 或 KernelSU Manager 安装
- 支持后续在 Magisk Manager 中在线更新模块（更新后免重启即生效）
- 更新模块时会备份旧文件用户配置，至 `/data/adb/box_bll/scripts/box.config.bak` 
---

## 致谢

<a href="https://github.com/CHIZI-0618">
  <p align="center">
    <img src="https://github.com/CHIZI-0618.png" width="100" height="100" alt="CHIZI-0618">
    <br>
    <strong>CHIZI-0618</strong>
  </p>
</a>
<div align="center">
  <p>感谢为本项目的实现提供了宝贵的基础。</p>
</div>

