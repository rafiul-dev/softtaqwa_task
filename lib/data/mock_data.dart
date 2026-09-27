import '../models/notice_model.dart';
import '../models/routine_model.dart';
import '../models/result_model.dart';

final List<Notice> mockNotices = [
  Notice(
    id: '1',
    title: 'Mid-Term Exam Schedule Published',
    preview: 'The mid-term examination schedule for Fall 2026 has been published. Please check the details.',
    content:
        'The mid-term examination schedule for Fall 2026 has been published. '
        'Examinations will begin from October 15, 2026 and continue until October 25, 2026. '
        'Students are advised to collect their admit cards from the examination office by October 10. '
        'No student will be allowed to sit for the exam without a valid admit card. '
        'Seating arrangements will be posted on the department notice board one day before each exam.',
    category: 'Academic',
    date: DateTime(2026, 9, 25),
    isImportant: true,
  ),
  Notice(
    id: '2',
    title: 'Campus Blood Donation Drive',
    preview: 'Join the annual blood donation drive organized by the Red Crescent Society on campus.',
    content:
        'The annual blood donation drive will be held on October 5, 2026 at the University Auditorium '
        'from 9:00 AM to 4:00 PM. The event is organized in collaboration with the Bangladesh Red Crescent Society. '
        'All healthy students and faculty members are encouraged to participate. '
        'Refreshments will be provided after donation. Registration is open at the Student Affairs office.',
    category: 'Event',
    date: DateTime(2026, 9, 24),
  ),
  Notice(
    id: '3',
    title: 'Library Hours Extended for Exam Week',
    preview: 'The central library will remain open until 10 PM during the exam period.',
    content:
        'To support students during the upcoming examination period, the Central Library will extend '
        'its operating hours from October 10 to October 28, 2026. The library will remain open from '
        '8:00 AM to 10:00 PM on weekdays and 9:00 AM to 6:00 PM on weekends. '
        'Group study rooms can be booked through the library portal. '
        'Please maintain silence in designated quiet zones.',
    category: 'General',
    date: DateTime(2026, 9, 23),
  ),
  Notice(
    id: '4',
    title: 'Scholarship Application Deadline',
    preview: 'Last date to apply for merit-based scholarships is October 1, 2026.',
    content:
        'Applications for the merit-based scholarship for the Fall 2026 semester are now open. '
        'Eligible students must have a minimum CGPA of 3.50 and no disciplinary record. '
        'Application forms are available at the Financial Aid office and on the university website. '
        'The last date for submission is October 1, 2026. Incomplete applications will not be considered. '
        'Shortlisted candidates will be called for an interview.',
    category: 'Academic',
    date: DateTime(2026, 9, 22),
    isImportant: true,
  ),
  Notice(
    id: '5',
    title: 'Wi-Fi Network Maintenance',
    preview: 'Campus Wi-Fi will be unavailable on September 28 from 2 AM to 6 AM.',
    content:
        'The IT department will conduct scheduled maintenance on the campus Wi-Fi network '
        'on September 28, 2026 from 2:00 AM to 6:00 AM. During this period, internet access '
        'across all campus buildings will be temporarily unavailable. '
        'We apologize for the inconvenience and recommend downloading essential materials beforehand. '
        'For urgent connectivity needs, please contact the IT Help Desk.',
    category: 'IT',
    date: DateTime(2026, 9, 21),
  ),
  Notice(
    id: '6',
    title: 'Inter-Department Football Tournament',
    preview: 'Registrations open for the annual inter-department football tournament.',
    content:
        'The annual inter-department football tournament will kick off on October 8, 2026. '
        'Each department can register one team with a maximum of 16 players. '
        'Registration forms are available at the Sports Office. Deadline: October 3, 2026. '
        'Matches will be played at the university main ground. '
        'Trophy and cash prizes for the top 3 teams.',
    category: 'Event',
    date: DateTime(2026, 9, 20),
  ),
];

final Map<String, List<RoutineEntry>> mockRoutine = {
  'Sat': [
    RoutineEntry(subject: 'Data Structures', time: '08:30 - 09:45', room: 'Room 301', teacher: 'Dr. Karim'),
    RoutineEntry(subject: 'Discrete Math', time: '10:00 - 11:15', room: 'Room 204', teacher: 'Prof. Nusrat'),
    RoutineEntry(subject: 'English II', time: '11:30 - 12:45', room: 'Room 105', teacher: 'Ms. Fatema'),
  ],
  'Sun': [
    RoutineEntry(subject: 'OOP (Lab)', time: '08:30 - 11:30', room: 'Lab 2', teacher: 'Mr. Tanvir'),
    RoutineEntry(subject: 'Digital Logic', time: '11:45 - 01:00', room: 'Room 302', teacher: 'Dr. Hasan'),
  ],
  'Mon': [
    RoutineEntry(subject: 'Data Structures', time: '08:30 - 09:45', room: 'Room 301', teacher: 'Dr. Karim'),
    RoutineEntry(subject: 'Digital Logic', time: '10:00 - 11:15', room: 'Room 302', teacher: 'Dr. Hasan'),
    RoutineEntry(subject: 'Discrete Math', time: '11:30 - 12:45', room: 'Room 204', teacher: 'Prof. Nusrat'),
    RoutineEntry(subject: 'English II', time: '01:30 - 02:45', room: 'Room 105', teacher: 'Ms. Fatema'),
  ],
  'Tue': [
    RoutineEntry(subject: 'Data Structures (Lab)', time: '08:30 - 11:30', room: 'Lab 1', teacher: 'Dr. Karim'),
    RoutineEntry(subject: 'Discrete Math', time: '11:45 - 01:00', room: 'Room 204', teacher: 'Prof. Nusrat'),
  ],
  'Wed': [
    RoutineEntry(subject: 'Digital Logic', time: '08:30 - 09:45', room: 'Room 302', teacher: 'Dr. Hasan'),
    RoutineEntry(subject: 'OOP', time: '10:00 - 11:15', room: 'Room 203', teacher: 'Mr. Tanvir'),
  ],
  'Thu': [],
};

final List<SemesterResult> mockResults = [
  SemesterResult(
    semesterId: 'spring2026',
    semesterName: 'Spring 2026',
    courses: [
      CourseGrade(courseId: 'CSE101', courseName: 'Intro to Computer Science', creditHours: 3.0, grade: 'A', gradePoint: 4.0),
      CourseGrade(courseId: 'ENG101', courseName: 'English I', creditHours: 3.0, grade: 'A-', gradePoint: 3.7),
      CourseGrade(courseId: 'MAT101', courseName: 'Calculus I', creditHours: 3.0, grade: 'B+', gradePoint: 3.3),
      CourseGrade(courseId: 'PHY101', courseName: 'Physics I', creditHours: 3.0, grade: 'A', gradePoint: 4.0),
    ],
  ),
  SemesterResult(
    semesterId: 'fall2026',
    semesterName: 'Fall 2026',
    courses: [
      CourseGrade(courseId: 'CSE102', courseName: 'Data Structures', creditHours: 3.0, grade: 'A-', gradePoint: 3.7),
      CourseGrade(courseId: 'CSE103', courseName: 'Discrete Math', creditHours: 3.0, grade: 'A', gradePoint: 4.0),
      CourseGrade(courseId: 'MAT102', courseName: 'Linear Algebra', creditHours: 3.0, grade: 'B', gradePoint: 3.0),
      CourseGrade(courseId: 'ENG102', courseName: 'English II', creditHours: 3.0, grade: 'B+', gradePoint: 3.3),
    ],
  ),
];
