const RootRoute = '/';

const OverViewPageDisplayName = 'Overview';
const OverViewPageRoute = '/overview';

const DriversPageDisplayName = 'Drivers';
const DriversPageRoute = '/drivers';

const ClientsPageDisplayName = 'Clients';
const ClientsPageRoute = '/clients';

const AuthenticationPageDisplayName = 'Log Out';
const AuthenticationPageRoute = '/auth';

const NotFoundPageDisplayName = '';
const NotFoundPageRoute = '/not-found';

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItems = [
  MenuItem(OverViewPageDisplayName, OverViewPageRoute),
  MenuItem(DriversPageDisplayName, DriversPageRoute),
  MenuItem(ClientsPageDisplayName, ClientsPageRoute),
  MenuItem(AuthenticationPageDisplayName, AuthenticationPageRoute)
];
