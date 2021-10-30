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
                <form action="{{ route('studentView') }}" method="GET">
                    <h2>Search Teachers for Students</h2>
                    <label for="">Select Student</label>
                        <select name="student_id" id="">
                            <option value="">All</option>
                            @foreach ($students as $subject)
                            <option value="{{ $subject->id }}" {{ request('student_id') == $subject->id ? 'selected':'' }} >{{ $subject->name }}</option>
                            @endforeach
                        </select><br>
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

       <div class="col-lg-6">
        <div class="card">
            <table  class="table">
                All Teacher
                <tr>
                    <th>SL</th>
                    <th>Name</th>
                    <th>Email</th>
                </tr>
                @forelse ($teachers as $teacher)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $teacher->name }}</td>
                            <td>{{ $teacher->email}}</td>
                        </tr>
                @empty
                <tr>
                    <td colspan="10">No Teacher found</td>
                </tr>
                @endforelse

            </table>
        </div>
    </div>
</div>

</body>
</html>
