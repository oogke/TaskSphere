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

update 
   Schema::table('users', function (Blueprint $table) {
            $table->string('profile', 400)->nullable()->change();
            $table->string('address')->nullable()->change();
            $table->string('gender')->nullable()->change();
            $table->string('citizenCardFront', 400)->nullable()->change();
            $table->string('citizenCardBack', 400)->nullable()->change();
        });


            Schema::table('user_verif_queues', function (Blueprint $table) {
            $table->string('fname')->nullable()->change();
            $table->string('lname')->nullable()->change();
        });



//userverif
         Schema::table('user_verif_queues', function (Blueprint $table) {
            $table->string('fname')->nullable()->change();
            $table->string('lname')->nullable()->change();
        });

        //user
           Schema::table('users', function (Blueprint $table) {
            $table->string('profile', 400)->nullable()->change();
            $table->string('address')->nullable()->change();
            $table->string('gender')->nullable()->change();
            $table->string('citizenCardFront', 400)->nullable()->change();
            $table->string('citizenCardBack', 400)->nullable()->change();
        });

//workspaces
        // Schema::create('workspaces', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('description');
            $table->date('sdate');
            $table->date('edate');
            $table->json('members');
            $table->string('leader');
            $table->string('status');
            $table->string('projectId');
            $table->timestamps();
        });

        //projects
        //   Schema::create('projects', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('description');
            $table->date('sdate');
            $table->date('edate');
            $table->json('members');
            $table->string('leader');
            $table->string('workspaceCount');
            $table->string('status');
            $table->timestamps();
        });

        
        //companies
         Schema::create('companies', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->date('edate');
            $table->string('address');
            $table->string('phone')->unique();
            $table->string('company_type');
            $table->string('website')->nullable();
            $table->string('CEO');
            $table->timestamps();
        });


//tasks
  Schema::create('tasks', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('description');
            $table->date('sdate');
            $table->date('edate');
            $table->json('members');
            $table->string('priority');
            $table->string('status');
            $table->string('workspaceId');
            $table->string('projectId');
            $table->string('status');

            $table->timestamps();
        });

 Schema::table('workspaces', function (Blueprint $table) {
           $table->string('status')->default('not started')->change();
           $table->string('projectId')->nullable()->change();
           $table->string('leader')->nullable()->change();
        });

         Schema::table('tasks', function (Blueprint $table) {
            $table->string('status')->default('not started')->change();
           $table->string('projectId')->nullable()->change();
           $table->string('workspaceId')->nullable()->change();
           $table->string('priority')->nullable()->change();
        });

         Schema::table('workspaces', function (Blueprint $table) {
           $table->string('status')->default('not started')->change();
           $table->string('projectId')->nullable()->change();
           $table->string('leader')->nullable()->change();
        });

         Schema::table('projects', function (Blueprint $table) {
            $table->string('status')->default('not started')->change();
            $table->string('workspaceCount')->nullable()->change();
            $table->string('leader')->nullable()->change();
        });