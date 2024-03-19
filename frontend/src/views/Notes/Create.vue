<template>
  <div class="container mt-4">
    <div class="card">
      <div class="card-header">Tambah Catatan</div>
      <div class="card-body">
        <form @submit.prevent="saveNote">
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
          <button type="submit" class="btn btn-success">Simpan</button>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "noteCreate",
  data() {
    return {
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
  methods: {
    saveNote() {
      axios
        .post("http://localhost:8000/api/notes", this.model.note)
        .then((res) => {
          console.log(res.data);
          alert(res.data.message);

          this.model.note = {
            judul: "",
            deskripsi: "",
          };

          this.errorList = "";

          this.$router.push("/notes");
        })
        .catch((error) => {
          if (error.response) {
            if (error.response.status == 422) {
              this.errorList = error.response.data.errors;
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
.btn-success {
  background-color: #00cc00;
  border-color: #00cc00;
}
</style>
