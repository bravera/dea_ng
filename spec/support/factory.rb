# coding: UTF-8

module Helpers
  def valid_service_attributes
    {
      "name"        => "name",
      "type"        => "type",
      "label"       => "label",
      "vendor"      => "vendor",
      "version"     => "version",
      "tags"        => ["tag1", "tag2"],
      "plan"        => "plan",
      "plan_option" => "plan_option",
      "credentials" => { "user" => "password" },
    }
  end

  def valid_instance_attributes
    {
      "cc_partition"        => "partition",

      "instance_id"         => VCAP.secure_uuid,
      "instance_index"      => 37,

      "application_id"      => "37",
      "application_version" => "some_version",
      "application_name"    => "my_application",
      "application_uris"    => ["foo.com", "bar.com"],

      "droplet_sha1"        => "deadbeef",
      "droplet_uri"         => "http://foo.com/file.ext",

      "runtime_name"        => "ruby19",
      "runtime_info"        => { "foo" => "bar" },
      "framework_name"      => "rails",

      "limits"              => { "mem" => 1, "disk" => 2, "fds" => 3 },
      "environment"         => { "FOO" => "BAR" },
      "services"            => [valid_service_attributes],
      "flapping"            => false,
    }
  end

  def valid_staging_attributes
    {
      "properties" => {
        "runtime" => "ruby",
        "runtime_info" => {},
        "framework_info" => {
          "name" => "sinatra"
        },
        "services" => [],
        "resources" => { "memory" => 1, "disk" => 1, "fds" => 1 }
      },
      "download_uri" => "http://127.0.0.1:12346/download",
      "upload_uri" => "http://127.0.0.1:12346/upload",
      "staged_path" => ""
    }
  end
end
