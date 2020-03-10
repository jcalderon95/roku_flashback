export default {
    template: `
    <div id="loginCon">
        <div id="login">
        <h2>Sign In</h2>
            <form>
                <label for="">Username</label>
                <input type="text" name="username" id="" placeholder="Username" required>

                <label for="">Password</label>
                <input type="text" name="password" id="" placeholder="Passoword" required>

                <button type="submit" class="submitButton">SIGN IN</button>
            </form>
        </div>
    </div>
    `,

    data() {
        return {
            input: {
                username: "",
                password: ""
            },

        }
    }
}