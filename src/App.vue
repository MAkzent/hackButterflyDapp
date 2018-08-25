<template>
  <div id="app">
    <v-app>
      <v-content>
      <v-container>
        <v-layout row wrap>
          <v-flex xs12 md4>
            <div class="text-xs-center logo__container">
              <p class="butterflyLogo">🦋</p>
              <p class="textTitle font-weight-medium"> Hack Butterfly </p>
              <p class="subTitle font-weight-light">The Decentralized Coding School</p>
            </div>
          </v-flex>
          <v-flex xs12 md6 offset-md1>
            <Enroll />
            <CurrentStudents/>
          </v-flex>
        </v-layout>
      </v-container>
      </v-content>
    </v-app>
  </div>
</template>

<script>
import CurrentStudents from './components/CurrentStudents.vue';
import Enroll from './components/Enroll.vue';

export default {
  name: 'app',
  components: {
    CurrentStudents,
    Enroll
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
}

.logo__container {
  position: fixed;
  top: 25%;
}

.butterflyLogo {
  font-size: 80px;
  margin: 0;
}

.textTitle {
  font-size: 50px;
  margin-bottom: 0;
}

.subTitle {
  font-size: 16px;
  margin-top: -5px;
}
</style>
