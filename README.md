# Vagrant with Nginx
Development box using vagrant based on Ubuntu Precise with Nginx

## Dependencies
* [Ruby](https://www.ruby-lang.org/)
* [Vagrant](http://http://www.vagrantup.com/)
* Vagrant Plugins
    * Vagrant vbguest
    * Vagrant hostmanager

* [Berkshelf](http://berkshelf.com/)
* [Chef](http://www.getchef.com/chef/install/)

## Install Vagrant Providers

* [Berkshelf](http://berkshelf.com/)
* [Chef](http://www.getchef.com/chef/install/)

## Install Vagrant Plugins

```
vagrant plugin install vagrant-vbguest
```

```
vagrant plugin install vagrant-hostmanager
```

```
vagrant plugin install vagrant-omnibus
```

```
vagrant plugin install vagrant-berkshelf
```


## Install Berkshelf Cookbooks

```
berks
```


## Use

```
vagrant up
```


## License

[MIT License](http://llaraujo.mit-license.org/) © Leonardo Lima Araujo
