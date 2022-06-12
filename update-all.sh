# sudo chmod -R g+w ~/git-loc
git config --global pull.rebase false
sitesArray=(apis-de apis-es apis-fr apis-ja apis-ko apis-zh-tw audience-de audience-es audience-fr audience-ja audience-ko audience-zh-tw beacon-de beacon-es beacon-fr beacon-ja beacon-ko beacon-zh-tw beacon-support-de beacon-support-es beacon-support-fr beacon-support-ja beacon-support-ko beacon-support-zh-tw campaign-de campaign-es campaign-fr campaign-ja campaign-ko campaign-zh-tw docs-support-home-de docs-support-home-es docs-support-home-fr docs-support-home-ja docs-support-home-ko docs-support-home-zh-tw engage-de engage-es engage-fr engage-ja engage-ko engage-zh-tw gallery-de gallery-es gallery-fr gallery-ja gallery-ko gallery-zh-tw general-de general-es general-fr general-ja general-ko general-zh-tw integrations-de integrations-es integrations-fr integrations-ja integrations-ko integrations-zh-tw live-de live-es live-fr live-ja live-ko live-zh-tw player-de player-es player-fr player-ja player-ko player-zh-tw sdks-de sdks-es sdks-fr sdks-ja sdks-ko sdks-zh-tw social-de social-es social-fr social-ja social-ko social-zh-tw ssai-de ssai-es ssai-fr ssai-ja ssai-ko ssai-zh-tw studio-de studio-es studio-fr studio-ja studio-ko studio-zh-tw zencoder-de zencoder-es zencoder-fr zencoder-ja zencoder-ko zencoder-zh-tw)
for ((i = 1; i <= $#sitesArray; i++))
do 
  cd "../$sitesArray[i]"
  git pull
  sudo bundle update
  sudo bundle exec jekyll build --trace
  git add --all
  git commit --all -m general-update
  git push
  git add --all
  git commit --all -m general-update
  git push
  echo 'updated '$sitesArray[i]
done
