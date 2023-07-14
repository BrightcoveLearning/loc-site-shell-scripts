sitesArray=(docs-support-home-de docs-support-home-fr docs-support-home-ja docs-support-home-ko docs-support-home-zh-tw)
# apis-de apis-fr apis-ja apis-ko apis-zh-tw audience-insights-de audience-insights-fr audience-insights-ja audience-insights-ko audience-insights-zh-tw beacon-de beacon-fr beacon-ja beacon-ko beacon-zh-tw docs-support-home-de docs-support-home-fr docs-support-home-ja docs-support-home-ko docs-support-home-zh-tw gallery-de gallery-fr gallery-ja gallery-ko gallery-zh-tw general-de general-fr general-ja general-ko general-zh-tw integrations-de integrations-fr integrations-ja integrations-ko integrations-zh-tw live-de live-fr live-ja live-ko live-zh-tw player-de player-fr player-ja player-ko player-zh-tw sdks-de sdks-fr sdks-ja sdks-ko sdks-zh-tw ssai-de ssai-fr ssai-ja ssai-ko ssai-zh-tw studio-de studio-fr studio-ja studio-ko studio-zh-tw zencoder-de zencoder-fr zencoder-ja zencoder-ko zencoder-zh-tw
# sudo chmod -R g+w ~/git-loc
# apis
for ((i = 1; i <= $#sitesArray; i++))
do 
  cd "../$sitesArray[i]"
git pull
git add --all
git commit --all -m general-update
git push
  echo 'pulled '$sitesArray[i]
done
echo 'all finished!'
