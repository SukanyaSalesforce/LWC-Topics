trigger DeleteTask on Task (before Delete) {
  //  List<User> users=[Select Id,Name,Profile.Name from User where profile.Name='System Administrator'];
  Id pIds=userInfo.getProfileId();
    Profile p=[Select Id,Name from Profile where Id =:pIds];
    for(Task t:trigger.old)
    {
      if(p.Name !='System Administrator')
          t.addError('Dont delete task');
    }

}