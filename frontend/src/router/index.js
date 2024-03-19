import { createRouter, createWebHistory } from "vue-router";
import NoteView from "../views/Notes/View.vue";
import NoteCreate from "../views/Notes/Create.vue";
import NoteDetail from "../views/Notes/Detail.vue";
import NoteEdit from "../views/Notes/Edit.vue";
import NotePrint from "../views/Notes/Print.vue";

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: "/",
      redirect: "/notes",
    },
    {
      path: "/notes",
      name: "notes",
      component: NoteView,
    },
    {
      path: "/notes/create",
      name: "noteCreate",
      component: NoteCreate,
    },
    {
      path: "/notes/detail/:id",
      name: "noteDetail",
      component: NoteDetail,
    },
    {
      path: "/notes/:id/edit",
      name: "noteEdit",
      component: NoteEdit,
    },
    {
      path: "/notes/:id/print",
      name: "notePrint",
      component: NotePrint,
    },
  ],
});

export default router;
