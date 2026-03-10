<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class NotifyComposeRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'subject' => 'required|string|max:255',
            'sample_wysiwyg' => 'required|string',
            'attachments.*' => 'required|file|max:10240|mimes:doc,docx,pdf,txt,jpeg,jpg,png', // Adjust max file size as needed
        ];
    }
}
