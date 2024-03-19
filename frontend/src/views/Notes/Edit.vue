<template>
  <div class="container mt-4">
    <div class="card">
      <div class="card-header">Edit Catatan</div>
      <div class="card-body">
        <form @submit.prevent="updateNote">
          <div class="mb-3">
            <label for="judul" class="form-label">Judul</label>
            <input type="text" v-model="model.note.judul" class="form-control" id="judul" />
            <small class="text-danger">{{ errorList.judul ? "Judul catatan wajib diisi" : "" }}</small>
          </div>
          <div class="mb-3">
            <label for="deskripsi" class="form-label">Deskripsi</label>
            <textarea class="form-control" v-model="model.note.deskripsi" id="deskripsi" rows="5"></textarea>
            <small class="text-danger">{{ errorList.deskripsi ? "Deskripsi catatan wajib diisi" : "" }}</small>
          </div>
          <button type="submit" class="btn btn-warning">Update</button>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "noteEdit",
  data() {
    return {
      noteId: "",
      errorList: {
        judul: "",
        deskripsi: "",
      },
      model: {
        note: {
          judul: "",
          deskripsi: "",
        },
      },
    };
  },

  mounted() {
    this.noteId = this.$route.params.id;
    this.getNoteData(this.$route.params.id);
  },

  methods: {
    getNoteData(noteId) {
      axios
        .get(`http://localhost:8000/api/notes/${noteId}/edit`)
        .then((res) => {
          console.log(res.data.note);
          this.model.note = res.data.note;
        })
        .catch((error) => {
          if (error.response) {
            if (error.response.status == 404) {
              alert(error.response.data.message);
            }
          }
        });
    },

    updateNote() {
      const requestData = {
        judul: this.model.note.judul,
        deskripsi: this.model.note.deskripsi,
      };

      axios
        .put(`http://localhost:8000/api/notes/${this.noteId}/edit`, requestData)
        .then((res) => {
          console.log(res.data);
          alert(res.data.message);

          this.errorList = "";

          this.$router.push("/notes");
        })
        .catch((error) => {
          if (error.response) {
            if (error.response.status == 422) {
              this.errorList = error.response.data.errors;
            }

            if (error.response.status == 404) {
              alert(error.response.data.message);
            }
          } else if (error.request) {
            console.log(error.request);
          } else {
            console.log("Error", error.message);
          }
        });
    },
  },
};
</script>

<style scoped>
.text-danger {
  color: red;
}
</style>
