(() => {
  
    console.log('fired');

    // let router = new VueRouter({
    //     // set routes
    //     routes: [
    //       { path: '/', redirect: { name: "login" } },
    //       { path: '/login', name: "login", component: LoginComponent}
    //     ]
    //   });

    const vm = new Vue({

        // data: {
        //   authenticated: false,
        //   administrator: false,
    
        //   mockAccount: {
        //     username: "user",
        //     password: "password"
        //   },
    
        //   user: [],
    
        //   //currentUser: {},
        // },
    
        // created: function () {
        //   // do a localstorage session check and set authenticated to true if the session still exists
        //   // if the cached user exists, then just navigate to their user home page
    
        //   // the localstorage session will persist until logout
        // },
    
        // methods: {
        //   setAuthenticated(status, data) {
        //     this.authenticated = status;
        //     //  handle implicit type coercion (bad, part of JS)
        //     // turn our admin 1 or 0 back into a number
        //     this.administrator = parseInt(data.isadmin);
        //     this.user = data;
        //   },
    
        //   logout() {
        //     // delete local session
    
        //     // push user back to login page
        //     this.$router.push({ path: "/login" });
        //     this.authenticated = false;
        //     this.administrator = false;
        //   }
        // },
    

      }).$mount("#app");
   
  })();