<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Mail\sendEmail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Http\Controllers\API\BaseController as BaseController;

class EmailController extends BaseController
{
    public function sendEmail(Request $request)
    {
            $content = $request->input("content");
            $subject = $request->input("subject");
            $email = $request->input("email");
            $footer = "Please do not share this email. This is a Professional Email.";
       try {
            Mail::to($email)->send(new sendEmail( $subject, $content, $footer));
    
            return $this->sendResponse("Msg has been sent", "mail sent");
        } catch (\Exception $e) {
            return response()->json([
                'error' => true,
                'message' => $e->getMessage()
            ], 500);
        }

    }

}
