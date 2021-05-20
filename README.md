# arm64-demo-golang
golang demo for arm64

## 编译
docker build -t demo-golang .

## 运行
docker run -d --rm -p 8080:80 demo-golang

## 测试访问
curl http://localhost:8080