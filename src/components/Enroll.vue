<template>
  <div class="enroll">
    <v-card>
      <v-card-title class="title justify-center light-blue darken-3" style="color: white;" >
        Become a Full-Stack Engineer
      </v-card-title>
        <v-container>
          <v-layout row wrap>
            <v-flex xs12 md3>
              <img src="../assets/web3.png" width="auto" height="80px">
            </v-flex>
            <v-flex xs12 md3>
              <img src="../assets/solidity.svg" width="auto" height="80px">
            </v-flex>
            <v-flex xs12 md3>
              <img src="../assets/vue.png" width="auto" height="80px" style="padding: 10px">
            </v-flex>
            <v-flex xs12 md3>
              <img src="../assets/node.png" width="auto" height="80px">
            </v-flex>
          </v-layout>
        </v-container>
      <v-card-text class="body-2 description"> 
        Our decentralized, 12-week course will challenge you like you have never been challenged before. Turn your <strong> 5 ETH </strong> into an engineering career.  👨‍💻
        <div class="balance">
          <strong>Your Address:</strong> {{this.fromAddress}} <br>
          <strong>Your Balance:</strong> {{Math.round(this.balance * 100) / 100 }} ETH
        </div>
        <v-form class="form" >
          <v-text-field v-model="getFirstName" label="First Name" required color="light-blue darken-3" ></v-text-field>
          <v-text-field v-model="getLastName" label="Last Name" required color="light-blue darken-3"></v-text-field>
          <v-text-field v-model="getAge" label="Age" required color="light-blue darken-3"></v-text-field>
          <v-checkbox v-model="toggleChecked" color="light-blue darken-3" label="I've double-checked my information and they are correct."></v-checkbox>
        </v-form>
          <v-btn block color="light-blue darken-3" dark @click="enroll">Purchase Access</v-btn>
      </v-card-text>
    </v-card>
  </div>
</template>

<script>
import Web3 from "web3";
import ABI from "../utils/abi";
import contractAddress from "../utils/contractAddress";

if (typeof web3 !== 'undefined') {
  web3 = new Web3(web3.currentProvider);
} else {
  // set the provider you want from Web3.providers
  web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));
}

export default {
  async mounted() {
    this.fromAddress = await web3.eth.getCoinbase() 
    this.balance = await web3.eth.getBalance(this.fromAddress) / 1000000000000000000;
    this.hackButterflyContract = new web3.eth.Contract(ABI, contractAddress, {gasPrice: '5000000000', from: this.fromAddress});
  },
  data: () => ({
    firstName: "",
    lastName: "",
    age: "",
    checked: false,
    fromAddress: "",
    balance: 0,
  }),
  computed: {
    getFirstName: {
      get() {
        return this.firstName;
      },
      set(input) {
        this.firstName = input;
      }
    },
    getLastName: {
      get() {
        return this.lastName;
      },
      set(input) {
        this.lastName = input;
      }
    },
    getAge: {
      get() {
        return this.age;
      },
      set(input) {
        this.age = input;
      }
    },
    toggleChecked: {
      get() {
        return this.checked;
      },
      set(input) {
        this.checked = input;
      }
    }
  },
  methods: {
    async enroll() {
      if (this.checked) {
        await this.hackButterflyContract.methods.enrollStudent(this.age, this.firstName, this.lastName).send({value: 5000000000000000000});
      } else {
        alert("Please agree that all data is correct. ")
      }
    },

  }
}
</script>

<style>
.enroll {
  margin-bottom: 5px;
}

.form {
  margin-top: 25px;
}

.balance {
  margin-top: 20px;
}

.description {
  margin-top: -20px;
}
</style>
