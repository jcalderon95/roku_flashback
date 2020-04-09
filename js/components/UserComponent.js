export default {
    name: "userComponent",

    props: ['liveuser'],

    template: `
            <div class="user"  @click="navToUserHome()">
                <img :src="'images/users/' + liveuser.avatar " >
                <p>{{ liveuser.userfname }}</p>
            </div>

        `,

    created: function() {
        if (this.liveuser.avatar === null || this.liveuser.avatar === "null") {
            this.liveuser.avatar = "temp_avatar";
        }
    },

    methods: {
        navToUserHome() {
            // debugger;
            localStorage.setItem("cachedUser", JSON.stringify(this.liveuser));
            
            // send this user to its home page, and pass the user object to the home page
            this.$router.push({ name: "home", params: { currentuser: this.liveuser }});
            
        }
    }

}