import hudson.model.*

class ApacheConf {
  static void main(String[] args) {}
  static conf() {
    [
        "mainjob":
         [
            "email":"diego.pacheco.it@gmail.com"
         ]
    ]
  }
}

ApacheConf.conf().each { groupname, app ->

  freeStyleJob("JenkinsDSLJob") {
    properties {

        label("master")

        def emailAdd = '$BUILD_USER_EMAIL ' + app.dev_email

        publishers {
          mailer(emailAdd, false, true)
        }

        parameters {
          stringParam("APACHE_VERSION", "2.4.18", "Apache Version")
        }

        def item = hudson.model.Hudson.instance.getItem('JenkinsDSLJob')
        def value = item.lastBuild.getEnvironment(null).get('APACHE_VERSION')

        steps {
          shell("sudo chmod 777 build_install_apache.sh && sudo ./build_install_apache.sh " + value)
        }
    }
  }
}