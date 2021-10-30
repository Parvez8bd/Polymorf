<?php

namespace App\Http\Controllers;

use App\Models\Student;
use App\Models\Subject;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;

class StudentController extends Controller
{
    public function view(Request $request){

        $teachers = collect();

        $students = Student::all();

        if($request->student_id){
            // DONE FIND Student
            // $student = Student::where('id', $request->student_id)->first();
            $student = Student::find($request->student_id);
            // Find student's subjects
            $subjects = $student->subjects;

            // Find subjects's teachers
            foreach($subjects as $subject){
                /* foreach($subject->teachers as $teacher){
                    array_push($teachers, $teacher);
                } */

                $teachers->push(...$subject->teachers);
                // array_push($, ...$subject->teachers);
            }

            $teachers->unique('id')->values()->all();
        }



        return view('studentView',compact('students','teachers'));


    }
}
