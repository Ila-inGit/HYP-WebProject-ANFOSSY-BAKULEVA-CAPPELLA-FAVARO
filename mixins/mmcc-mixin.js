export default {
  data() {
    const list = []
    const configurationId = process.env.configurationId
    return { list, configurationId }
  },
  watch: {
    '$store.state.messages'() {
      this.list = this.$store.state.messages
    },
  },
  mounted() {
    const { WebSocketEventBus } = require('mmcc/WebSocketEventBus')
    // Connection config
    const data = {
      configurationId: process.env.configurationId,
      interaction: localStorage.getItem('mmcc-interaction') || null,
    }
    // The interaction variable allows the communication to survive in case of interruption, at different levels of persistence.
    // It is sent from the backend in the first message of communication.
    // You can use it as you want! localStorage is the most persistent, to start new chat need to implement localStorage.clear()
    // You can save on data(), on sessionStorage or localStorage

    // Emitting the connect event to initialize the communication
    WebSocketEventBus.$emit('connect', data)

    // Adding the default event listener for messages
    WebSocketEventBus.onMessage((message) => {
      if (message.utterance) {
        this.$store.commit('addMessage', {
          sender: true,
          content: message.utterance,
        })
      }
      if (message.payload) {
        if (message.payload.guide) {
          this.$router.push(message.payload.guide)
        }
      }
    })
  },
}
