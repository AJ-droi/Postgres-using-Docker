/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = pgm => {
    pgm.addColumns('users', {
        email: {type: 'varchar(1000)', notNull:true},
    })
}

exports.down = pgm => {
    pgm.dropTable('users')
};
