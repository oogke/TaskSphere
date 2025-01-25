userVerifQueues
     Schema::create('user_verif_queues', function (Blueprint $table) {
            $table->id();
            $table->string("fname");
            $table->string("lname");
            $table->string("phone");
            $table->string("email",40)->unique();
            $table->string("password", 255);
            $table->timestamps();
        });

users
        Schema::create('users', function (Blueprint $table) {
            $table->id();
             $table->string('profile',400);
            $table->string('fname');
            $table->string('lname');
            $table->string('address');
            $table->string('phone');
            $table->string('gender');
            $table->string('scode',255);
            $table->string('email')->unique();
            $table->string('password',255);
            $table->string('citizenCardFront',400);
            $table->string('citizenCardBack',400);
            $table->timestamps();
        });
