const Helloworld = artifacts.require("Helloworld");


contract("Helloworld", (accounts) => {
    it("constructor should set the message correctly", async () => {
        let instance = Helloworld.deployed();
        let message = await instance.message();
        assert.equal(message, "Hello constructor");
    })
})
