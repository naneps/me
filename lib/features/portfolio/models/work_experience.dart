class CompanyModel {
  final String? name;
  final String? url;
  final String? logoUrl;
  final String? address;

  CompanyModel({this.name, this.url, this.logoUrl, this.address});
}

enum EmploymentType { fullTime, partTime, freelance }

enum LocationType { remote, onsite, hybrid }

class WorkExperienceModel {
  final CompanyModel? company;
  final EmploymentType? employmentType;
  final String? position;
  final String? startDate;
  final String? endDate;
  final String? description;

  WorkExperienceModel({
    this.company,
    this.employmentType,
    this.position,
    this.startDate,
    this.endDate,
    this.description,
  });
}
