// Store for the chatbot

import Vue from 'vue'

export const state = () => {
  return {
    messages: [],
  }
}

export const mutations = {
  addMessage(state, message) {
    const messages = state.messages
    // messages.push(message)

    // append at the beginning of the chat to have a simple auto scroll
    messages.unshift(message)
    Vue.set(state, 'messages', messages)
  },
}
