<?php

namespace App\Http\Controllers;

use App\Models\Teacher;
use Illuminate\Http\Request;

class TeacherController extends Controller
{
    public function view(Request $request){
        // dd($request->all());
        $teachers = Teacher::all();

        $students= collect();

        if ($request->teacher_id) {

            $teacher = Teacher::find($request->teacher_id);
            $subjects = $teacher->subjects;
            // return $subjects;

            foreach ($subjects as $subject) {
                $students -> push(...$subject->students);
              }
              $students->unique('id')->values()->all();
        }
        // return $students;
        // $teacher = Teacher::min('id');

    return view('teacherView', compact('teachers','students'));

    }
}
