.class public Lcom/android/incallui/InVideoCallMenu;
.super Lcom/android/incallui/InCallMenu;
.source "InVideoCallMenu.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "InVideoCallMenu"


# instance fields
.field private final DIALOG_OUTGOING_IMAGE:I

.field private final DIALOG_SNA_INFO:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mIsSelectedImage:Z

.field private mOutgoingImageDialog:Landroid/app/AlertDialog;

.field private mOutgoingImageList:[Ljava/lang/String;

.field private mSimulateDialog:Landroid/app/AlertDialog;

.field private mUniqueMenuId:I

.field private mUniqueMenuItem:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallMenu;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/InVideoCallMenu;->DIALOG_OUTGOING_IMAGE:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/incallui/InVideoCallMenu;->DIALOG_SNA_INFO:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InVideoCallMenu;->mSimulateDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InVideoCallMenu;->mIsSelectedImage:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/InVideoCallMenu;->mUniqueMenuId:I

    const-string v0, "InVideoCallMenu"

    const-string v1, "InVideoCallMenu constructor..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/InVideoCallMenu;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/InVideoCallMenu;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/InVideoCallMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->updateVideoCallButtons()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/InVideoCallMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->updateIncomingVideoCallButton()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/InVideoCallMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->updateVideoCallCard()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/InVideoCallMenu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InVideoCallMenu;->mIsSelectedImage:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/incallui/InVideoCallMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/InVideoCallMenu;->mIsSelectedImage:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/incallui/InVideoCallMenu;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/incallui/InVideoCallMenu;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InVideoCallMenu;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private canAddCall()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isConnectedMirrorLink()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MENU_BLOCK_ADDCALL:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getCallToDisplay()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/TelecomAdapter;->canAddCall()Z

    move-result v0

    goto :goto_0
.end method

.method private checkEmergencyCallMenu()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MENU_EMERGENCY:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkShowHideMenu()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isUsaUX()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/InVideoCallMenu;->mdmGetAllowCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InVideoCallMenu;->mdmIsCameraEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private checkSwitchToDeviceMenu()Z
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkSwitchToVoiceCall()Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_JPN_DCM()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v2

    if-nez v2, :cond_0

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    :cond_0
    return v1
.end method

.method private clickedCallTransfer()V
    .locals 3

    const-string v1, "jansky_info_for_tmo"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private clickedImageEffect()V
    .locals 1

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAMERA_EFFECT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/InVideoCallMenu;->showCameraEffectLayout(Z)V

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->updateSwitchButtonLayout()V

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->updateCameraEffectLayout()V

    :cond_0
    return-void
.end method

.method private clickedKeypad(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/incallui/UiAdapter;->displayDialpad(ZZ)V

    return-void
.end method

.method private clickedOutgoingImage()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isCameraRestricted()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f090505

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x64

    invoke-direct {p0, v1}, Lcom/android/incallui/InVideoCallMenu;->showDialog(I)V

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->hideCameraEffectLayout()V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->clearCameraEffect()V

    goto :goto_0
.end method

.method private clickedResizeScreen(Z)V
    .locals 3

    const/4 v2, 0x1

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->RESIZE_SCREEN:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/service/vt/VideoCallManager;->setScreenResized(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/UiAdapter;->showVideoInCallResize(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setScreenResized(Z)V

    goto :goto_0
.end method

.method private clickedSpeaker(I)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->canUpdateVTSpeakerState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isIncomingVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->storeSpeakerState(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->storeSpeakerState(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/UiAdapter;->setAudioMode(I)V

    goto :goto_0
.end method

.method private clickedStartRecord()V
    .locals 2

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->startRecord(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/InVideoCallMenu;->showRecordingInfo(ZZ)V

    :cond_0
    return-void
.end method

.method private clickedStopRecord()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->stopRecord()V

    invoke-direct {p0, v0, v0}, Lcom/android/incallui/InVideoCallMenu;->showRecordingInfo(ZZ)V

    return-void
.end method

.method private clickedSwitchCamera()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->switchCameraClicked()V

    return-void
.end method

.method private clickedSwitchToVoiceCall()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCall_voiceCallDowngrade()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyRequest(I)V

    return-void
.end method

.method private clickedSwitchVideoDisplay()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->switchVideoDisplay()V

    return-void
.end method

.method private clickedVideoConfCall()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->showAddUserForConferenceCall()V

    return-void
.end method

.method private getCallToDisplay()Lcom/android/incallui/Call;
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method private getSecUiAdapter()Lcom/android/incallui/UiAdapter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    return-object v0
.end method

.method private getSwitchToDeviceMenuTitle()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const-string v4, "secOnscreenMenuSwitchToPhoneText"

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const-string v4, "secOnscreenMenuSwitchToHeadsetText"

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hideCameraEffectLayout()V
    .locals 1

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAMERA_EFFECT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/InVideoCallMenu;->showCameraEffectLayout(Z)V

    :cond_0
    return-void
.end method

.method private isDialpadVisible()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isDialpadVisible()Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "InVideoCallMenu"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private manageAddCallMenu(Landroid/view/Menu;)V
    .locals 4

    const v2, 0x7f100479

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->canAddCall()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manageAddCallMenu "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->menu(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->canAddCall()Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private manageCaptureImageMenu(Landroid/view/Menu;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    const v2, 0x7f10047e

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isKioskMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v2

    if-nez v2, :cond_0

    sget v2, Lcom/android/incallui/service/vt/VideoCallCapability;->PRIVACY_CAPTURE:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->isDisplayReady()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_1
    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private manageEmergencyCallMenu(Landroid/view/MenuItem;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->checkEmergencyCallMenu()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private manageHideShowMenu(Landroid/view/Menu;)V
    .locals 4

    const/4 v3, 0x0

    const v2, 0x7f10047b

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f10047c

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private manageHoldMenu(Landroid/view/Menu;)V
    .locals 10

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v4

    const v7, 0x7f10009a

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isCSVideoCall()Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_0
    const-string v7, "InVideoCallMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "manageHoldMenu: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void

    :cond_1
    if-eqz v6, :cond_2

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_5

    const v7, 0x7f090058

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_2
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    move-object v1, v5

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    move-object v1, v4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const v7, 0x7f09004b

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method private manageImageEffectMenu(Landroid/view/Menu;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    const v2, 0x7f10047a

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    sget-boolean v2, Lcom/android/incallui/service/vt/VideoCallConfig;->CAMERA_EFFECT:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_1
    return-void

    :cond_1
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private manageKeypadMenu(Landroid/view/MenuItem;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_1
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->isDialpadVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private manageOutgoingImageMenu(Landroid/view/Menu;)V
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v3

    const v8, 0x7f10047d

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isKorUX()Z

    move-result v8

    if-eqz v8, :cond_0

    const v8, 0x7f090274

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_0
    const/4 v5, 0x0

    sget-boolean v8, Lcom/android/incallui/service/vt/VideoCallConfig;->PICK_GALLERY_IMAGE:Z

    if-eqz v8, :cond_7

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    if-eqz v3, :cond_6

    :cond_1
    move v5, v7

    :goto_0
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isCSVideoCall()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v5, 0x0

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    const/4 v5, 0x0

    :cond_4
    if-eqz v5, :cond_8

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    const/4 v1, 0x1

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v1

    :goto_2
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_a

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_3
    return-void

    :cond_6
    move v5, v6

    goto :goto_0

    :cond_7
    const/4 v5, 0x0

    goto :goto_0

    :cond_8
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_9
    const/4 v1, 0x1

    goto :goto_2

    :cond_a
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method private manageRecordMenu(Landroid/view/Menu;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    const v4, 0x7f10047f

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v4, 0x7f100480

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v4, 0x7f100481

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "disable_record_button"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isFarEndRecord()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private manageResizeScreenMenu(Landroid/view/Menu;)V
    .locals 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    const v6, 0x7f10048a

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v6, 0x7f100489

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/service/vt/VideoCallManager;->isScreenResized()Z

    move-result v2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/UiAdapter;->isDisplayReady()Z

    move-result v1

    sget-boolean v6, Lcom/android/incallui/service/vt/VideoCallConfig;->RESIZE_SCREEN:Z

    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "VGA"

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v3, 0x1

    :cond_1
    const-string v6, "InVideoCallMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "manageResizeScreenMenu resized = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", enabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", showResizeMenu"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    move v6, v7

    :goto_0
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    move v6, v7

    :goto_1
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    move v6, v7

    :goto_2
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    if-eqz v1, :cond_5

    :goto_3
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void

    :cond_2
    move v6, v8

    goto :goto_0

    :cond_3
    move v6, v8

    goto :goto_1

    :cond_4
    move v6, v8

    goto :goto_2

    :cond_5
    move v7, v8

    goto :goto_3
.end method

.method private manageSpeakerMenu(Landroid/view/Menu;)V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    const v8, 0x7f100483

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const v8, 0x7f100484

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isCSVideoCall()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_0
    :goto_0
    const-string v8, "no_receiver_in_call"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v3, 0x0

    :cond_1
    if-nez v1, :cond_6

    move v2, v6

    :goto_1
    const/4 v0, 0x1

    if-eqz v3, :cond_a

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_7

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_2
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_3
    return-void

    :cond_3
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isKorUX()Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v1, :cond_4

    move v3, v6

    :goto_4
    goto :goto_0

    :cond_4
    move v3, v7

    goto :goto_4

    :cond_5
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isUsaUX()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_6
    move v2, v7

    goto :goto_1

    :cond_7
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/TelecomAdapter;->wasVTSpeakerOn()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_5
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->canUpdateVTSpeakerState()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_9
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5

    :cond_a
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method private manageSwitchToDeviceMenu(Landroid/view/Menu;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    const v3, 0x7f100485

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v3, 0x7f100486

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const-string v5, "secOnscreenMenuSwitchToHeadsetText"

    invoke-virtual {v3, v4, v5}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const-string v5, "secOnscreenMenuSwitchToPhoneText"

    invoke-virtual {v3, v4, v5}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    const-string v3, "no_receiver_in_call"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private manageSwitchToVoiceCall(Landroid/view/Menu;)V
    .locals 2

    const v1, 0x7f10048d

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->checkSwitchToVoiceCall()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private manageSwitchVideoDisplay(Landroid/view/Menu;)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f10048e

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private manageVideoConfCallMenu(Landroid/view/Menu;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_KOR_LGU()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v5, 0x8000000

    invoke-virtual {v0, v5}, Lcom/android/incallui/Call;->can(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    :goto_0
    if-eqz v1, :cond_0

    const v5, 0x7f10048c

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private showCameraEffectLayout(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/UiAdapter;->showCameraEffectLayout(Z)V

    return-void
.end method

.method private showDialog(I)V
    .locals 11

    const v10, 0x7f090214

    const v9, 0x7f090202

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isKorUX()Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f090274

    :goto_0
    sparse-switch p1, :sswitch_data_0

    :goto_1
    return-void

    :cond_0
    const v2, 0x7f090275

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isKorUX()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_1

    new-array v4, v7, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iput-object v4, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    :goto_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    new-instance v6, Lcom/android/incallui/InVideoCallMenu$1;

    invoke-direct {v6, p0}, Lcom/android/incallui/InVideoCallMenu$1;-><init>(Lcom/android/incallui/InVideoCallMenu;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v4, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v4}, Lcom/android/incallui/InVideoCallMenu;->setDialogDimEffect(Landroid/app/AlertDialog;)V

    iget-object v4, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    iget-object v4, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    :cond_1
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const v6, 0x7f0902ae

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const v6, 0x7f090203

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    iput-object v4, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v4

    if-eqz v4, :cond_3

    new-array v4, v8, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const v6, 0x7f090203

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iput-object v4, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    goto :goto_2

    :cond_3
    new-array v4, v7, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iput-object v4, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    goto/16 :goto_2

    :cond_4
    new-array v4, v8, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iput-object v4, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    goto/16 :goto_2

    :cond_5
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const v6, 0x7f090204

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    iput-object v4, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    goto/16 :goto_2

    :sswitch_1
    iget-object v4, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const v5, 0x7f04003f

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v4, 0x1020001

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/InVideoCallMenu$2;

    invoke-direct {v4, p0, v3}, Lcom/android/incallui/InVideoCallMenu$2;-><init>(Lcom/android/incallui/InVideoCallMenu;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090046

    new-instance v6, Lcom/android/incallui/InVideoCallMenu$4;

    invoke-direct {v6, p0}, Lcom/android/incallui/InVideoCallMenu$4;-><init>(Lcom/android/incallui/InVideoCallMenu;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0900c9

    new-instance v6, Lcom/android/incallui/InVideoCallMenu$3;

    invoke-direct {v6, p0}, Lcom/android/incallui/InVideoCallMenu$3;-><init>(Lcom/android/incallui/InVideoCallMenu;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/incallui/InVideoCallMenu;->mDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/InVideoCallMenu;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/incallui/InVideoCallMenu;->mDialog:Landroid/app/AlertDialog;

    :cond_6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/InVideoCallMenu;->mDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/incallui/InVideoCallMenu;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method private showRecordingInfo(ZZ)V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/UiAdapter;->showRecordingInfo(ZZ)V

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->updateVideoRecordButton()V

    return-void
.end method

.method private updateIncomingVideoCallButton()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->updateIncomingHideButton()V

    return-void
.end method

.method private updateVideoCallButtons()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/UiAdapter;->updateCallButtons(Lcom/android/incallui/Call;)V

    return-void
.end method

.method private updateVideoCallCard()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/UiAdapter;->updateCallCard(Lcom/android/incallui/Call;)V

    return-void
.end method


# virtual methods
.method public addCallClicked()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->addCallClicked()V

    return-void
.end method

.method public clickedCaptureImage()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v3}, Lcom/android/incallui/util/VideoCallUtils;->captureImage(Z)V

    return-void
.end method

.method public clickedHideMe()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage()V

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->updateVideoCallButtons()V

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->hideCameraEffectLayout()V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->clearCameraEffect()V

    :cond_0
    return-void
.end method

.method public clickedShowMe()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isCameraRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0900c6

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendLiveVideo()V

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->updateVideoCallButtons()V

    goto :goto_0
.end method

.method public clickedSwitchToDevice()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->bluetoothClicked()V

    return-void
.end method

.method public dismissDialogs()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/incallui/InVideoCallMenu;->mOutgoingImageDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/incallui/InVideoCallMenu;->mDialog:Landroid/app/AlertDialog;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu;->mSimulateDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu;->mSimulateDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/incallui/InVideoCallMenu;->mSimulateDialog:Landroid/app/AlertDialog;

    :cond_2
    return-void
.end method

.method public getShowHideMenuTitle()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f0902a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f0902a9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUniqueMenuId()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/InVideoCallMenu;->mUniqueMenuId:I

    return v0
.end method

.method public getUniqueMenuItem()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    return-object v0
.end method

.method public holdClicked(Z)V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "holdClicked - call = null"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Putting the call on hold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing the call from hold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isExistOptionsItem()Z
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/incallui/InVideoCallMenu;->mUniqueMenuId:I

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->checkShowHideMenu()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/InVideoCallMenu;->getShowHideMenuTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/InVideoCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->checkSwitchToDeviceMenu()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    iput-object v3, p0, Lcom/android/incallui/InVideoCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->getSwitchToDeviceMenuTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/InVideoCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->checkEmergencyCallMenu()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x1

    const-string v2, "InVideoCallMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isExistOptionsItem emergency call option present"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->getInstance()Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->isExistDeviceList()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_6

    iput-object v3, p0, Lcom/android/incallui/InVideoCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090269

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InVideoCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    const v1, 0x7f100490

    iput v1, p0, Lcom/android/incallui/InVideoCallMenu;->mUniqueMenuId:I

    goto :goto_0
.end method

.method mdmGetAllowCamera()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getAllowCamera()Z

    move-result v0

    return v0
.end method

.method mdmIsCameraEnabled()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isCameraEnabled()Z

    move-result v0

    return v0
.end method

.method public optionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    const/16 v8, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v3, "InVideoCallMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- optionsItemSelected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  id: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/InVideoCallMenu;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  title: \'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/InVideoCallMenu;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    const-string v3, "InVideoCallMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "optionsItemSelected("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "), but null mContext!"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v5

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, v6, v5}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    const-string v3, "InVideoCallMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "optionsItemSelected:  unexpected View ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (MenuItem = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/InCallMenu;->optionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/InVideoCallMenu;->addCallClicked()V

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCall_addCall()V

    :cond_2
    :goto_1
    move v5, v4

    goto :goto_0

    :sswitch_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v8, :cond_4

    move v2, v4

    :goto_2
    if-nez v2, :cond_5

    move v3, v4

    :goto_3
    invoke-static {v3}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_hold(Z)V

    if-nez v2, :cond_3

    move v5, v4

    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/incallui/InVideoCallMenu;->holdClicked(Z)V

    goto :goto_1

    :cond_4
    move v2, v5

    goto :goto_2

    :cond_5
    move v3, v5

    goto :goto_3

    :sswitch_2
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->clickedImageEffect()V

    goto :goto_1

    :sswitch_3
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_hideMe()V

    invoke-virtual {p0}, Lcom/android/incallui/InVideoCallMenu;->clickedHideMe()V

    goto :goto_1

    :sswitch_4
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_showMe()V

    invoke-virtual {p0}, Lcom/android/incallui/InVideoCallMenu;->clickedShowMe()V

    goto :goto_1

    :sswitch_5
    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_outgoingImage(I)V

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->clickedOutgoingImage()V

    goto :goto_1

    :sswitch_6
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_captureImage()V

    invoke-virtual {p0}, Lcom/android/incallui/InVideoCallMenu;->clickedCaptureImage()V

    goto :goto_1

    :sswitch_7
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_recordOn()V

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->clickedStartRecord()V

    goto :goto_1

    :sswitch_8
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_recordOff()V

    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->clickedStopRecord()V

    goto :goto_1

    :sswitch_9
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->clickedSwitchCamera()V

    goto :goto_1

    :sswitch_a
    invoke-static {v1, v4}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_keypad(IZ)V

    invoke-direct {p0, v4}, Lcom/android/incallui/InVideoCallMenu;->clickedKeypad(Z)V

    goto :goto_1

    :sswitch_b
    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_speaker(I)V

    invoke-direct {p0, v8}, Lcom/android/incallui/InVideoCallMenu;->clickedSpeaker(I)V

    goto :goto_1

    :sswitch_c
    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_speakerOff(I)V

    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/android/incallui/InVideoCallMenu;->clickedSpeaker(I)V

    goto :goto_1

    :sswitch_d
    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_bluetoothOn(I)V

    invoke-virtual {p0}, Lcom/android/incallui/InVideoCallMenu;->clickedSwitchToDevice()V

    goto :goto_1

    :sswitch_e
    invoke-static {v1}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_bluetoothOff(I)V

    invoke-virtual {p0}, Lcom/android/incallui/InVideoCallMenu;->clickedSwitchToDevice()V

    goto :goto_1

    :sswitch_f
    invoke-direct {p0, v4}, Lcom/android/incallui/InVideoCallMenu;->clickedResizeScreen(Z)V

    goto :goto_1

    :sswitch_10
    invoke-direct {p0, v5}, Lcom/android/incallui/InVideoCallMenu;->clickedResizeScreen(Z)V

    goto :goto_1

    :sswitch_11
    invoke-virtual {p0}, Lcom/android/incallui/InVideoCallMenu;->clickedSwitchToDevice()V

    goto :goto_1

    :sswitch_12
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->clickedVideoConfCall()V

    goto/16 :goto_1

    :sswitch_13
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->clickedCallTransfer()V

    goto/16 :goto_1

    :sswitch_14
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->clickedSwitchToVoiceCall()V

    goto/16 :goto_1

    :sswitch_15
    invoke-direct {p0}, Lcom/android/incallui/InVideoCallMenu;->clickedSwitchVideoDisplay()V

    goto/16 :goto_1

    :sswitch_16
    invoke-static {}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->getInstance()Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->showDeviceList()V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x7f10009a -> :sswitch_1
        0x7f100479 -> :sswitch_0
        0x7f10047a -> :sswitch_2
        0x7f10047b -> :sswitch_3
        0x7f10047c -> :sswitch_4
        0x7f10047d -> :sswitch_5
        0x7f10047e -> :sswitch_6
        0x7f10047f -> :sswitch_7
        0x7f100480 -> :sswitch_8
        0x7f100481 -> :sswitch_9
        0x7f100482 -> :sswitch_a
        0x7f100483 -> :sswitch_b
        0x7f100484 -> :sswitch_c
        0x7f100485 -> :sswitch_d
        0x7f100486 -> :sswitch_e
        0x7f100489 -> :sswitch_f
        0x7f10048a -> :sswitch_10
        0x7f10048b -> :sswitch_11
        0x7f10048c -> :sswitch_12
        0x7f10048d -> :sswitch_14
        0x7f10048e -> :sswitch_15
        0x7f10048f -> :sswitch_13
        0x7f100490 -> :sswitch_16
    .end sparse-switch
.end method

.method public prepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    const-string v5, "prepareOptionsMenu()..."

    invoke-direct {p0, v5}, Lcom/android/incallui/InVideoCallMenu;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_1
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->manageAddCallMenu(Landroid/view/Menu;)V

    goto :goto_1

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->manageHoldMenu(Landroid/view/Menu;)V

    goto :goto_1

    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->manageImageEffectMenu(Landroid/view/Menu;)V

    goto :goto_1

    :sswitch_4
    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->manageHideShowMenu(Landroid/view/Menu;)V

    goto :goto_1

    :sswitch_5
    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->manageOutgoingImageMenu(Landroid/view/Menu;)V

    goto :goto_1

    :sswitch_6
    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->manageCaptureImageMenu(Landroid/view/Menu;)V

    goto :goto_1

    :sswitch_7
    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->manageRecordMenu(Landroid/view/Menu;)V

    goto :goto_1

    :sswitch_8
    const v5, 0x7f100482

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/InVideoCallMenu;->manageKeypadMenu(Landroid/view/MenuItem;)V

    goto :goto_1

    :sswitch_9
    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->manageSpeakerMenu(Landroid/view/Menu;)V

    goto :goto_1

    :sswitch_a
    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->manageSwitchToDeviceMenu(Landroid/view/Menu;)V

    goto :goto_1

    :sswitch_b
    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->manageResizeScreenMenu(Landroid/view/Menu;)V

    goto :goto_1

    :sswitch_c
    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->manageVideoConfCallMenu(Landroid/view/Menu;)V

    goto :goto_1

    :sswitch_d
    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->manageSwitchToVoiceCall(Landroid/view/Menu;)V

    goto :goto_1

    :sswitch_e
    invoke-direct {p0, p1}, Lcom/android/incallui/InVideoCallMenu;->manageSwitchVideoDisplay(Landroid/view/Menu;)V

    goto :goto_1

    :sswitch_f
    const v5, 0x7f100490

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->getInstance()Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->isExistDeviceList()Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :sswitch_10
    const v5, 0x7f100491

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/InVideoCallMenu;->manageEmergencyCallMenu(Landroid/view/MenuItem;)V

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10009a -> :sswitch_2
        0x7f100479 -> :sswitch_1
        0x7f10047a -> :sswitch_3
        0x7f10047b -> :sswitch_0
        0x7f10047c -> :sswitch_4
        0x7f10047d -> :sswitch_5
        0x7f10047e -> :sswitch_6
        0x7f10047f -> :sswitch_0
        0x7f100480 -> :sswitch_7
        0x7f100482 -> :sswitch_8
        0x7f100483 -> :sswitch_0
        0x7f100484 -> :sswitch_9
        0x7f100485 -> :sswitch_0
        0x7f100486 -> :sswitch_a
        0x7f100489 -> :sswitch_0
        0x7f10048a -> :sswitch_b
        0x7f10048c -> :sswitch_c
        0x7f10048d -> :sswitch_d
        0x7f10048e -> :sswitch_e
        0x7f100490 -> :sswitch_f
        0x7f100491 -> :sswitch_10
    .end sparse-switch
.end method

.method public setDialogDimEffect(Landroid/app/AlertDialog;)V
    .locals 3

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public setMenuOpen(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/InCallMenu;->setMenuOpen(Z)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->disableFullScreenMode()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->resetFullScreenMode()V

    goto :goto_0
.end method
