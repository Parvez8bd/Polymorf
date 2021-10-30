<?php

namespace App\Http\Controllers;

use App\Models\Student;
use App\Models\Subject;
use App\Models\Teacher;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;

class InsertController extends Controller
{

    public function create() {

        $subjects=Subject::all();
        $students=Student::all();
        $teachers=Teacher::all();
        return view('create',compact('subjects','students','teachers'));
    }
    public function store(Request $request) {


        $student=Student::find($request->student_id);
        $student->subjects()->attach($request->subject_id);

        return back();
    }
    public function storeTeacher(Request $request) {

        $student=Teacher::find($request->teacher_id);
        $student->subjects()->attach($request->subject_id);

        return back();
    }

    public function view(Request $request) {

        $teachers_query=Teacher::query();
        $subjects_query = Subject::with('teachers');
        $students_query = Student::query();

        /*
         function (Builder $query) {
                $query->where('id', request('subject_id'));
            }
         */
        /* Search Student */
        if(request('subject_id')){
            $students_query->whereHas('subjects', function (Builder $query) {
                $query->where('subjects.id', request('subject_id'));
            });
        }

        if(request('student_name')){
            $students_query->where('name','like','%'.request('student_name').'%');
        }
        /* Search teacher */
        if(request('subjects_id')){
            $teachers_query->whereHas('subjects', function (Builder $query) {
                $query->where('subjects.id', request('subjects_id'));
            });
        }

        if(request('teacher_name')){
            $teachers_query->where('name','like','%'.request('teacher_name').'%');
        }


        // if(request('student_name')){
        //     $students_query->where('name','like','%'.request('student_name').'%');
        // }

        //return $teacher;


        $student_name = null;
        if($request->has('name')){
            // return $request->all();
            $student_name = Student::query()
            ->where('name','LIKE', '%' . $request->name . '%' )
            ->first();
         }

        // $subjects=Subject::all();
        // $students=Student::all();
        $teachers=$teachers_query->paginate(5);
        $students = $students_query->paginate(5);
        $subjects = $subjects_query->get();

        return view('view',compact('subjects','students','teachers'));
    }
}
