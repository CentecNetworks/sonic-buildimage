#!/usr/bin/env python

import setuptools

setuptools.setup(name='sonic-bgpcfgd',
      version='1.0',
      description='Utility to dynamically generate BGP configuration for FRR',
      author='Pavel Shirshov',
      author_email='pavelsh@microsoft.com',
      url='https://github.com/Azure/sonic-buildimage',
      packages=setuptools.find_packages(),
      entry_points={
          'console_scripts': [
              'bgpcfgd = bgpcfgd.main:main',
              'bgpmon = bgpmon.bgpmon:main',
          ]
      },
      install_requires=['jinja2>=2.10', 'netaddr', 'pyyaml'],
      setup_requires=['pytest-runner'],
      tests_require=['pytest', 'pytest-cov'],
)
