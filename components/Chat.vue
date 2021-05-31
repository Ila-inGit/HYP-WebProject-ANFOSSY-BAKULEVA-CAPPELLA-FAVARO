<template>
  <div class="chat">
    <div v-if="isOpen" class="chat-container">
      <div class="chat-box-header">
        ChatBot
        <span class="chat-box-toggle" @click="isOpen = !isOpen"
          ><img src="/close.webp" alt="close" style="height: 15px; width: 15px"
        /></span>
      </div>
      <div class="chat-bot-overlay"></div>
      <div id="chat-window" class="chat-window">
        <div
          v-for="(message, messageIndex) of chatList"
          :key="`message-${messageIndex}`"
          class="message"
          :class="{ sender: message.sender }"
        >
          <div class="message-content" :class="{ sender: message.sender }">
            {{ message.content }}
          </div>
        </div>
      </div>
      <div class="flex-box-chat">
        <input
          v-model="messageToSend"
          class="chat-input"
          type="text"
          placeholder="Send a message..."
          @keypress.enter="sendMessage"
        />
        <button class="chat-submit" @click="sendMessage">send</button>
      </div>
    </div>
    <div class="chat-button" @click="isOpen = !isOpen">
      <img src="https://img.icons8.com/ios-filled/452/chat--v1.png" alt="" />
    </div>
  </div>
</template>

<script>
export default {
  props: {
    chatList: {
      type: Array,
      required: true,
    },
  },
  data() {
    return {
      messageToSend: '',
      isOpen: false,
    }
  },
  methods: {
    sendMessage() {
      if (this.messageToSend !== '') {
        const { WebSocketEventBus } = require('mmcc/WebSocketEventBus')
        this.$store.commit('addMessage', {
          sender: false,
          content: this.messageToSend,
        })
        const packet = {
          message: { type: 'data', payload: { data: this.messageToSend } },
          configurationId: process.env.configurationId,
        }
        WebSocketEventBus.$emit('send', packet)
        this.messageToSend = ''
      }
    },
  },
  metaInfo: {
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
    ],
  },
}
</script>

<style>
.chat-button {
  height: 40px;
  width: 40px;
  background-color: white;
  box-shadow: 0px 3px 16px 0px rgba(0, 0, 0, 0.6),
    0 3px 1px -2px rgba(0, 0, 0, 0.2), 0 1px 5px 0 rgba(0, 0, 0, 0.12);
  border-radius: 100%;
  padding: 10px;
  position: fixed;
  cursor: pointer;
  bottom: 10px;
  right: 5px;
  z-index: 1;
}
.chat-button img {
  width: 100%;
}

.chat-overlay {
  background: rgba(255, 255, 255, 0.1);
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  border-radius: 50%;
  display: none;
}
.chat-container {
  background: #efefef;
  position: fixed;
  right: 35px;
  bottom: 75px;
  width: 350px;
  max-width: 85vw;
  max-height: 100vh;
  border-radius: 5px;
  box-shadow: 0px 1px 2px 1px #ccc;
  display: flex;
  flex-direction: column;
  z-index: 30;
}
.flex-box-chat {
  display: flex;
  justify-content: flex-start;
  flex-direction: row;
  align-content: flex-start;
  align-items: center;
  width: -webkit-fill-available;
}
@media screen and (max-width: 600px) {
  .chat-container {
    width: 70vw;
  }
}
.chat-window {
  /* to have a simple autoscroll of the chat */
  overflow: auto;
  transform: rotate(180deg);
  direction: rtl;
  max-height: 450px;
  min-height: 200px;
  width: -webkit-fill-available;
  border: 1px solid #ccc;
}

.chat-window::-webkit-scrollbar {
  width: 5px;
  background-color: #f5f5f5;
}
.chat-window::-webkit-scrollbar-thumb {
  background-color: #008cba;
}

.chat-window::-webkit-scrollbar-track {
  box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
  background-color: #f5f5f5;
}
.chat-box-toggle {
  float: right;
  margin-right: 15px;
  cursor: pointer;
}
.chat-box-header {
  background: #008cba;
  height: 5%;
  border-top-left-radius: 5px;
  border-top-right-radius: 5px;
  color: white;
  text-align: center;
  font-size: 20px;
  padding: 3%;
  width: -webkit-fill-available;
}
.message {
  width: calc(100% - 8px);
  display: flex;
  justify-content: flex-end;
  /* to have a simple autoscroll of the chat */
  transform: rotate(180deg);
  direction: ltr;
}
.message.sender {
  justify-content: flex-start;
}
.message-content {
  padding: 1% 2% 2% 2%;
  background: #008cba;
  color: white;
  max-width: 75%;
  float: left;
  margin-left: 10px;
  position: relative;
  margin-bottom: 20px;
  border-radius: 30px;
}
.message-content.sender {
  background: white;
  color: black;
  max-width: 75%;
  float: left;
  margin-left: 10px;
  position: relative;
  margin-bottom: 20px;
  border-radius: 30px;
}
.chat-input {
  background: #f4f7f9;
  width: 90%;
  position: relative;
  height: 30px;
  padding-top: 10px;
  padding-right: 50px;
  padding-bottom: 10px;
  padding-left: 15px;
  border: none;
  resize: none;
  outline: none;
  border: 1px solid #ccc;
  color: black;
  border-top: none;
  border-bottom-right-radius: 5px;
  border-bottom-left-radius: 5px;
  overflow: hidden;
}
.chat-input > form {
  margin-bottom: 0;
}
.chat-input::-webkit-input-placeholder {
  color: #ccc;
}
.chat-submit {
  height: 100%;
  background-color: rgb(80, 80, 80);
  box-shadow: none;
  cursor: pointer;
  border: none;
  border-radius: 10px;
  color: white;
  padding: 3%;
}
.chat-submit:hover {
  background-color: #008cba;
}
</style>
