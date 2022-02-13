if [ $1 == "watch" ]
then
flutter packages pub run build_runner watch
else
flutter packages pub run build_runner build --delete-conflicting-outputs
fi