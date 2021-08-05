import 'package:crowd_funding_app/Models/team_member.dart';
import 'package:crowd_funding_app/services/data_provider/team_member.dart';

class TeamMemberRepository {
  final TeamMemberDataProvider teamMemberDataProvider;
  TeamMemberRepository({
    required this.teamMemberDataProvider,
  });

  Future<TeamMember> createTeamMember(
      String email, String token, String fundraiseId) async {
    return await teamMemberDataProvider.createTeamMember(
        email, token, fundraiseId);
  }

  Future<String> verifyTeamMember(
      bool status, String token, String fundraiseId) async {
    return await teamMemberDataProvider.verifyTeamMember(
        status, token, fundraiseId);
  }
}
