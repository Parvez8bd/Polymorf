<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Insert Data</title>
</head>
<body>
    <form action="{{ route('store') }}" method="POST">
        @csrf
        <label for="">Select Subject</label>
        <select name="subject_id" id="">
            @foreach ($subjects as $subject)
            <option value="{{ $subject->id }}">{{ $subject->name }}</option>
            @endforeach
        </select><br><br>
        <label for="">Select Student</label>
        <select name="student_id" id="">
            @foreach ($students as $student)
            <option value="{{ $student->id }}">{{ $student->name }}</option>
            @endforeach
        </select><br><br>

        <input type="submit" value="Submit">

    </form><br><br><br>
    <form action="{{ route('storeTeacher') }}" method="POST">
        @csrf
        <label for="">Select Subject</label>
        <select name="subject_id" id="">
            @foreach ($subjects as $subject)
            <option value="{{ $subject->id }}">{{ $subject->name }}</option>
            @endforeach
        </select><br><br>
        <label for="">Select Teacher</label>
        <select name="teacher_id" id="">
            @foreach ($teachers as $teacher)
            <option value="{{ $teacher->id }}">{{ $teacher->name }}</option>
            @endforeach
        </select><br><br>

        <input type="submit" value="Submit">

    </form>
</body>
</html>
