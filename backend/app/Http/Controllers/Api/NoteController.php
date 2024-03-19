<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Note;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;

class NoteController extends Controller
{
    public function index() {
        $note = Note::orderBy('created_at', 'desc')->get();
        
        if ($note->count() > 0) {
            return response()->json([
                'status' => 200,
                'notes' => $note
            ], 200);
        } else {
            return response()->json([
                'status' => 404,
                'message' => 'Tidak ada catatan!'
            ], 404);
        }
    }

    public function store(Request $request) {
        $validator = Validator::make($request->all(), [
            'judul' => 'required|string|max:255',
            'deskripsi' => 'required|string|max:2000'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 422,
                'errors' => $validator->messages()
            ], 422);
        } else {
            $note = Note::create([
                'judul' => $request->judul,
                'deskripsi' => $request->deskripsi
            ]);

            if ($note) {
                return response()->json([
                    'status' => 200,
                    'message' => "Catatan berhasil ditambahkan"
                ], 200);
            } else {
                return response()->json([
                    'status' => 500,
                    'message' => "Gagal menambahkan catatan!"
                ], 500);
            }
        }
    }

    public function show($id) {
        $note = Note::find($id);

        if ($note) {
            return response()->json([
                'status' => 200,
                'note' => $note
            ], 200);
        } else {
            return response()->json([
                'status' => 404,
                'message' => "Gagal menemukan catatan"
            ], 404);
        }
    }

    public function edit($id) {
        $note = Note::find($id);

        if ($note) {
            return response()->json([
                'status' => 200,
                'note' => $note
            ], 200);
        } else {
            return response()->json([
                'status' => 404,
                'message' => "Gagal menemukan catatan!"
            ], 404);
        }
    }

    public function update(Request $request, int $id) {
        $validator = Validator::make($request->all(), [
            'judul' => 'required|string|max:255',
            'deskripsi' => 'required|string|max:2000'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 422,
                'errors' => $validator->messages()
            ], 422);
        } else {
            $note = Note::find($id);
            
            if ($note) {
                $note->update([
                    'judul' => $request->judul,
                    'deskripsi' => $request->deskripsi
                ]);

                // log info jika data berhasil diupdate
                Log::info("Catatan berhasil diupdate: {$note->judul}");

                return response()->json([
                    'status' => 200,
                    'message' => "Catatan berhasil diupdate"
                ], 200);
            } else {
                // log error untuk monitoring error yg terjadi
                Log::error("Gagal mengupdate catatan dengan ID: $id");

                return response()->json([
                    'status' => 500,
                    'message' => "Gagal mengupdate catatan!"
                ], 500);
            }
        }
    }

    public function destroy($id) {
        $note = Note::find($id);

        if ($note) {
            $note->delete();
            return response()->json([
                'status' => 200,
                'message' => "Catatan berhasil dihapus"
            ], 200);
        } else {
            return response()->json([
                'status' => 404,
                'message' => "Catatan gagal dihapus!"
            ], 404);
        }
    }

    public function notePrint($id) {
        $note = Note::find($id);
    
        if (!$note) {
            return response()->json([
                'status' => 404,
                'message' => 'Catatan tidak ditemukan.'
            ], 404);
        }
    
        return response()->json([
            'status' => 200,
            'note' => $note
        ], 200);
    }
}
