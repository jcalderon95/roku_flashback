// import the login component first (actually all components here, but we're starting with login)
import LoginComponent from "./components/LoginComponent.js";
import AllUsersComponent from "./components/AllUsersComponent.js";
import UserHomeComponent from './components/UserHomeComponent.js';
import EditUsers from './components/EditUsers.js';



(() => {
  const routes = [
      { path: '/', redirect: { name: "login" } },
      { path: '/login', name: "login", component: LoginComponent },
      { path: '/users', name: "users", component: AllUsersComponent },
      { path: '/userhome', name: "home", component: UserHomeComponent, props: true },
      { path: '/edit-users', name: "editUsers", component: EditUsers }

  ]

const router = new VueRouter({
    // mode: "history",
    routes
})



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
      },
      
      checkAdmin(){
        // console.log(this.user.admin);
        // console.log('fired');
        if(this.user.admin == 1){
          this.administrator = true;
        }else{
          this.administrator = false;
        }
      },


    },

    created: function(){
      // check for a user in local storage
      // if we've logged in before this will be here until we manually remove it

      if(localStorage.getItem("cachedUser")) {
        let user = JSON.parse(localStorage.getItem("cachedUser"));
        this.authenticated = true;
        // console.log(user);
        this.user = user;
        
        this.$router.push({ name: 'home', params: { currentuser: user }});
      }else{
        this.$router.push({ name: "login" }).catch(err => { });
      } 

  },

  updated () {

    this.checkAdmin();

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