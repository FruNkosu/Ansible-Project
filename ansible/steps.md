install java 17
- update apt repo
- install packages java 17

shell scripting:
ubuntu
- apt update
- apt install wget, openjdk-17-jdk -y

centos:
- yum update
- chmod +x java_script.sh
- ./java_script.sh

process:
- copy script from local to remote server
- ensuring that the script has the right permissions
- excute the script.
- delete the script


JAVA_HOME_CENTOS=/usr/lib/jvm/jdk-17-oracle-x64
JAVA_HOME_UBUNTU=/usr/lib/jvm/java-17-openjdk-amd64

    # - name: Set JAVA_HOME for Centos
    #   shell: |
    #     cat <<'EOF'>> /etc/profile

    #     export JAVA_HOME=/usr/lib/jvm/jdk-17-oracle-x64
    #     export PATH=$JAVA_HOME/bin:$PATH
    #     EOF
    #     source /etc/profile
    #   when: ansible_distribution == 'CentOS'

    # - name: Set JAVA_HOME for Ubuntu
    #   shell: |
    #     cat <<'EOF'>> /etc/profile

    #     export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
    #     export PATH=$JAVA_HOME/bin:$PATH
    #     EOF
    #     source /etc/profile
    #   when: ansible_distribution == 'Ubuntu'


        - name: show /etc/profile
      shell: |
        tail /etc/profile
        echo $JAVA_HOME
      register: result
    - debug: msg={{result}}