PORTNAME=	tokodon
DISTVERSIONPREFIX=	v
DISTVERSION=	23.01.0
CATEGORIES=	net-im kde kde-applications
MASTER_SITES=	KDE/stable/${PORTNAME}/${PORTVERSION}

MAINTAINER=	vidar@karlsen.tech
COMMENT=	KDE mastodon client
WWW=		https://apps.kde.org/tokodon/

LICENSE=	GPLv3

BUILD_DEPENDS=	kirigami-addons>=0.6.1:x11-toolkits/kirigami-addons
LIB_DEPENDS=	libqt5keychain.so:security/qtkeychain \
		libQt5Widgets.so:x11-toolkits/qt5-widgets

USES=		cmake desktop-file-utils kde:5 qt:5 xorg gettext
USE_KDE=	kirigami2 qqc2-desktop-style windowsystem widgetsaddons solid \
		service notifications kio jobwidgets i18n dbusaddons \
		coreaddons widgetsaddons config completion
USE_QT=		qmake:build buildtools:build multimedia websockets quickcontrols2 \
		declarative network xml gui dbus core concurrent
USE_XORG=	ice sm x11 xext

.include <bsd.port.mk>
