import 'package:bloc/bloc.dart';

enum MembershipState {
  notMember,
  userMember,
  committeeMember,
}

class MembershipBloc extends Cubit<MembershipState> {
  MembershipBloc() : super(MembershipState.notMember);

  void updateMembership(bool isUserMember, bool isCommitteeMember) {
    if (isCommitteeMember) {
      emit(MembershipState.committeeMember);
    } else if (isUserMember) {
      emit(MembershipState.userMember);
    } else {
      emit(MembershipState.notMember);
    }
  }
}
