{ lib, buildPythonApplication, fetchPypi, requests, six, pbr }:

buildPythonApplication rec {
  pname = "python-swiftclient";
  version = "3.6.0";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0sv6z72zdwzwdjng0djk3l2maryn9pz3khf69yq5ig2ycz8hh0qv";
  };

  propagatedBuildInputs = [ requests six pbr ];

  doCheck = false;

  meta = with lib; {
    homepage = https://github.com/openstack/python-swiftclient;
    description = "Python bindings to the OpenStack Object Storage API";
    license = licenses.apache;
    maintainers = with maintainers; [ c0deaddict ];
  };
}
