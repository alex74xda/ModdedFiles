.class public Lcom/android/contacts/common/vcard/ExportVCardActivity;
.super Landroid/app/Activity;
.source "ExportVCardActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field protected static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "VCardExport"

.field private static final REQUEST_CREATE_DOCUMENT:I = 0x64

.field private static final mBidiFormatter:Landroid/text/BidiFormatter;


# instance fields
.field protected mConnected:Z

.field private mErrorReason:Ljava/lang/String;

.field private volatile mProcessOngoing:Z

.field protected mService:Lcom/android/contacts/common/vcard/VCardService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mBidiFormatter:Landroid/text/BidiFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mProcessOngoing:Z

    return-void
.end method

.method private connectVCardService()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "CALLING_ACTIVITY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/common/vcard/VCardService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "CALLING_ACTIVITY"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "VCardExport"

    const-string v3, "Failed to start vCard service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->showErrorDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v1, p0, v2}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "VCardExport"

    const-string v3, "Failed to connect to vCard service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->showErrorDialog()V

    goto :goto_0
.end method

.method private getCreateDocIntent()Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/x-vcard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TITLE"

    sget-object v2, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mBidiFormatter:Landroid/text/BidiFormatter;

    const v3, 0x7f0904dd

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v2, v3, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static getOpenableUriDisplayName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "_display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private hasExportIntentHandler()Z
    .locals 4

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getCreateDocIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showErrorDialog()V
    .locals 1

    const v0, 0x7f0904eb

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    const v0, 0x7f10000d

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->showDialog(I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/16 v2, 0x64

    if-ne p1, v2, :cond_1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Lcom/android/contacts/common/vcard/ExportRequest;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/vcard/ExportRequest;-><init>(Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    new-instance v3, Lcom/android/contacts/common/vcard/NotificationImportExportListener;

    invoke-direct {v3, p0}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0, v3}, Lcom/android/contacts/common/vcard/VCardService;->handleExportRequest(Lcom/android/contacts/common/vcard/ExportRequest;Lcom/android/contacts/common/vcard/VCardImportExportListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->unbindAndFinish()V

    :cond_1
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mProcessOngoing:Z

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->unbindAndFinish()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->unbindAndFinish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/contacts/common/activity/RequestImportVCardPermissionsActivity;->startPermissionActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->hasExportIntentHandler()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VCardExport"

    const-string v1, "Couldn\'t find export intent handler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->showErrorDialog()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->connectVCardService()V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    const/4 v4, 0x0

    const v0, 0x7f10000d

    if-ne p1, v0, :cond_1

    iput-boolean v4, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mProcessOngoing:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0904d9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0904d8

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    :goto_0
    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const v0, 0x7f0904eb

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x7f10000d

    if-ne p1, v0, :cond_0

    check-cast p2, Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mConnected:Z

    check-cast p2, Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    invoke-virtual {p2}, Lcom/android/contacts/common/vcard/VCardService$MyBinder;->getService()Lcom/android/contacts/common/vcard/VCardService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getCreateDocIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mConnected:Z

    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mProcessOngoing:Z

    if-eqz v0, :cond_0

    const-string v0, "VCardExport"

    const-string v1, "Disconnected from service during the process ongoing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->showErrorDialog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized unbindAndFinish()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mConnected:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mConnected:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mProcessOngoing:Z

    invoke-super {p0, p1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
