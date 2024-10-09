## AWS Amplify for Godot Engine - Custom Build Image

This project contains a docker file to create a custom build image for build and export Godot Engine games for all supported platforms.

## Wiki

The [wiki](https://github.com/aws-samples/amplify-godot-engine/wiki) contains everything you want to know about getting started with AWS Amplify with the Godot Engine.

## Discussions

If you have a question or you want to discuss with ther AWs Amplify for Godot Engine users go to the main [discussions](https://github.com/aws-samples/amplify-godot-engine/discussions) channel.

## Issues

If you have any issue with a custom build image [report a bug](https://github.com/aws-samples/amplify-godot-engine-custom-build-image/issues/new?assignees=&labels=&projects=&template=bug_report.md&title=) and if you need a new image or something else  [create a feature request](https://github.com/aws-samples/amplify-godot-engine-custom-build-image/issues/new?assignees=&labels=&projects=&template=feature_request.md&title=).

## Images

AWS Amplify Godot Engine Custom Build Images can be found on [AWS Amplify Godot Engine Elastic Container Registry (ECR)](https://gallery.ecr.aws/f7u9w0t1/amplify-godot-engine/)

### Latest

| Version | Tag | URI | 
| --- | --- | --- | 
| [4.3](https://godotengine.org/download/archive/4.3-stable) | ```amplify-godot-engine/4.3``` | ```public.ecr.aws/f7u9w0t1/amplify-godot-engine:4.3``` |

### Stable

| Version | Tag | URI |
| --- | --- | --- | 
| [4.2.2](https://godotengine.org/download/archive/4.2.2-stable) | ```amplify-godot-engine/4.2.2``` | ```public.ecr.aws/f7u9w0t1/amplify-godot-engine:4.2.2``` |
| [4.2.1](https://godotengine.org/download/archive/4.2.1-stable) | ```amplify-godot-engine/4.2.1``` | ```public.ecr.aws/f7u9w0t1/amplify-godot-engine:4.2.1``` |
| [4.2](https://godotengine.org/download/archive/4.2-stable) | ```amplify-godot-engine/4.2``` | ```public.ecr.aws/f7u9w0t1/amplify-godot-engine:4.2``` |

### Instructions

1. Update GODOT_ENGINE_VERSION in the buildspec.yml
    ```
    version: 0.2

    phases:
    pre_build:
        commands:
        - GODOT_IMAGE_NAME=amplify-godot-engine
        - GODOT_VERSION=4.3
        - echo Logging in to Amazon ECR...
        - aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws
    ...
    ```
2. Commit the new version of the buildspec.yml
    ```
    git add -A
    git commit -m "bump godot version to 4.3"
    ```
3. Create a new version branch. Do not create a branch for each Godot Engine patch version.
    ```
    git branch 4.4
    ```
4. Push the new branch to GitHub
    ```
    git push --set-upstream origin 4.3
    ```
5. Push the new branch to CodeCommit
    ```
    git push --set-upstream codecommit 4.3
    ```

## Security

See [CONTRIBUTING](CONTRIBUTING.md#security-issue-notifications) for more information.

## License

This library is licensed under the MIT-0 License. See the [LICENSE](LICENSE.md) file.

## Third Party Licenses

See [THIRD_PARTY_LICENSES](THIRD_PARTY_LICENSES.md) for more information.
