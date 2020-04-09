export default {
    name: "UserHome",
    
    props: ['currentuser'],

    template: `
    <div class="container">
        <pre>{{ currentuser }}</pre>
        <h1>Hello, {{ currentuser.userfname }}</h1>
    </div>
    `,
    
    data() {
		return {

            permission: ""
		}
	},

    created: function(){
        // this.checkPermission();
        // if(localStorage.getItem("cachedUser")){
        //     let user = JSON.parse(localStorage.getItem("cachedUser"));
        //     this.currentuser = user;
        // }
    },

    methods: {

        checkPermission(){
            // console.log('fired', this.permission);
            if(this.currentuser.permissions == 1){
                console.log("kid");
            }

            if(this.currentuser.permissions == 2){
                console.log("teenager");
            }

            if(this.currentuser.permissions == 3){
                console.log("adult");
            }
        }
    }
}