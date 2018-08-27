<template>
  <div>
          <v-layout row wrap>
            <v-flex xs12 md6>
              <div class="students__wrapper">
              <v-card>
                <v-card-title class="title justify-center light-green lighten-2 ">
                  🐛 Students 🐛
                </v-card-title>
                <v-card-text>
                  <div class="students" v-for="student in this.students" v-bind:key="student.id">
                      <div class="singleStudent">
                      <strong>{{student.firstName}} {{student.secondName}}</strong> <br>
                      </div>
                  </div>
                </v-card-text>
              </v-card>
              </div>
              </v-flex>
              <v-flex xs12 md6>
                <div class="alumni__wrapper">
                <v-card>
                  <v-card-title class="title justify-center orange lighten-2">
                    🦋 Alumni 🦋
                  </v-card-title>
                  <v-card-text>
                    <div class="students" v-for="student in this.alumni" v-bind:key="student.id">
                        <div class="singleStudent">
                        <strong>{{student.firstName}} {{student.secondName}}</strong> <br>
                        </div>
                    </div>
                  </v-card-text>
                </v-card>
                </div>
            </v-flex>
        </v-layout>
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
    // get address from user
    this.fromAddress = await web3.eth.getCoinbase() 

    // get balance from user
    this.balance = await web3.eth.getBalance(this.fromAddress) / 1000000000000000000;

    // create contract instance with ABI, address. 
    // set gasPrice and default fromAddress
    this.hackButterflyContract = new web3.eth.Contract(ABI, contractAddress, {gasPrice: '5000000000', from: this.fromAddress});
    await this.getAllStudents();
  },
  data: () => ({
    fromAddress: "",
    balance: 0,
    hackButterflyContract: {},
    students: [],
    alumni: [],
  }),
  methods: {
    async getAllStudents() {
      const totalStudents = await this.hackButterflyContract.methods.getTotalStudents().call();
      for (let i = 0; i < totalStudents; i++) {
        const student = await this.getStudent(i);
        student = {
          id: i,
          age: student[0],
          firstName: student[1],
          secondName: student[2],
          status: student[3],
        }
        if (student.status === "Enrolled") {
          this.students.push(student);
        } else if (student.status === "Graduated") {
          this.alumni.push(student);
        }
      }
      return
    },
    async getStudent(id) {
      const student = await this.hackButterflyContract.methods.studentAccounts(id).call();
      return student;
    },
  }
}
</script>

<style>
.students {
  text-align: left;
}

.students__wrapper {
  margin: 5px 5px 0 0;
}

.alumni__wrapper {
  margin: 5px 0 0 5px;
}
</style>
