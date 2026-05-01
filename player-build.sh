cp -r version/assets/webview/* .
mv workspace.html index.html
rm assets/workspace.bundle.79d6432e01ccdecb492a.js
rm -rf classes_smali
rm -rf classes2_smali
rm -rf classes3_smali
mkdir player
mv ./* player
mv player/website/* .