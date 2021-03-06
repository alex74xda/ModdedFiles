.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;
.super Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
.source "DeskNotificationIconAreaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController$1;
    }
.end annotation


# instance fields
.field private mHoverPopupPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

.field private mMouse:Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$Mouse;

.field private mNotificationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mNotificationMap:Ljava/util/Map;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mTimeComparator:Ljava/util/Comparator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->setExpanded(Z)V

    return-void
.end method

.method public static getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;
    .locals 5

    move-object v0, p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x4

    invoke-virtual {p0, v2, v4, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setHoverPopupPreShowListener()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController$2;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mHoverPopupPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    return-void
.end method

.method private updateNotificationIconsAreaWidth()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->getMaxWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    const v2, 0x800013

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->setGravity(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/IconMerger;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mMouse:Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$Mouse;

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->clear()V

    return-void
.end method

.method public collapseIconArea(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->setExpanded(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->updateNotificationIconsAreaWidth()V

    :cond_0
    return-void
.end method

.method public expandIconArea(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->setExpanded(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->updateNotificationIconsAreaWidth()V

    :cond_0
    return-void
.end method

.method protected generateIconLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mIconSize:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mIconSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getAppName(Lcom/android/systemui/statusbar/NotificationData$Entry;)Ljava/lang/String;
    .locals 7

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, ""

    const/16 v5, 0x2200

    :try_start_0
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getHoverPopupPreShowListener()Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mHoverPopupPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mHoverPopupPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    return-object v0

    :cond_0
    return-object v1
.end method

.method protected inflateIconArea(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    const v0, 0x7f04004a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initializeNotificationAreaViews(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->initializeNotificationAreaViews(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->setHoverPopupPreShowListener()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mMoreIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->getHoverPopupPreShowListener()Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->setTooltip(Landroid/view/View;Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mMoreIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController$3;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mMoreIcon:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContextClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mMoreIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController$4;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    return-void
.end method

.method public isDeskAllNotificationViewVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeskAllNotificationViewVisible()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDensityOrFontScaleChanged(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->reloadDimens(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->generateIconLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->applyNotificationIconsTint()V

    return-void
.end method

.method protected reloadDimens(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d064b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mIconSize:I

    const v1, 0x7f0d064c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mIconHPadding:I

    return-void
.end method

.method public setMouse(Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$Mouse;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mMouse:Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$Mouse;

    return-void
.end method

.method public setTooltip(Landroid/view/View;Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setTooltip(Landroid/view/View;Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;)V

    :cond_0
    return-void
.end method

.method protected shouldShowNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->shouldShowNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isMarkedDex()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public updateNotificationIcons(Lcom/android/systemui/statusbar/NotificationData;)V
    .locals 25

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->generateIconLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mTimeComparator:Ljava/util/Comparator;

    invoke-static {v8, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v20

    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v15, 0x0

    :goto_0
    move/from16 v0, v20

    if-ge v15, v0, :cond_4

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v13, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->shouldShowNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mNotificationMap:Ljava/util/Map;

    iget-object v4, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, v18

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;

    iget-object v3, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v0, v18

    invoke-virtual {v11, v3, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->isSameView(Lcom/android/systemui/statusbar/StatusBarIconView;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v16, 0x1

    :cond_0
    if-eqz v16, :cond_3

    if-eqz v11, :cond_3

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mIconHPadding:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mIconHPadding:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mIconHPadding:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mIconHPadding:I

    invoke-virtual {v11, v3, v4, v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->setPaddingRelative(IIII)V

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->getHoverPopupPreShowListener()Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->setTooltip(Landroid/view/View;Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;)V

    :cond_1
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mMouse:Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$Mouse;

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;ZLcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$Mouse;)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->setKey(Ljava/lang/String;)V

    iget-object v3, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->setIcon(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->getAppName(Lcom/android/systemui/statusbar/NotificationData$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mIconHPadding:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mIconHPadding:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mIconHPadding:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mIconHPadding:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->setPaddingRelative(IIII)V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->getHoverPopupPreShowListener()Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->setTooltip(Landroid/view/View;Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v3

    if-ge v15, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v3, v15}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/4 v15, 0x0

    :goto_4
    move/from16 v0, v22

    if-ge v15, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->checkOverflow()V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->updateNotificationIconsAreaWidth()V

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    :goto_5
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_9

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v15, v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->checkOverflow()V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->updateNotificationIconsAreaWidth()V

    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v12

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v12, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v3, v15}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-ne v9, v14, :cond_a

    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v3, v14}, Lcom/android/systemui/statusbar/phone/IconMerger;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v3, v14, v15}, Lcom/android/systemui/statusbar/phone/IconMerger;->addView(Landroid/view/View;I)V

    goto :goto_7

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->applyNotificationIconsTint()V

    return-void
.end method
