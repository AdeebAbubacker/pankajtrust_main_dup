part of 'students_app_form_bloc.dart';

@immutable
 class StudentsAppFormEvent {}

class DoYouHaveBankAccEvent extends StudentsAppFormEvent{
   bool forBankAccountholder;
   final int currentStep;
  DoYouHaveBankAccEvent({this.forBankAccountholder = false,this.currentStep = 0});
}

class ForNoAccBankAccEvent extends StudentsAppFormEvent{
   bool forNoAccountUsers;
  ForNoAccBankAccEvent(this.forNoAccountUsers,);
}

// class NextStepEvent extends StudentsAppFormEvent {
//   final int currentStep;

//   NextStepEvent({this.currentStep = 0});
// }

 









