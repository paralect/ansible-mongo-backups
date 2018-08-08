# Ansible Mongo Backups

[![Stack](https://raw.githubusercontent.com/paralect/stack/master/stack-component-template/stack.png)](https://github.com/paralect/stack)

[![All Contributors](https://img.shields.io/badge/all_contributors-2-orange.svg?style=flat-square)](#contributors)
[![Ansible Galaxy](https://img.shields.io/badge/ansible--galaxy-mongo-backups-blue.svg?style=flat-square)](https://galaxy.ansible.com/paralect/mongo-backups)
[![license](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square)](https://github.com/paralect/ansible-mongo/blob/master/LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)


[![Watch on GitHub](https://img.shields.io/github/watchers/paralect/ansible-mongo-backups.svg?style=social&label=Watch)](https://github.com/paralect/ansible-mongo-backups/watchers)
[![Star on GitHub](https://img.shields.io/github/stars/paralect/ansible-mongo-backups.svg?style=social&label=Stars)](https://github.com/paralect/ansible-mongo-backups/stargazers)
[![Follow](https://img.shields.io/twitter/follow/paralect.svg?style=social&label=Follow)](https://twitter.com/paralect)
[![Tweet](https://img.shields.io/twitter/url/https/github.com/paralect/ansible-mongo-backups.svg?style=social)](https://twitter.com/intent/tweet?text=I%27m%20using%20Stack%20components%20to%20build%20my%20next%20product%20🚀.%20Check%20it%20out:%20https://github.com/paralect/ansible-mongo-backups)

An ansible role for creating and uploading [mongoDB](https://www.mongodb.com/) backups.

## Role Variables

Available variables:

|Name|Default|Description|
|:--:|:--:|:----------|
|**`object_storage_type`**|`aws`|Define the type of the object storage that is used for storing backups. Available values: `aws`, `gc`, `filesystem`.|
|**`bucket`**|`""`|Bucket (aws or google cloud bucket) or path to the directory if use `filesystem` for storing backups.|
|**`aws_access_key`**|`""`|AWS access key|
|**`aws_secret_key`**|`""`|AWS secret key|
|**`aws_access_token`**|`""`|AWS access token|
|**`gs_access_key_id`**|`""`|Google cloud access key|
|**`gs_secret_key`**|`""`|Google cloud secret key|
|**`gs_project_id`**|`""`|Google cloud project id|

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }


## Change Log

This project adheres to [Semantic Versioning](http://semver.org/).
Every release is documented on the Github [Releases](https://github.com/paralect/ansible-mongo-backups/releases) page.

## License

Ansible-mongo-backups is released under the [MIT License](https://github.com/paralect/ansible-mongo-backups/blob/master/LICENSE).

## Contributing

Please read [CONTRIBUTING.md](https://github.com/paralect/ansible-mongo-backups/blob/master/CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Contributors

Thanks goes to these wonderful people ([emoji key](https://github.com/kentcdodds/all-contributors#emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore -->
| [<img src="https://avatars1.githubusercontent.com/u/11842784?v=4" width="100px;"/><br /><sub><b>Anastasia Kostyukova</b></sub>](https://github.com/nastya-kostyukova)<br />[💻](https://github.com/paralect/ansible-mogo-backups/commits?author=nastya-kostyukova "Code") | [<img src="https://avatars2.githubusercontent.com/u/6461311?v=4" width="100px;"/><br /><sub><b>Evgeny Zhivitsa</b></sub>](https://github.com/ezhivitsa)<br />[📖](https://github.com/paralect/ansible-mogo-backups/commits?author=ezhivitsa "Documentation") |
| :---: | :---: |
<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/kentcdodds/all-contributors) specification. Contributions of any kind welcome!
