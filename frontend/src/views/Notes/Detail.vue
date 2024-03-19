<template>
  <div class="container mt-4">
    <div class="card" v-if="note">
      <div class="card-header">{{ note.judul }}</div>
      <div class="card-body">
        <pre class="description">{{ note.deskripsi }}</pre>
      </div>
    </div>
    <div v-else>
      <p>Memuat data...</p>
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import axios from "axios";

export default defineComponent({
  name: "NoteDetail",
  data() {
    return {
      note: {} as { judul: string; deskripsi: string },
    };
  },
  mounted() {
    const noteId = this.$route.params.id;
    axios.get(`http://localhost:8000/api/notes/${noteId}`).then((res) => {
      this.note = res.data.note;
    });
  },
});
</script>

<style scoped>
.description {
  white-space: pre-wrap;
  word-wrap: break-word;
}
</style>
