<template>
  <div class="register-container">
    <el-card>
      <template #header>Create a new account</template>
  <el-form :model="form" label-width="auto" style="max-width: 600px">
    <el-form-item   label="Username">
      <el-input placeholder="enter a username" v-model="form.name" />
    </el-form-item>

    <el-form-item label="password">
      <div style="display: flex; flex-direction: column; gap: 5px; width: 100%;">
        <el-input v-model="form.password" show-password placeholder="enter a Password" type="password" />
        <el-input
            v-model="form.passwordRepeat"
            show-password
            placeholder="repeat your password"
            type="password"
            :class="passwordsDoNotMatch ? 'is-invalid' : 'test'"
        />
      </div>
    </el-form-item>

    <el-form-item label="Avatar">
      <div class="avatar-container">
        <el-upload
            v-if="!imageUrl"
            class="avatar-uploader"
            action="#"
            :auto-upload="false"
            :show-file-list="false"
            :on-change="handleAvatarChange"
            :before-upload="beforeAvatarUpload"
        >
          <el-icon class="avatar-uploader-icon"><Plus /></el-icon>
        </el-upload>

        <div v-else class="avatar-preview">
          <img :src="imageUrl" class="avatar" alt="Avatar Preview" />
          <div class="avatar-overlay">
            <el-icon class="delete-icon" @click="removeAvatar"><Delete /></el-icon>
          </div>
        </div>
      </div>
    </el-form-item>

    <el-form-item>
      <el-button type="primary" @click="onSubmit" :disabled="passwordsDoNotMatch">Register</el-button>
      <el-button @click="$router.push('/')">
        Cancel
      <el-icon size="20px"><Close></Close></el-icon>
      </el-button>
    </el-form-item>
  </el-form>
    </el-card>
  </div>
</template>

<script lang="ts" setup>
import { computed, reactive, ref } from 'vue'
import {ElCard, ElIcon, ElButton, ElUpload, ElForm, ElFormItem, ElInput, ElMessage } from 'element-plus'
import {Close, Plus, Delete } from '@element-plus/icons-vue'
import type { UploadProps, UploadFile } from 'element-plus'

const imageUrl = ref('')
const selectedFile = ref<File | null>(null)

const form = reactive({
  name: '',
  password: '',
  passwordRepeat: '',
})

// Avatar Logik
const handleAvatarChange = (uploadFile: UploadFile) => {
  if (uploadFile.raw) {
    imageUrl.value = URL.createObjectURL(uploadFile.raw)
    selectedFile.value = uploadFile.raw
  }
}

const removeAvatar = () => {
  imageUrl.value = ''
  selectedFile.value = null
}

const beforeAvatarUpload: UploadProps['beforeUpload'] = (rawFile) => {
  const isJPG = rawFile.type === 'image/jpeg' || rawFile.type === 'image/png'
  if (!isJPG) {
    ElMessage.error('Avatar picture must be JPG or PNG format!')
    return false
  } else if (rawFile.size / 1024 / 1024 > 10) {
    ElMessage.error('Avatar picture size can not exceed 10MB!')
    return false
  }
  return true
}

const passwordsDoNotMatch = computed(() => {
  return form.passwordRepeat.length > 0 && form.password !== form.passwordRepeat
})

const onSubmit = () => {
  console.log('Submit payload:', { ...form, avatar: selectedFile.value })
  // Hier würdest du dein Java-Backend ansprechen (z.B. mit axios)
}
</script>

<style scoped>
.avatar-container {
  border: 2px dashed #d9d9d9;
  border-radius: 10px;
  width: 180px;
  height: 180px;
  display: flex;
  justify-content: center;
  align-items: center;
  overflow: hidden;
  position: relative;
}

.avatar-preview {
  width: 100%;
  height: 100%;
  position: relative;
}

.avatar {
  width: 180px;
  height: 180px;
  object-fit: cover;
  display: block;
}

/* Hover Effekt für das Löschen */
.avatar-overlay {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.5);
  display: flex;
  justify-content: center;
  align-items: center;
  opacity: 0;
  transition: opacity 0.3s;
  cursor: default;
}

.avatar-preview:hover .avatar-overlay {
  opacity: 1;
}

.delete-icon {
  color: white;
  font-size: 30px;
  cursor: pointer;
}

.delete-icon:hover {
  color: #f56c6c;
}

.avatar-uploader-icon {
  font-size: 28px;
  color: #8c939d;
}

.is-invalid :deep(.el-input__wrapper) {
  box-shadow: 0 0 0 1px red inset !important;
}

.test :deep(.el-input__wrapper) {
  box-shadow: 0 0 0 1px #409eff inset !important;
}
.register-container {
  display: flex;
  height: 50vh;
  justify-content: center;
  align-items: center;
}
</style>