# ClamAV
A container with the ClamAV 0.99.3 development build.

### Simple usage
```
docker build -t hal3002/clamav .
mv samples data/samples
mv rules data/rules
docker-compose -p clamav run --rm clamscan
ls -al data/results
```
