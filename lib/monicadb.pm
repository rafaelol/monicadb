package monicadb;
use Dancer2;
use Controller::Historia;

our $VERSION = '0.0.1';

get '/' => sub {
    template 'index';
};

prefix '/editora';
get '/' => sub {};

get '/:id' => sub {
    return "Testando" . route_parameters->get('id');
};

prefix '/funcionario';
get '/' => sub {};

get '/:id' => sub {
    return "Testando" . route_parameters->get('id');
};

prefix '/historia';
get '/' => sub {};

get '/:id' => sub {
    my $params = {
        id => route_parameters->get('id'),
    };
    Controller::Historia->new($params);
};

prefix '/nucleo';
get '/' => sub {};

get '/:id' => sub {
    return "Testando" . route_parameters->get('id');
};

prefix '/personagem';
get '/' => sub {};

get '/:id' => sub {
    return "Testando" . route_parameters->get('id');
};

prefix '/publicacao';
get '/' => sub {};

get '/:id' => sub {
    return "Testando" . route_parameters->get('id');
};

true;
