.PHONY: all run_dev_web run_dev_mobile run_unit clean upgrade lint format build_dev_mobile help watch gen run_stg_mobile run_prd_mobile build_apk_dev build_apk_stg build_apk_prd purge build ios deploy-android deploy-ios default_notification

all: lint format run_dev_mobile

run_unit: ## Runs unit tests
	@echo "╠ Running the tests"
	@flutter test || (echo "Error while running tests"; exit 1)

clean: ## Cleans the environment
	@echo "╠ Cleaning the project..."
	@rm -rf pubspec.lock
	@flutter clean
	@flutter pub get

watch: ## Watches the files for changes
	@echo "╠ Watching the project..."
	@flutter pub run build_runner watch --delete-conflicting-outputs

gen: ## Generates the assets
	@echo "╠ Generating the assets..."
	@flutter pub get
	@flutter packages pub run build_runner build

get: ## Gets the dependencies
	@echo "╠ Getting the dependencies..."
	@flutter pub get

format: ## Formats the code
	@echo "╠ Formatting the code"
	@dart fix --apply
	@flutter format lib .
	@flutter pub run import_sorter:main
	@flutter format lib

lint: ## Lints the code
	@echo "╠ Verifying code..."
	@dart analyze . || (echo "Error in project"; exit 1)

upgrade: clean ## Upgrades dependencies
	@echo "╠ Upgrading dependencies..."
	@flutter pub upgrade

commit: format lint run_unit
	@echo "╠ Committing..."
	git add .
	git commit

run_dev_web: ## Runs the web application in dev
	@echo "╠ Running the app"
	@flutter run -d chrome --dart-define=ENVIRONMENT=dev

run_dev_mobile: ## Runs the mobile application in dev
	@echo "╠ Running the app"
	@flutter run --flavor development -t lib/main_development.dart

run_stg_mobile: ## Runs the mobile application in dev
	@echo "╠ Running the app"
	@flutter run --flavor staging -t lib/main_staging.dart

run_prd_mobile: ## Runs the mobile application in dev
	@echo "╠ Running the app"
	@flutter run --flavor production -t lib/main_production.dart

build_apk_dev: ## Runs the mobile application in dev
	@flutter clean
	@flutter pub get
	@flutter build apk --flavor development -t lib/main_development.dart

build_apk_stg: ## Runs the mobile application in staging
	@flutter clean
	@flutter pub get
	@flutter build apk --flavor staging -t lib/main_staging.dart

build_apk_prod: ## Runs the mobile application in prod
	@flutter clean
	@flutter pub get
	@flutter build apk --release

build: ## Runs and fetches all the freezed package
	@flutter pub run build_runner build --delete-conflicting-outputs

default_notification: ## Runs notification on Emulator for testing
	@xcrun simctl push booted com.synergyng.synergy pushes/push1.json

purge: ## Purges the Flutter 
	@pod deintegrate
	@flutter clean
	@flutter pub get

ios: ## Purges the IOS Folder and Fetches the Pod Files
	cd ios &&  arch -x86_64 pod install --repo-update
	cd ..
	@rm -rf pubspec.lock
	@flutter clean
	@flutter pub get

flavor_build: ## Builds the app for the flavor
	@echo "╠ Building the app for the flavor"
	@flutter build ios --flavor development -t lib/main_development.dart
	
deploy-android: ## Sends the Android build to Closed Testing
	@echo "╠ Sending Android Build to Closed Testing..."
	cd android/fastlane && bundle install --path vendor/bundle && bundle exec fastlane deploy

deploy-ios: ## Sends the iOS build to TestFlight
	@echo "╠ Sending iOS Build to TestFlight..." 
	cd ios/fastlane && bundle install --path vendor/bundle && bundle exec fastlane deploy

deploy: deploy-android deploy-ios
