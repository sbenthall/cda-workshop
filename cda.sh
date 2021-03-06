# This script assumes the python packages and libraries installed in BCE-0.1
# However, we avoid using the more straightforward approach using the ubuntu
# package for pydot (which avoids the pyparsing issue), this way we document the
# issue for other platforms

mkdir communications-data-analysis
cd communications-data-analysis
wget https://launchpad.net/gephi/0.8/0.8.2beta/+download/gephi-0.8.2-beta.tar.gz
tar -xzf gephi-0.8.2-beta.tar.gz

apt-get install -y graphviz

# For some reason, it's been over a year since the default install of pyparsing
# worked for pydot

pip install -Iv https://pypi.python.org/packages/source/p/pyparsing/pyparsing-1.5.7.tar.gz#md5=9be0fcdcc595199c646ab317c1d9a709

git clone https://github.com/sbenthall/poll.emic.git
cd poll.emic
python setup.py develop
wget https://raw.githubusercontent.com/sbenthall/cda-workshop/master/config.cfg
wget https://raw.githubusercontent.com/sbenthall/cda-workshop/master/mentionball-@DLabAtBerkeley.gexf
wget https://raw.githubusercontent.com/sbenthall/cda-workshop/master/mentionball-@sbenthall~berkeley-data-science-3.gexf
wget https://raw.githubusercontent.com/sbenthall/cda-workshop/master/mentionball-@sbenthall~indian-politics.gexf
cd ..

git clone https://github.com/sbenthall/bigbang.git
cd bigbang
pip install -r requirements.txt
python setup.py develop
cd ..

cd ..
