@extends('layouts.user')
@section('content')
    <div class="calendar-env">
        <div class="calendar-body">
            <div id="calendar" class="fc fc-ltr">
            </div>
        </div>
        <div class="calendar-sidebar">
            <div class="calendar-sidebar-row">
                <form role="form" id="add_event_form">
                    <div class="input-group minimal"> <input type="text" class="form-control" placeholder="Add event...">
                        <div class="input-group-addon"> <i class="entypo-pencil"></i> </div>
                    </div>
                </form>
            </div>
            <ul class="events-list" id="draggable_events">
                <li>
                    <p>Drag Events to Calendar Dates</p>
                </li>
                <li>
                    <a href="#" class="ui-draggable" style="position: relative;">Sport Match</a>
                </li>
                <li> <a href="#" class="color-blue ui-draggable" data-event-class="color-blue"
                        style="position: relative;">Meeting</a> </li>
                <li> <a href="#" class="color-orange ui-draggable" data-event-class="color-orange"
                        style="position: relative;">Relax</a> </li>
                <li> <a href="#" class="color-primary ui-draggable" data-event-class="color-primary"
                        style="position: relative;">Study</a> </li>
                <li> <a href="#" class="color-green ui-draggable" data-event-class="color-green"
                        style="position: relative;">Family Time</a> </li>
            </ul>
        </div>
    </div>
    <script src="{{ asset('assets/dashboard/js/joinable.js') }}" id="script-resource-4"></script>
    <script src="{{ asset('assets/dashboard/js/fullcalendar.min.js') }}" id="script-resource-4"></script>
    <script src="{{ asset('assets/dashboard/js/neon-calendar.js') }}" id="script-resource-4"></script>
@endsection

@section('script')
@endsection
