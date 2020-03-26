locals {
  someMap = {
    key1 = "foo value"
    key2 = "another value"
  }
}

data "template_file" "list-items" {
  template = "${file("templates/list-item.tpl")}"
  count = "${length(local.someMap)}"
  vars {
    key = "${element(keys(local.someMap), count.index)}"
    value = "${element(values(local.someMap), count.index)}"
  }
}

data "template_file" "list" {
  template = "${file("templates/list.tpl")}"
  vars {
    listItems = "${join(",", data.template_file.list-items.*.rendered)}"
  }
}


output "list" {
  value = "${join(",\n", data.template_file.list-items.*.rendered)}"
}