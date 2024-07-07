@extends('notification.layout')
@section('main-body')
    {!! Form::open(['route' => 'user-notification-compose-submit', 'files' => true]) !!}
    {!! csrf_field() !!}
    <div class="mail-body">
        <div class="mail-header">
            <div class="mail-title">
                Compose Mail <i class="entypo-pencil"></i> </div>
            <div class="mail-links">
                <a href="{{ route('user-notification') }}" class="btn btn-default"> <i class="entypo-cancel"></i> </a>
                <a href="{{ url('user-notification/?type=draft ') }}" class="btn btn-default btn-icon">
                    Draft
                    <i class="entypo-tag"></i> </a>
                <button type="submit" class="btn btn-success btn-icon">

                    Send
                    <i class="entypo-mail"></i>
                </button>
            </div>
        </div>
        <div class="mail-compose">


            <div class="form-group"> <label for="to">To:</label>
                <input name="to" type="text" class="form-control" id="to" tabindex="1"
                    value="{{ config('app.email') }}">
                <div class="field-options"> <a href="javascript:;"
                        onclick="$(this).hide(); $('#cc').parent().removeClass('hidden'); $('#cc').focus();">CC</a>
                    <a href="javascript:;"
                        onclick="$(this).hide(); $('#bcc').parent().removeClass('hidden'); $('#bcc').focus();">BCC</a>
                </div>
            </div>
            <div class="form-group hidden"> <label for="cc">CC:</label>
                <input type="text" class="form-control" id="cc" name="cc" tabindex="2">
            </div>
            <div class="form-group hidden"> <label for="bcc">BCC:</label>
                <input type="text" class="form-control" id="bcc" name="bcc" tabindex="2">
            </div>
            <div class="form-group"> <label for="subject">Subject:</label>
                <input required type="text" class="form-control" id="subject" name="subject" tabindex="1">
            </div>

            <div class="attachment-container">
                <div class="attachment">
                    <input type="file" name="attachments[]" accept=".doc,.docx,.pdf,.txt,.jpeg,.jpg,.png" size="5000000"
                        style="width: 100%; padding: 10px;">
                    <!-- accept=".doc,.docx,.pdf,.txt" limits file types to specified extensions -->
                    <!-- size="5000000" limits file size to 5 MB (5000000 bytes) -->
                </div>
            </div>
            <button type="button" id="add-more" class="btn btn-primary"><i class="fa fa-plus"></i> Add More</button>


            <script>
                $(document).ready(function() {
                    $('#add-more').click(function() {
                        $('.attachment-container').append(`
                    <div class="attachment">
                    <input type="file" name="attachments[]" accept=".doc,.docx,.pdf,.txt,.jpeg,.jpg,.png" size="5000000"
                        style="width: 100%; padding: 10px;">
                    <!-- accept=".doc,.docx,.pdf,.txt" limits file types to specified extensions -->
                    <!-- size="5000000" limits file size to 5 MB (5000000 bytes) -->
                </div>
                `);
                    });
                });
            </script>
            <div class="compose-message-editor">

                <textarea class="form-control wysihtml5" data-stylesheet-url="{{ asset('assets/dashboard/css/wysihtml5-color.css') }}"
                    name="sample_wysiwyg" id="sample_wysiwyg" style="display:;">
                </textarea>
                <input type="hidden" name="_wysihtml5_mode" value="1">
                <iframe class="wysihtml5-sandbox" security="restricted" allowtransparency="true" frameborder="0"
                    width="0" height="0" marginwidth="0" marginheight="0"
                    style="display: block; background-color: rgb(255, 255, 255); border-collapse: separate; border-color: rgb(235, 235, 235); border-style: solid; border-width: 1px; clear: none; float: none; margin: 0px; outline: rgb(85, 85, 85) none 0px; outline-offset: 0px; padding: 6px 12px; position: static; inset: auto; z-index: auto; vertical-align: baseline; text-align: start; box-sizing: border-box; box-shadow: none; border-radius: 3px; width: 100%; height: 400px;"></iframe>
            </div>

        </div>


    </div>
    {!! Form::close() !!}
@endsection
