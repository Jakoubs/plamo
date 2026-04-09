<script setup lang="ts">
  import {ref} from "vue";
  import {ElInput, ElButton} from "element-plus";

  const num1 = ref();
  const num2 = ref();
  const num3 = ref();
  const num4 = ref();

  const input1Ref = ref<any>(null)
  const input2Ref = ref<any>(null)
  const input3Ref = ref<any>(null)
  const input4Ref = ref<any>(null)

  function handleInput(val: string, inputRefLeft: any, inputRefRight: any = null) {
    if(val.length > 0){
      inputRefRight.focus()
    } else {
      inputRefLeft.focus()
    }
  }
</script>

<template>
  <div class="enter-code">
  <div class="input-container">
    <el-input @input="(val) => handleInput(val, null, input2Ref)" ref="input1Ref"  maxlength="1" v-model="num1" class="input-number"/>
    <el-input @input="(val) => handleInput(val,input1Ref, input3Ref)" ref="input2Ref" maxlength="1" v-model="num2" class="input-number"/>
    <el-input @input="(val) => handleInput(val,input2Ref, input4Ref)" ref="input3Ref" maxlength="1" v-model="num3" class="input-number"/>
    <el-input @input="(val) => handleInput(val,input3Ref, null)" ref="input4Ref" maxlength="1" v-model="num4" class="input-number" />
  </div>
    <div>
    <el-button type="primary" @click="$router.push('/plants')">enter</el-button>
    <el-button>resend code</el-button>
    </div>
  </div>
</template>

<style scoped>
  .input-container{
    margin: 20px;
    display: flex;
    gap: 10px;
  }
  .input-number{
    width: 50px;
    height: 50px;
    font-size: 30px;
  }
  .enter-code{
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: 50vh;
  }
</style>