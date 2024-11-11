router.get('/boardList', async(req, res) => {
    let boards = await Board.findAll({
        attributes: ['id', 'subject', 'author', [sequelize.fn("DATE_FORMAT", sequelize.col('created_At'),"%Y-%m-%d"), 'createdAt',], 'watch'],
        order: [['created_At', 'DESC']]
    });
    res.render('board/boardList', {boards: boards});
});