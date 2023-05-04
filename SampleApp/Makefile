sync:
	(cd ../ && rm adobe-react-native-aepassurance-2.0.1.tgz || true)
	(cd ../ && npm pack)
	(rm -r node_modules/@adobe/react-native-aepassurance || true)
	(rm package-lock.json || true)
	(npm cache clean --force && npm update && npm install)