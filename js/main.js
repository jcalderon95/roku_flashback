// import the login component first (actually all components here, but we're starting with login)
import router from "./components/Router.js";


(() => {


  const vm = new Vue({

    data: {
      authenticated: false,
      administrator: false,


      user: [],

    },

    methods: {
      setAuthenticated(status, data) {
        this.authenticated = status;
        this.user = data;
      },

      logout() {
        // push user back to login page
        this.$router.push({ name: "login" });
        this.authenticated = false;

        if(localStorage.getItem("cachedUser")) {
          localStorage.removeItem("cachedUser");
        }

        if(localStorage.getItem("cachedVideo")){
          localStorage.removeItem("cachedVideo");
        }
      }

    },
    
    created: function(){
      // check for a user in local storage
      // if we've logged in before this will be here until we manually remove it

      if(localStorage.getItem("cachedUser")) {
        let user = JSON.parse(localStorage.getItem("cachedUser"));

        this.authenticated = true;
        this.user = user;

        // console.log(user.permissions);
        
        // this.$router.push({ name: "users"})
      }else{
        this.$router.push({ name: "login" }).catch(err => { });
      }
      
      // console.log(this.user.permissions);
      if (this.user.permissions === 1 || this.user.permissions === "1") {
        console.log("kid");
        this.$router.push({ name: "kids" })
      }  else if (this.user.permissions > 1 || this.user.permissions > "1") {
        console.log("adult");
        this.$router.push({ name: "adults" })
      }
  },


    router: router
  }).$mount("#app");

  router.beforeEach((to, from, next) => {
    // console.log('router guard fired!', to, from, vm.authenticated);

    if (vm.authenticated == false) {
      next("/login");
    } else {
      next();
    }
  });

})();