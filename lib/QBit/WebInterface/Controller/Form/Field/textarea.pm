package QBit::WebInterface::Controller::Form::Field::textarea;

use qbit;

use base qw(QBit::WebInterface::Controller::Form::Field);

sub init {
    my ($self)  = @_;

    $self->SUPER::init();

    $self->{'rows'} ||= 8;
}

sub control_html {
    my ($self) = @_;

    my $html = '<textarea';

    $html .= $self->_class('span9');

    foreach (qw(id name style cols rows)) {
        $html .= " $_=\"" . html_encode($self->{$_}) . '"' if defined($self->{$_});
    }

    $html .= '>' . html_encode($self->value);

    $html .= '</textarea>';

    $html .= $self->_html_error();

    return $html;
}

TRUE;
