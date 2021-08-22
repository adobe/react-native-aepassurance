PROJECT_NAME = AEPAssurance

setup:
	(npm install)
	(cd ios && pod deintegrate || true && pod install)

clean:
	(rm -rf android/build && rm -rf ios/build)
	(cd android && ./gradlew clean)
	(cd ios && xcodebuild clean -workspace RCT${PROJECT_NAME}.xcworkspace -scheme RCT${PROJECT_NAME})

pod-update:
	gem install cocoapods

build-android:
	(cd android && ./gradlew build -x lint)

build-ios: setup
	(cd ios && xcodebuild build -workspace RCT${PROJECT_NAME}.xcworkspace -scheme RCT${PROJECT_NAME})

build-sample-android:
	(cd SampleApp/android && ./gradlew assembleRelease)

build-sample-ios: pod-update
	(cd SampleApp/ios && pod install && xcodebuild build -workspace SampleApp.xcworkspace -scheme SampleApp CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED="NO" CODE_SIGNING_ALLOWED="NO")

run-tests:
	./node_modules/.bin/jest --testPathIgnorePatterns sample/ node_modules/ --modulePathIgnorePatterns sample/ --runInBand

run-tests-locally: setup
	./node_modules/.bin/jest --testPathIgnorePatterns sample/ node_modules/ --modulePathIgnorePatterns sample/

copy-to-sample:
	(cd SampleApp/ && make sync)
