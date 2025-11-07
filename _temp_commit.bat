@echo off
chcp 65001 >nul
cd /d "E:\Lover\小礼物\倒计时氛围感-升级版"
git add "安装依赖.bat" "生成PWA图标.bat" "生成音乐列表.bat" "启动服务器.bat"
git commit -m "改进：添加智能依赖检测和自动安装功能"
git push origin main
pause

