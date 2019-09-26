const xss = require('xss')

const CoursesService = {
  getAllCourses(db) {
    return db
      .from('curricula_courses AS cor')
      .select(
        'cor.id',
        'cor.title',
        'cor.description',
        'cor.notes',
        'cor.readings',
        'cor.duration',
        'cor.topic',
        'cor.created_at',
        'cor.userId',
        db.raw(
          `count(DISTINCT blurb) AS number_of_blurbs`
        ),
        db.raw(
          `json_strip_nulls(
            json_build_object(
              'id', user.id,
              'first_name', user.first_name,
              'last_name', user.last_name,
              'location', user.location,
              'created_at', user.created_at,
              'date_modified', usr.date_modified
            )
          ) AS "author"`
        ),
      )
      .leftJoin(
        'curricula_blurbs AS blurb',
        'course.id',
        'blurb.course_id',
      )
      .leftJoin(
        'curricula_users AS user',
        'course.course_id',
        'user.id',
      )
      .groupBy('course.id', 'user.id')
  },

  getById(db, id) {
    return CoursesService.getAllCourses(db)
      .where('course.id', id)
      .first()
  },

  getBlurbsForCourse(db, course_id) {
    return db
      .from('curricula_blurbs AS blurb')
      .select(
        'blurb.id',
        'blurb.content',
        'blurb.created_at',
        db.raw(
          `json_strip_nulls(
            row_to_json(
              (SELECT tmp FROM (
                SELECT
                  user.id,
                  user.first_name,
                  user.last_name,
                  user.location,
                  user.created_at,
              ) tmp)
            )
          ) AS "user"`
        )
      )
      .where('blurb.course_id', course_id)
      .leftJoin(
        'curricula_users AS user',
        'blurb.user_id',
        'user.id',
      )
      .groupBy('blurb.id', 'user.id')
  },

  serializeCourse(course) {
    const { author } = course
    return {
      id: course.id,
      title: xss(course.title),
      description: xss(course.description),
      notes: xss(course.notes),
      readings: xss(course.readings),
      created_at: new Date(course.created_at),
      number_of_blurbs: Number(course.number_of_blurbs) || 0,
      author: {
        id: author.id,
        first_name: author.first_name,
        last_name: author.last_name,
        location: author.location,
        created_at: new Date(author.created_at),
      },
    }
  },

  serializeCourseBlurb(blurb) {
    const { user } = blurb
    return {
      id: blurb.id,
      course_id: blurb.course_id,
      content: xss(blurb.content),
      created_at: new Date(blurb.created_at),
      user: {
        id: user.id,
        first_name: user.first_name,
        last_name: user.last_name,
        location: user.location,
        created_at: new Date(user.created_at),
      },
    }
  },
}

module.exports = CoursesService
