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
      }

    },

    router: router
  }).$mount("#app");

  router.beforeEach((to, from, next) => {
    console.log('router guard fired!', to, from, vm.authenticated);

    if (vm.authenticated == false) {
      next("/login");
    } else {
      next();
    }
  });

})();