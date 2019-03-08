## ahaschool开发环境

### 启动
docker run -p 8080:80 -v ~/code/aha:/opt/aha -e www_name=api -d php-dev:v1
> * ~/code/aha，为本地项目目录，完整结构为~/code/aha/api/public，~/code/aha/h5/public
> * www_name，默认项目文件夹名

## 访问
curl api.mac.yuge.win:8080
> * 结构为 xxx.mac.yuge.win，其中xxx表示项目名，动态映射~/code/aha/xxx/public
> * 所有项目需要index.php入口文件