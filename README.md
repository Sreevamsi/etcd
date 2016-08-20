# etcd Cookbook

Installs etcd.

### Platforms
ubuntu-14.04

### Chef

- Chef 12.0 or later

### Cookbooks
ark 1.1.0

## Usage

### etcd::default

Just include `etcd` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[etcd]"
  ]
}
```

## Contributing


e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

## License and Authors

Authors: TODO: List authors
Sreevamsi Yandrapu
