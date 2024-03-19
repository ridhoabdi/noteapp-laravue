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
import jsPDF from "jspdf";
import axios from "axios";

export default defineComponent({
  name: "NotePrint",
  data() {
    return {
      note: {} as { judul: string; deskripsi: string },
    };
  },
  mounted() {
    const noteId = this.$route.params.id;
    axios.get(`http://localhost:8000/api/notes/${noteId}`).then((res) => {
      this.note = res.data.note;
      this.printNote();
    });
  },
  methods: {
    printNote() {
      const doc = new jsPDF({
        orientation: "portrait",
        unit: "mm",
        format: "a4",
      });

      const { judul, deskripsi } = this.note;

      doc.setFontSize(16);
      doc.text(judul, 10, 10);

      doc.line(10, 15, 200, 15);

      const lines = doc.splitTextToSize(deskripsi, 250);
      doc.setFontSize(12);
      let y = 25;
      lines.forEach((line) => {
        doc.text(line, 10, y);
        y += 5;
      });

      doc.save(`${judul}.pdf`);
    },
  },
});
</script>

<style scoped>
.description {
  white-space: pre-wrap;
  word-wrap: break-word;
}
</style>
