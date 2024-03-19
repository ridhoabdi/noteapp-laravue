=============== View.vue ===============

<template>
  <div class="container mt-4">
    <div class="card">
      <div class="card-header">
        Catatan Saya
        <RouterLink to="/notes/create">
          <FontAwesomeIcon :icon="faPlus" class="text-green-500 float-end" size="lg" />
        </RouterLink>
      </div>
      <div class="card-body">
        <table class="table table-hover">
          <thead>
            <tr>
              <th scope="col">No.</th>
              <th scope="col">Judul</th>
              <th scope="col">Tanggal Dibuat</th>
              <th scope="col">Tanggal Diupdate</th>
              <th scope="col">Aksi</th>
            </tr>
          </thead>
          <tbody v-if="notes.length > 0">
            <tr v-for="(note, index) in notes" :key="note.id">
              <td>{{ index + 1 }}</td>
              <td>{{ note.judul }}</td>
              <td>{{ formatDate(note.created_at) }}</td>
              <td>{{ formatDate(note.updated_at) }}</td>
              <td>
                <RouterLink :to="{ path: '/notes/detail/' + note.id }">
                  <FontAwesomeIcon :icon="faEye" class="text-secondary me-3" size="lg" />
                </RouterLink>
                <RouterLink :to="{ path: '/notes/' + note.id + '/edit' }">
                  <FontAwesomeIcon :icon="faEdit" class="text-warning me-3" size="lg" />
                </RouterLink>
                <a @click="deleteNote(note.id)">
                  <FontAwesomeIcon :icon="faTrash" class="text-danger me-3" size="lg" />
                </a>
                <RouterLink :to="{ path: '/notes/' + note.id + '/print' }">
                  <FontAwesomeIcon :icon="faPrint" class="text-primary" size="lg" />
                </RouterLink>
              </td>
            </tr>
          </tbody>
          <tbody v-else>
            <tr>
              <td colspan="5">Memuat data...</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";
import { FontAwesomeIcon } from "@fortawesome/vue-fontawesome";
import { faPlus, faEye, faEdit, faTrash, faPrint } from "@fortawesome/free-solid-svg-icons";

export default {
  name: "notes",
  components: {
    FontAwesomeIcon,
  },
  data() {
    return {
      notes: [],
      faPlus,
      faEye,
      faEdit,
      faTrash,
      faPrint,
    };
  },
  mounted() {
    this.getNotes();
  },
  methods: {
    getNotes() {
      axios.get("http://localhost:8000/api/notes").then((res) => {
        this.notes = res.data.notes;
      });
    },
    formatDate(dateString) {
      const options = { day: "numeric", month: "long", year: "numeric" };
      return new Date(dateString).toLocaleDateString("id-ID", options);
    },
    deleteNote(noteId) {
      if (confirm("Apakah Anda ingin menghapus catatan ini?")) {
        axios
          .delete(`http://localhost:8000/api/notes/${noteId}/delete`)
          .then((res) => {
            alert(res.data.message);
            this.$router.go();
          })
          .catch((error) => {
            if (error.response) {
              if (error.response.status == 404) {
                alert(error.response.data.message);
              }
            }
          });
      }
    },
  },
};
</script>

<style scoped>
.text-green-500 {
  color: #00cc00;
}
</style>
