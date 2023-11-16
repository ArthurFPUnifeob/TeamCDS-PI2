// filtrar numero
const $ = require('../../../node_modules/jquery');
require('../../../node_modules/jquery-mask-plugin');

$(document).ready(function(){
  $('#cnpj').mask('99.999.999/9999-99');
});