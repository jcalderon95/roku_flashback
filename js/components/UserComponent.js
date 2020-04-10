export default {
    name: "User",

    props: ['liveuser'],

    template: `

        <div @click="navToUserHome()">
                <img :src="'images/users/' + liveuser.avatar" class="rounded-circle img-fluid">
                <p>{{ liveuser.userfname }}</p>
        </div>
        `,

    created: function() {
        // if (this.liveuser.avatar === null || this.liveuser.avatar === "null") {
        //     this.liveuser.avatar = "temp_avatar";
        // }
    },

    methods: {
        navToUserHome() {
            // debugger;

            if (this.liveuser.permissions === 1 || this.liveuser.permissions === "1") {
                console.log("kid");
                this.$router.push({ name: "kids" })
            }  else if (this.liveuser.permissions > 1 || this.liveuser.permissions > "1") {
                console.log("adult");
                this.$router.push({ name: "adults" })
            }
            
            localStorage.setItem("cachedUser", JSON.stringify(this.liveuser));

            // // send this user to its home page, and pass the user object to the home page
            // this.$router.push({ name: "home", params: { currentuser: this.liveuser }})
        }
    }

}