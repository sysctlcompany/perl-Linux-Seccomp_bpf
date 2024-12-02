#!/bin/bash
cd /k/rpm
dnf install -y rpm-build perl-Test-Simple libseccomp libseccomp-devel perl-ExtUtils-MakeMaker perl-ph
mkdir -p $PWD/rpm/BUILD
cp -r ../* rpm/BUILD/
rpmbuild -v -bb \
        --define "_topdir $PWD/rpm" \
	--define "-srcdir .." \
        perl-Linux-Seccomp_bpf.spec
mv rpm/RPMS/x86_64/perl-Linux-Seccomp-*.x86_64.rpm .
rm -rf rpm 
