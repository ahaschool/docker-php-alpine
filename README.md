## ahaschool开发环境

### 启动
docker run -p 8080:80 -v ~/code/aha:/opt/aha -e site=api -d php-dev:latest
> * ~/code/aha，为本地项目目录，完整结构为xxx/aha/api/public，xxx/aha/h5/public
> * site，项目文件夹名，也当默认项目名，在找不到动态目录时会指向该目录

## 访问
curl api.mac.yuge.win:8080
> * 结构为 xxx.mac.yuge.win，其中xxx表示项目名，动态映射~/code/aha/xxx/public
> * 所有项目需要index.php入口文件