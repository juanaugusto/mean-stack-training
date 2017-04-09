var hotelData = require('../data/hotel-data.json');

module.exports.hotelsGetAll = function(req, res) {
    console.log('GET the json');
    res
        .status(200)
        .json(hotelData);
};

module.exports.hotelsGetOne = function(req, res) {
    var hotelId = req.params.hotelId;
    var thisHotel = hotelData[hotelId];
    console.log("GET hotelId", hotelId);
    console.log('GET the json');
    res
        .status(200)
        .json(thisHotel);
};