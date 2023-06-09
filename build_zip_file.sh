#declare -a package_name=("retrive_s3_details" "abc")
echo 123

ls
pwd

echo "removing the build folder"
rm -rf build

# Installing packages required
pip install -r requirements.txt -t build

## adding the zip file
cd build
zip -r ../retrive_s3_details.zip .

## adding lambda function
cd ../retrive_s3_details
zip -r ../retrive_s3_details.zip lambda_function.py

## checking the contents of zip file
cd ..
unzip -t retrive_s3_details.zip
