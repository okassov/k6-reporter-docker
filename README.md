# k6-reporter

## How to use image for generate report
```
docker run --rm -v /your_path/:/report -t okassov/k6-reporter:1.1.0 \
    /usr/bin/k6-reporter \
    /report/report.json \
    /report/report.html
```

or use Gitlab CI Environment Variables

**.gitlab-ci.yaml**
```
load-testing-k6:
    stage: testing
    variables:
        K6_FOLDER: /path/to/artifact_json_folder
        K6_CONTAINER_FOLDER: /path/into/container 
    script:
        - docker run --rm -v $K6_FOLDER/:$K6_CONTAINER_FOLDER -t okassov/k6-reporter:1.1.0
            /usr/bin/k6-reporter $K6_CONTAINER_FOLDER/report.json $K6_CONTAINER_FOLDER/report.html
```
