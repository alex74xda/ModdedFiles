.class public Lcom/android/settingslib/drawer/SettingsDrawerActivity;
.super Landroid/app/Activity;
.source "SettingsDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/drawer/SettingsDrawerActivity$1;,
        Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;,
        Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;,
        Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;
    }
.end annotation


# static fields
.field private static sChangeDeviceLocale:Ljava/lang/String;

.field private static sConfigTracker:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field private static sDashboardCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static sTileBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static sTileCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCategoryListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private final mPackageReceiver:Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

.field private mSettingsUIObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0()Lcom/android/settingslib/applications/InterestingConfigChanges;
    .locals 1

    sget-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sConfigTracker:Lcom/android/settingslib/applications/InterestingConfigChanges;

    return-object v0
.end method

.method static synthetic -get1()Landroid/util/ArraySet;
    .locals 1

    sget-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get2()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -set0(Ljava/util/List;)Ljava/util/List;
    .locals 0

    sput-object p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sDashboardCategories:Ljava/util/List;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sChangeDeviceLocale:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;)V

    iput-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mPackageReceiver:Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    new-instance v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$1;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mSettingsUIObserver:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public getDashboardCategories()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v1, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sDashboardCategories:Ljava/util/List;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sChangeDeviceLocale:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sChangeDeviceLocale:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    sput-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sChangeDeviceLocale:Ljava/lang/String;

    sget-object v1, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sDashboardCategories:Ljava/util/List;

    return-object v1

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileCache:Ljava/util/HashMap;

    new-instance v1, Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-direct {v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>()V

    sput-object v1, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sConfigTracker:Lcom/android/settingslib/applications/InterestingConfigChanges;

    sget-object v1, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sConfigTracker:Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/Context;)Z

    sget-object v1, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileCache:Ljava/util/HashMap;

    invoke-static {p0, v1}, Lcom/android/settingslib/drawer/TileUtils;->getCategories(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sDashboardCategories:Ljava/util/List;

    goto :goto_0
.end method

.method protected onCategoriesChanged()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->updateDrawer()V

    iget-object v2, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;

    invoke-interface {v2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;->onCategoriesChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    sget v2, Lcom/android/settingslib/R$layout;->settings_with_drawer:I

    invoke-super {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    sget v2, Lcom/android/settingslib/R$id;->drawer_layout:I

    invoke-virtual {p0, v2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout;

    iput-object v2, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getDashboardCategories()Ljava/util/List;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mSettingsUIObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mSettingsUIObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mPackageReceiver:Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mSettingsUIObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "settings_ui"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mSettingsUIObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mPackageReceiver:Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;

    invoke-direct {v1, p0, v4}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public setContentView(I)V
    .locals 2

    sget v1, Lcom/android/settingslib/R$id;->content_frame:I

    invoke-virtual {p0, v1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/android/settingslib/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    sget v0, Lcom/android/settingslib/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateDrawer()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    return-void
.end method
