controladdin WaitSpinner
{
    RequestedHeight = 350;
    RequestedWidth = 350;
    HorizontalStretch = true;
    VerticalStretch = true;
    Scripts = 'https://cdnjs.cloudflare.com/ajax/libs/knockout/3.4.2/knockout-debug.js', 'src/ControlAddIns/js/WaitSpinner.js';
    StartupScript = 'src/ControlAddIns/js/WaitSpinner.js';
    StyleSheets = 'src/ControlAddIns/stylesheets/spinner.css';
    Images = 'src/ControlAddIns/images/spinner.gif';

    procedure Wait(SecondsToWait: Integer);
    event Ready();
    event Callback();
}