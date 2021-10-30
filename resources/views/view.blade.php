<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>View</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                    <h2>Search Student</h2>
                <form action="{{ route('view') }}" method="GET">
                    <label for="">Select Subject</label>
                        <select name="subject_id" id="">
                            <option value="">All</option>
                            @foreach ($subjects as $subject)
                            <option value="{{ $subject->id }}" {{ request('subject_id') == $subject->id ? 'selected':'' }} >{{ $subject->name }}</option>
                            @endforeach
                        </select><br><br>
                        <label for="">Input Student Name</label>
                        <input type="text" name="student_name" value="{{ request('student_name') ?? '' }}">
                        <br>
                        <br>
                        <input type="submit"  value="Search">
                </form>
            </div>
            <br><br>
            <div class="col-lg-6">
                <form action="{{ route('view') }}" method="GET">
                    <h2>Search Teacher</h2>
                    <label for="">Select Subject</label>
                        <select name="subjects_id" id="">
                            <option value="">All</option>
                            @foreach ($subjects as $subject)
                            <option value="{{ $subject->id }}" {{ request('subjects_id') == $subject->id ? 'selected':'' }} >{{ $subject->name }}</option>
                            @endforeach
                        </select><br><br>
                        <label for="">Input Teacher Name</label>
                        <input type="text" name="teacher_name" value="{{ request('teacher_name') ?? '' }}">
                        <br>
                        <br>
                        <input type="submit" value="Search">
                </form>
            </div>

        </div>
    </div>
<br><br>
<br>
<div class="container">
   <div class="row">
       {{-- {{ $teacher }} --}}
       <div class="col-lg-6">
        <div class="card">
            <table  class="table">
                All Students
                <tr>
                    <th>SL</th>
                    <th>Name</th>
                    <th>Class</th>
                    <th>Email</th>
                </tr>
                @forelse ($students as $student)
                        <tr>
                            <td>{{ $loop->index + 1 }}</td>
                            <td>{{ $student->name }}</td>
                            <td>{{ $student->class}}</td>
                            <td>{{ $student->email}}</td>
                        </tr>
                @empty
                <tr>
                    <td colspan="10">No student found</td>
                </tr>
                @endforelse
            </table>
            {{ $students->links() }}
        </div>
        </div>
       <div class="col-lg-6">
           <div class="card">
            <table  class="table">
                All Teacher
                <tr>
                    <th>SL</th>
                    <th>Name</th>

                    <th>Email</th>
                </tr>
                @forelse ($teachers as $student)
                        <tr>
                            <td>{{ $loop->index + 1 }}</td>
                            <td>{{ $student->name }}</td>

                            <td>{{ $student->email}}</td>
                        </tr>
                @empty
                <tr>
                    <td colspan="10">No Teacher found</td>
                </tr>
                @endforelse

            </table>
            {{ $teachers->links() }}
        </div>
        </div>

    </div>
</div>

</body>
</html>
