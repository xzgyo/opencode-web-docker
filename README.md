# DeepSeek Harness Docker

使用 Docker Compose 运行 Opencode Web UI。镜像基于 Debian Testing，并通过 github 下载官方构建版本的opencode。

> [!NOTE]
> 本项目代码由AI辅助完成。

## 环境要求

- 已安装 [Docker Engine 和 Docker Compose v2](https://www.docker.com/get-started/)
- 主机的 `4096` 端口未被占用

## 启动

在项目目录执行：

```bash
docker compose up -d --build
```

启动后，在浏览器访问 [http://127.0.0.1:4096](http://127.0.0.1:4096)。查看启动日志：

```bash
docker compose logs -f
```

停止并移除容器：

```bash
docker compose down
```

## 数据与工作区

容器中允许agent使用sudo提权root权限，默认密码为`password`。

## 配置

Compose 默认设置如下：

| 变量 | 默认值 | 说明 |
| --- | --- | --- |
| `HOST` | `127.0.0.1` | Web UI 仅监听本机回环地址 |
| `PORT` | `3080` | Web UI 在容器内的监听端口 |

Compose 使用 host 网络，因此无需配置端口映射。需要更换端口时，修改 `PORT`，并访问对应的 `http://localhost:<端口>`。

## Stars

<a href="https://www.star-history.com/?repos=xzgyo%2Fopencode-web-docker&amp;type=date">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/chart?repos=xzgyo/opencode-web-docker&amp;type=date&amp;theme=dark&amp;legend=top-left" />
    <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/chart?repos=xzgyo/opencode-web-docker&amp;type=date" />
    <img alt="GitHub Star 历史" src="https://api.star-history.com/chart?repos=xzgyo/opencode-web-docker&amp;type=date" />
  </picture>
</a>