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

    },

    methods: {
        navToUserHome() {

            if (this.liveuser.permissions === 1 || this.liveuser.permissions === "1") {
                this.$router.push({ name: "kids" })
            }  else if (this.liveuser.permissions > 1 || this.liveuser.permissions > "1") {
                this.$router.push({ name: "adults" })
            }
            
            localStorage.setItem("cachedUser", JSON.stringify(this.liveuser));
            this.$emit("shownav", true);
        }
    }

}