from distribute import setup, find_packages

setup(
		name="One Button Django Beanstalk",
		version="0.1",
		description ="Quickly deploy django to Amazon beanstalk",
		long_description = open('README.rst').read(),
		author = "The Jim Factor",
		url = "http://github.com/thejimfactor",
		license = "MIT",
		packages = find_packages(),
		include_package_data = True,
		zip_safe, False,
		)
