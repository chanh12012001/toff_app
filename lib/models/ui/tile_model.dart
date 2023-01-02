import 'package:toff_app/constants/constants.dart';

const String latestStatus = "Latest";
const String newtStatus = "New";
const String numberStatus = "2";

class Tile {
  final String title;
  final List<Tile> tiles;
  final String? iconString;
  final String? status;
  final int? level;

  const Tile({
    required this.title,
    this.tiles = const [],
    this.iconString = IconConstant.minus,
    this.status = "",
    this.level = 1,
  });
}

final tiles = <Tile>[
  const Tile(
    title: 'Dashboards',
    tiles: [
      Tile(title: "Default", level: 2),
      Tile(title: "Ecommerce", level: 2),
      Tile(title: "Crypto", level: 2),
    ],
    iconString: IconConstant.dashboard,
    status: numberStatus,
  ),
  const Tile(
    title: 'Widgets',
    tiles: [
      Tile(title: "General", level: 2),
      Tile(title: "Chart", level: 2),
    ],
    iconString: IconConstant.widgets,
  ),
  const Tile(
    title: 'Page Layout',
    tiles: [
      Tile(title: "Boxed", level: 2),
      Tile(title: "RTL", level: 2),
      Tile(title: "Dark Layout", level: 2),
      Tile(title: "Hide Nav Scroll", level: 2),
      Tile(title: "Footer Light", level: 2),
      Tile(title: "Footer Dark", level: 2),
      Tile(title: "Footer Fixed", level: 2),
    ],
    iconString: IconConstant.pageLayout,
  ),
  const Tile(
    title: 'Project',
    tiles: [
      Tile(title: "Project List", level: 2),
      Tile(title: "Create new", level: 2),
    ],
    iconString: IconConstant.project,
    status: newtStatus,
  ),
  const Tile(
    title: 'File Manager',
    iconString: IconConstant.fileManager,
  ),
  const Tile(
    title: 'Kanban Board',
    iconString: IconConstant.kanbanBoard,
    status: latestStatus,
  ),
  const Tile(
    title: 'E-Commerce',
    tiles: [
      Tile(title: "Product", level: 2),
      Tile(title: "Product page", level: 2),
      Tile(title: "Product list", level: 2),
      Tile(title: "Payment Details", level: 2),
      Tile(title: "Order History", level: 2),
      Tile(title: "Invoice", level: 2),
      Tile(title: "Cart", level: 2),
      Tile(title: "Wishlist", level: 2),
      Tile(title: "Checkout", level: 2),
      Tile(title: "Pricing", level: 2),
    ],
    iconString: IconConstant.ecommerce,
  ),
  const Tile(
    title: 'Email',
    tiles: [
      Tile(title: "Email App", level: 2),
      Tile(title: "Read mail", level: 2),
      Tile(title: "Email Compose", level: 2),
    ],
    iconString: IconConstant.email,
  ),
  const Tile(
    title: 'Chat',
    tiles: [
      Tile(title: "Chat App", level: 2),
      Tile(title: "Video chat", level: 2),
    ],
    iconString: IconConstant.chat,
  ),
  const Tile(
    title: 'Users',
    tiles: [
      Tile(title: "User Profile", level: 2),
      Tile(title: "Users Edit", level: 2),
      Tile(title: "Users Cards", level: 2),
    ],
    iconString: IconConstant.user,
  ),
  const Tile(
    title: 'Bookmarks',
    iconString: IconConstant.bookmark,
  ),
  const Tile(
    title: 'Contacts',
    iconString: IconConstant.contact,
  ),
  const Tile(
    title: 'Tasks',
    iconString: IconConstant.task,
  ),
  const Tile(
    title: 'Calendar',
    iconString: IconConstant.calendar,
  ),
  const Tile(
    title: 'Social App',
    iconString: IconConstant.socialApp,
  ),
  const Tile(
    title: 'Todo',
    iconString: IconConstant.todo,
  ),
  const Tile(
    title: 'Search Website',
    iconString: IconConstant.searchWeb,
  ),
  const Tile(
    title: 'Form',
    tiles: [
      Tile(
        title: "Form Controls",
        tiles: [
          Tile(title: "Form Validation", level: 3),
          Tile(title: "Base Inputs", level: 3),
          Tile(title: "Checkbox & Radio", level: 3),
          Tile(title: "Input Groups", level: 3),
          Tile(title: "Mega Options", level: 3),
        ],
        level: 2,
        iconString: IconConstant.minus,
      ),
      Tile(
        title: "Form Widgets",
        tiles: [
          Tile(title: "Datepicker", level: 3),
          Tile(title: "Timepicker", level: 3),
          Tile(title: "DateTimepicker", level: 3),
          Tile(title: "Daterangepicker", level: 3),
          Tile(title: "Touchspin", level: 3),
          Tile(title: "Select2", level: 3),
          Tile(title: "Switch", level: 3),
          Tile(title: "Typeahead", level: 3),
          Tile(title: "Clipboard", level: 3),
        ],
        level: 2,
        iconString: IconConstant.minus,
      ),
      Tile(
        title: "Form layout",
        tiles: [
          Tile(title: "Default Forms", level: 3),
          Tile(title: "Form Wizard 1", level: 3),
          Tile(title: "Form Wizard 2", level: 3),
          Tile(title: "Form Wizard 3", level: 3),
        ],
        level: 2,
        iconString: IconConstant.minus,
      ),
    ],
    iconString: IconConstant.form,
  ),
  const Tile(
    title: 'Tables',
    tiles: [
      Tile(
        title: "Bootstrap Tables",
        tiles: [
          Tile(title: "Basic Tables", level: 3),
          Tile(title: "Sizing Tables", level: 3),
          Tile(title: "Border Tables", level: 3),
          Tile(title: "Styling Tables", level: 3),
          Tile(title: "Table components", level: 3),
        ],
        level: 2,
        iconString: IconConstant.minus,
      ),
      Tile(
        title: "Data Tables",
        tiles: [
          Tile(title: "Basic Init", level: 3),
          Tile(title: "Advance Init", level: 3),
          Tile(title: "Styling", level: 3),
          Tile(title: "Daterangepicker", level: 3),
          Tile(title: "AJAX", level: 3),
          Tile(title: "Server Side", level: 3),
          Tile(title: "Plug-in", level: 3),
          Tile(title: "API", level: 3),
          Tile(title: "Data Sources", level: 3),
        ],
        level: 2,
        iconString: IconConstant.minus,
      ),
      Tile(
        title: "Ex. Data Tables",
        tiles: [
          Tile(title: "Auto Fill", level: 3),
          Tile(title: "Basic Button", level: 3),
          Tile(title: "Column Reorder", level: 3),
          Tile(title: "Fixed Header", level: 3),
          Tile(title: "HTML 5 Export", level: 3),
          Tile(title: "Key Table", level: 3),
          Tile(title: "Responsive", level: 3),
          Tile(title: "Row Reorder", level: 3),
          Tile(title: "Scroller", level: 3),
        ],
        level: 2,
        iconString: IconConstant.minus,
      ),
      Tile(
        title: "Js Grid Table",
        iconString: IconConstant.minus,
        level: 2,
      ),
    ],
    iconString: IconConstant.table,
  ),
  const Tile(
    title: "Ui Kits",
    tiles: [
      Tile(title: "State color", level: 2),
      Tile(title: "Typography", level: 2),
      Tile(title: "Avatars", level: 2),
      Tile(title: "helper classes", level: 2),
      Tile(title: "Grid", level: 2),
      Tile(title: "Tag & pills", level: 2),
      Tile(title: "Progress", level: 2),
      Tile(title: "Modal", level: 2),
      Tile(title: "Alert", level: 2),
      Tile(title: "Popover", level: 2),
      Tile(title: "Tooltip", level: 2),
      Tile(title: "Toasts", level: 2),
      Tile(title: "Spinners", level: 2),
      Tile(title: "Dropdown", level: 2),
      Tile(title: "Accordion", level: 2),
      Tile(
        title: "Tabs",
        tiles: [
          Tile(title: "Bootstrap Tabs", level: 3),
          Tile(title: "Line Tabs", level: 3),
        ],
        level: 2,
        iconString: IconConstant.minus,
      ),
      Tile(title: "Lists", level: 2),
    ],
    iconString: IconConstant.uiKit,
  ),
];
