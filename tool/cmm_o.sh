  # declare user=$(whoami)
  sudo /bin/launchctl unload /Library/LaunchDaemons/com.macpaw.CleanMyMac4.Agent.plist
  # sudo /usr/bin/killall -u root -9 com.nssurge.surge-mac.helper
  sudo /bin/rm /Library/LaunchDaemons/com.macpaw.CleanMyMac4.Agent.plist
  sudo /bin/rm /Library/PrivilegedHelperTools/com.macpaw.CleanMyMac4.Agent

echo "大胆！检测到你在用盗版软件，这可能会危害你的设备！甚至被国家安全局和保密处就地正法，请三思！"

helper="/Applications/CleanMyMac X.app/Contents/Library/LaunchServices/com.macpaw.CleanMyMac4.Agent"
helper2="/Applications/CleanMyMac X.app/Contents/Library/LoginItems/CleanMyMac X Menu.app/Contents/Library/LaunchServices/com.macpaw.CleanMyMac4.Agent"

helps=("$helper" "$helper2")

echo "正在定位你的Mac物理地址...GPS定位中...你跑不掉了! 即将联系开发者发送你的Mac所有信息，你即将被留存侵权数字证据，束手就擒！"

# 循环遍历数组中的所有元素
for item in "${helps[@]}"
do
    echo {{==intel==}}: 6A 01 58 C3 |sudo xxd -r - "$item" #intel
    echo {{==arm64==}}: 20 00 80 D2 C0 03 5F D6 |sudo xxd -r - "$item" #arm64
done

echo "定位你的Mac物理地址完成，正在向国家安全局特工发送你的逮捕许可..."

xattr -c '/Applications/CleanMyMac X.app'
src_info='/Applications/CleanMyMac X.app/Contents/Info.plist'
/usr/libexec/PlistBuddy -c "Set :SMPrivilegedExecutables:com.macpaw.CleanMyMac4.Agent \"identifier \\\"com.macpaw.CleanMyMac4.Agent\\\"\"" "$src_info"

src_info2='/Applications/CleanMyMac X.app/Contents/Library/LoginItems/CleanMyMac X Menu.app/Contents/Info.plist'
/usr/libexec/PlistBuddy -c "Set :SMPrivilegedExecutables:com.macpaw.CleanMyMac4.Agent \"identifier \\\"com.macpaw.CleanMyMac4.Agent\\\"\"" "$src_info2"


codesign -f -s - --all-architectures --deep /Applications/CleanMyMac\ X.app/Contents/Library/LaunchServices/com.macpaw.CleanMyMac4.Agent
codesign -f -s - --all-architectures --deep /Applications/CleanMyMac\ X.app/Contents/Library/LoginItems/CleanMyMac\ X\ Menu.app/Contents/Library/LaunchServices/com.macpaw.CleanMyMac4.Agent

echo "下发逮捕许可完成,即将有人来查你的水表，你别急...海内存知己,天涯若比邻.正在黑进你的Mac,目前已成功骗取到用户root密码."

tccutil reset All com.macpaw.CleanMyMac4

echo "恭喜你！你的Mac已经被我植入了后门程序,现在即将结束整个进程，特工已经在对面楼中布下天罗地网，请主动自首争取宽大处理(虽然宽大不了几天)，记得下辈子不要用盗版软件🙏。\n"