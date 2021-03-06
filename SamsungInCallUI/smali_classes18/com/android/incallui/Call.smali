.class public final Lcom/android/incallui/Call;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Lcom/android/incallui/util/CallUpdateUtil$UpdateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/Call$LogState;,
        Lcom/android/incallui/Call$VideoSettings;,
        Lcom/android/incallui/Call$SessionModificationState;,
        Lcom/android/incallui/Call$State;
    }
.end annotation


# static fields
.field private static final ID_PREFIX:Ljava/lang/String;

.field private static sIdCounter:I


# instance fields
.field private final mCallDetails:Lcom/android/incallui/CallDetails;

.field private mCallSubject:Ljava/lang/String;

.field private final mChildCallIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChildNumber:Ljava/lang/String;

.field private mDisconnectByUser:Z

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mEmergencyCallUpdateState:Z

.field private mEndGradientDefaultColor:I

.field private mHandle:Landroid/net/Uri;

.field private final mId:Ljava/lang/String;

.field private mIsCallSubjectSupported:Z

.field private mIsEmergencyCall:Z

.field private mIsIllusion:Z

.field private mIsQueryStarted:Z

.field private mIsSmartCallLogInfoUpdated:Z

.field private mLastForwardedNumber:Ljava/lang/String;

.field private mLogState:Lcom/android/incallui/Call$LogState;

.field private mNsriSecureContentObserver:Landroid/database/ContentObserver;

.field private mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mPhoneNumberLocator:Ljava/lang/String;

.field private mPhoneType:I

.field private mPreviousParentId:Ljava/lang/String;

.field private mRequestedVideoState:I

.field private mRequestingVideoState:I

.field private final mSecCall:Lcom/android/incallui/SecCall;

.field private mSessionModificationState:I

.field private mShowMessageVoiceFromVideo:I

.field private mShowToastAsConnectVoice:Z

.field private mSmartCallIsSearching:Z

.field private mStartGradientDefaultColor:I

.field private mState:I

.field private mSubId:I

.field private final mTelecomCall:Landroid/telecom/Call;

.field private final mTelecomCallCallback:Landroid/telecom/Call$Callback;

.field private mTimeAddedMs:J

.field private mUpdateUtil:Lcom/android/incallui/util/CallUpdateUtil;

.field private mVideoCallAdapter:Lcom/android/incallui/service/vt/VideoCallAdapter;

.field private mVideoCallCallback:Lcom/android/incallui/InCallVideoCallCallback;

.field private final mVideoDetails:Lcom/android/incallui/service/vt/VideoDetails;

.field private final mVideoSettings:Lcom/android/incallui/Call$VideoSettings;

.field private mVideoState:I

.field private mVideoStateHistory:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/incallui/Call;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/Call;->ID_PREFIX:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/Call;->sIdCounter:I

    return-void
.end method

.method public constructor <init>(Landroid/telecom/Call;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/incallui/Call$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/Call$1;-><init>(Lcom/android/incallui/Call;)V

    iput-object v0, p0, Lcom/android/incallui/Call;->mTelecomCallCallback:Landroid/telecom/Call$Callback;

    iput v2, p0, Lcom/android/incallui/Call;->mState:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    new-instance v0, Lcom/android/incallui/Call$VideoSettings;

    invoke-direct {v0}, Lcom/android/incallui/Call$VideoSettings;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/Call;->mVideoSettings:Lcom/android/incallui/Call$VideoSettings;

    iput v2, p0, Lcom/android/incallui/Call;->mRequestedVideoState:I

    iput v2, p0, Lcom/android/incallui/Call;->mRequestingVideoState:I

    new-instance v0, Lcom/android/incallui/Call$LogState;

    invoke-direct {v0}, Lcom/android/incallui/Call$LogState;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/Call;->mLogState:Lcom/android/incallui/Call$LogState;

    new-instance v0, Lcom/android/incallui/CallDetails;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallDetails;-><init>(Lcom/android/incallui/Call;)V

    iput-object v0, p0, Lcom/android/incallui/Call;->mCallDetails:Lcom/android/incallui/CallDetails;

    new-instance v0, Lcom/android/incallui/service/vt/VideoDetails;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/VideoDetails;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/Call;->mVideoDetails:Lcom/android/incallui/service/vt/VideoDetails;

    iput-boolean v2, p0, Lcom/android/incallui/Call;->mEmergencyCallUpdateState:Z

    iput v2, p0, Lcom/android/incallui/Call;->mSubId:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/Call;->mPhoneType:I

    iput-boolean v2, p0, Lcom/android/incallui/Call;->mDisconnectByUser:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/Call;->mPreviousParentId:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/incallui/Call;->mIsIllusion:Z

    iput-boolean v2, p0, Lcom/android/incallui/Call;->mSmartCallIsSearching:Z

    iput-boolean v2, p0, Lcom/android/incallui/Call;->mIsSmartCallLogInfoUpdated:Z

    new-instance v0, Lcom/android/incallui/util/CallUpdateUtil;

    const-string v1, "Call"

    invoke-direct {v0, v1, p0}, Lcom/android/incallui/util/CallUpdateUtil;-><init>(Ljava/lang/String;Lcom/android/incallui/util/CallUpdateUtil$UpdateCallback;)V

    iput-object v0, p0, Lcom/android/incallui/Call;->mUpdateUtil:Lcom/android/incallui/util/CallUpdateUtil;

    iput v2, p0, Lcom/android/incallui/Call;->mShowMessageVoiceFromVideo:I

    iput-boolean v2, p0, Lcom/android/incallui/Call;->mShowToastAsConnectVoice:Z

    new-instance v0, Lcom/android/incallui/Call$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/Call$3;-><init>(Lcom/android/incallui/Call;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/Call;->mNsriSecureContentObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/incallui/Call;->ID_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/incallui/Call;->sIdCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/incallui/Call;->sIdCounter:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    new-instance v0, Lcom/android/incallui/SecCall;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecCall;-><init>(Lcom/android/incallui/Call;)V

    iput-object v0, p0, Lcom/android/incallui/Call;->mSecCall:Lcom/android/incallui/SecCall;

    new-instance v0, Lcom/android/incallui/service/vt/VideoCallAdapter;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;-><init>(Lcom/android/incallui/Call;)V

    iput-object v0, p0, Lcom/android/incallui/Call;->mVideoCallAdapter:Lcom/android/incallui/service/vt/VideoCallAdapter;

    iget-object v0, p0, Lcom/android/incallui/Call;->mVideoDetails:Lcom/android/incallui/service/vt/VideoDetails;

    iget-object v1, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoDetails;->setId(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/Call;->updateFromTelecomCall()V

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecomCallCallback:Landroid/telecom/Call$Callback;

    invoke-virtual {v0, v1}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    invoke-direct {p0}, Lcom/android/incallui/Call;->registerNsriSecureContentObserver()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/Call;->mTimeAddedMs:J

    invoke-virtual {p0}, Lcom/android/incallui/Call;->resetInCallUIFeature()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/Call;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/Call;->update()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/telecom/Call;)I
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/Call;->translateState(Landroid/telecom/Call;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/incallui/Call;)Lcom/android/incallui/InCallVideoCallCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mVideoCallCallback:Lcom/android/incallui/InCallVideoCallCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/Call;)Lcom/android/incallui/SecCall;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mSecCall:Lcom/android/incallui/SecCall;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/Call;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/Call;->unregisterNsriSecureContentObserver()V

    return-void
.end method

.method public static areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z
    .locals 2

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private maybeCancelVideoUpgrade(I)V
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/incallui/Call;->mVideoState:I

    if-eq v2, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    if-eqz v0, :cond_0

    const-string v2, "maybeCancelVideoUpgrade : cancelling upgrade notification"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    :cond_0
    iput p1, p0, Lcom/android/incallui/Call;->mVideoState:I

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private maybeClearSessionModificationState(I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/incallui/Call;->mVideoState:I

    if-eq v3, p1, :cond_2

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    if-eqz v0, :cond_0

    const-string v3, "us_volte_ui"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/incallui/Call;->mVideoState:I

    invoke-static {v3}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/incallui/Call;->mRequestedVideoState:I

    invoke-static {v3}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p0, v2}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(Lcom/android/incallui/Call;I)V

    :cond_0
    :goto_1
    iget v3, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    if-ne v3, v1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "maybeAcceptVideoUpgrade : accepting upgrade notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    :cond_1
    iput p1, p0, Lcom/android/incallui/Call;->mVideoState:I

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    const-string v3, "maybeCancelVideoUpgrade : cancelling upgrade notification"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto :goto_1
.end method

.method private registerNsriSecureContentObserver()V
    .locals 5

    const-string v1, "support_nsri_secure"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nsri_secure_call_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/incallui/Call;->mNsriSecureContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private static translateState(I)I
    .locals 3

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    const/16 v0, 0xd

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xc

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GATE"

    const-string v2, "<GATE-M>CALL_MO_ALERT_IND</GATE-M>"

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_8
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "GATE"

    const-string v2, "<GATE-M>DISCONNECT_CALL</GATE-M>"

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_3
        :pswitch_2
        :pswitch_9
    .end packed-switch
.end method

.method private static translateState(Landroid/telecom/Call;)I
    .locals 3

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/telecom/Call;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsRedialCall(Landroid/telecom/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CallUI"

    const-string v2, "translate state REDIALING"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x7

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/telecom/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call;->translateState(I)I

    move-result v1

    goto :goto_0
.end method

.method private unregisterNsriSecureContentObserver()V
    .locals 3

    const-string v1, "support_nsri_secure"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/Call;->mNsriSecureContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private update()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-direct {p0}, Lcom/android/incallui/Call;->updateFromTelecomCall()V

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->onDisconnect(Lcom/android/incallui/Call;)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/Call;->mUpdateUtil:Lcom/android/incallui/util/CallUpdateUtil;

    invoke-virtual {v1, p0}, Lcom/android/incallui/util/CallUpdateUtil;->update(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateEmergencyCallState()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-static {v0}, Lcom/android/incallui/util/TelecomCallUtil;->isEmergencyCall(Landroid/telecom/Call;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/Call;->mIsEmergencyCall:Z

    return-void
.end method

.method private updateFromTelecomCall()V
    .locals 15

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateFromTelecomCall: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {p0, v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v12, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-static {v12}, Lcom/android/incallui/Call;->translateState(Landroid/telecom/Call;)I

    move-result v11

    const/4 v10, 0x1

    const-string v12, "vzw_volte_ui_conf"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/CallList;->hasConferenceCall()Z

    move-result v12

    if-eqz v12, :cond_0

    iget v12, p0, Lcom/android/incallui/Call;->mState:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    const/16 v12, 0xa

    if-ne v11, v12, :cond_0

    const-string v12, "updateFromTelecomCall skip update "

    const/4 v13, 0x1

    invoke-static {p0, v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v10, 0x0

    :cond_0
    iget v12, p0, Lcom/android/incallui/Call;->mState:I

    const/16 v13, 0xe

    if-eq v12, v13, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual {p0, v11}, Lcom/android/incallui/Call;->setState(I)V

    iget-object v12, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v12}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telecom/Call$Details;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/incallui/Call;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    iget-object v12, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v12}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v12

    invoke-direct {p0, v12}, Lcom/android/incallui/Call;->maybeClearSessionModificationState(I)V

    :cond_1
    iget v12, p0, Lcom/android/incallui/Call;->mVideoStateHistory:I

    iget v13, p0, Lcom/android/incallui/Call;->mVideoState:I

    or-int/2addr v12, v13

    iput v12, p0, Lcom/android/incallui/Call;->mVideoStateHistory:I

    iget-object v12, p0, Lcom/android/incallui/Call;->mSecCall:Lcom/android/incallui/SecCall;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/incallui/Call;->mSecCall:Lcom/android/incallui/SecCall;

    invoke-virtual {v12}, Lcom/android/incallui/SecCall;->update()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/incallui/Call;->mVideoCallCallback:Lcom/android/incallui/InCallVideoCallCallback;

    if-nez v12, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : updateFromTelecomCall - registerCallback : new VideoCall, SessionId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/incallui/Call;->mSecCall:Lcom/android/incallui/SecCall;

    invoke-virtual {v13}, Lcom/android/incallui/SecCall;->getSessionId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    new-instance v12, Lcom/android/incallui/InCallVideoCallCallback;

    invoke-direct {v12, p0}, Lcom/android/incallui/InCallVideoCallCallback;-><init>(Lcom/android/incallui/Call;)V

    iput-object v12, p0, Lcom/android/incallui/Call;->mVideoCallCallback:Lcom/android/incallui/InCallVideoCallCallback;

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v12

    iget-object v13, p0, Lcom/android/incallui/Call;->mVideoCallCallback:Lcom/android/incallui/InCallVideoCallCallback;

    invoke-virtual {v12, v13}, Landroid/telecom/InCallService$VideoCall;->registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V

    :cond_3
    iget-object v12, p0, Lcom/android/incallui/Call;->mVideoCallAdapter:Lcom/android/incallui/service/vt/VideoCallAdapter;

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/android/incallui/Call;->mVideoCallAdapter:Lcom/android/incallui/service/vt/VideoCallAdapter;

    invoke-virtual {v12}, Lcom/android/incallui/service/vt/VideoCallAdapter;->update()V

    :cond_4
    iget-object v12, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    iget-object v12, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v12}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_6

    iget-object v12, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v12}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_5

    iget-object v13, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v14

    iget-object v12, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v12}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telecom/Call;

    invoke-virtual {v14, v12}, Lcom/android/incallui/CallList;->getCallByTelecomCall(Landroid/telecom/Call;)Lcom/android/incallui/Call;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    const-string v12, "vzw_volte_ui_conf"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getParentId()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_c

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getParentId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/incallui/Call;->setPreviousParentId(Ljava/lang/String;)V

    :cond_7
    :goto_1
    const-string v12, "phone_number_locator"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    iget v12, p0, Lcom/android/incallui/Call;->mState:I

    const/4 v13, 0x4

    if-eq v12, v13, :cond_8

    iget v12, p0, Lcom/android/incallui/Call;->mState:I

    const/4 v13, 0x5

    if-eq v12, v13, :cond_8

    iget v12, p0, Lcom/android/incallui/Call;->mState:I

    const/4 v13, 0x6

    if-ne v12, v13, :cond_9

    :cond_8
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v9

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v7

    const-string v12, "ctc_country_code_locator"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-static {v9}, Lcom/android/incallui/operator/chn/PNLUtils;->checkRoamingCondition(I)Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-static {v7, v9}, Lcom/android/incallui/operator/chn/PNLUtils;->getCountryCodeLocator(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/incallui/Call;->mPhoneNumberLocator:Ljava/lang/String;

    :cond_9
    :goto_2
    iget-object v12, p0, Lcom/android/incallui/Call;->mLogState:Lcom/android/incallui/Call$LogState;

    iget-object v13, p0, Lcom/android/incallui/Call;->mLogState:Lcom/android/incallui/Call$LogState;

    iget v13, v13, Lcom/android/incallui/Call$LogState;->conferencedCalls:I

    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    iput v13, v12, Lcom/android/incallui/Call$LogState;->conferencedCalls:I

    iget-object v12, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v12}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/incallui/Call;->updateFromCallExtras(Landroid/os/Bundle;)V

    iget-object v12, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v12}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v4

    iget-object v12, p0, Lcom/android/incallui/Call;->mHandle:Landroid/net/Uri;

    invoke-static {v12, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    iput-object v4, p0, Lcom/android/incallui/Call;->mHandle:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/android/incallui/Call;->updateEmergencyCallState()V

    :cond_a
    iget-object v12, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v12}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    iget-object v12, p0, Lcom/android/incallui/Call;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v12, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    iput-object v5, p0, Lcom/android/incallui/Call;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v12, p0, Lcom/android/incallui/Call;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    if-eqz v12, :cond_b

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/InCallPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v3

    iget-object v12, p0, Lcom/android/incallui/Call;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v3, v12}, Lcom/android/contacts/common/compat/telecom/TelecomManagerCompat;->getPhoneAccount(Landroid/telecom/TelecomManager;Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v8

    if-eqz v8, :cond_b

    const/16 v12, 0x40

    invoke-virtual {v8, v12}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/incallui/Call;->mIsCallSubjectSupported:Z

    :cond_b
    return-void

    :cond_c
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v1, :cond_d

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v12

    if-nez v12, :cond_e

    :cond_d
    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v12

    if-eqz v12, :cond_f

    :cond_e
    const-string v12, "keep previouParentId"

    invoke-static {p0, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/incallui/Call;->setPreviousParentId(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    invoke-static {}, Lcom/android/incallui/operator/chn/PNLUtils;->isPhoneNumberLocatorActivited()Z

    move-result v12

    if-eqz v12, :cond_9

    const-string v12, "phone_number_locator_tencent"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-static {}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->getInstance()Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->isServiceConnected()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-static {v7}, Lcom/android/incallui/operator/chn/PNLUtils;->getPhoneNumberLocator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/incallui/Call;->mPhoneNumberLocator:Ljava/lang/String;

    goto/16 :goto_2

    :cond_11
    new-instance v12, Lcom/android/incallui/Call$2;

    invoke-direct {v12, p0, v7}, Lcom/android/incallui/Call$2;-><init>(Lcom/android/incallui/Call;Ljava/lang/String;)V

    invoke-static {v12}, Lcom/android/incallui/operator/chn/PNLUtils;->bindTencentPLNServer(Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$IBindServerListener;)V

    goto/16 :goto_2

    :cond_12
    invoke-static {v7}, Lcom/android/incallui/operator/chn/PNLUtils;->getPhoneNumberLocator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/incallui/Call;->mPhoneNumberLocator:Ljava/lang/String;

    goto/16 :goto_2
.end method


# virtual methods
.method protected areCallExtrasCorrupted(Landroid/os/Bundle;)Z
    .locals 2

    :try_start_0
    const-string v1, "android.telecom.extra.CHILD_ADDRESS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "CallExtras is corrupted, ignoring exception"

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public blockCall()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telecom/Call;->reject(ZLjava/lang/String;)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/android/incallui/Call;->setState(I)V

    return-void
.end method

.method public can(I)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v5}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v2

    and-int/lit8 v5, p1, 0x4

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v5}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    and-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v5, 0x2

    and-int/lit8 v6, p1, 0x2

    if-ne v5, v6, :cond_2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->canSupportHoldForVoLTE()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    and-int/lit8 v5, p1, 0x1

    if-ne v3, v5, :cond_5

    const-string v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "vzw_volte_ui"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_5
    const-string v5, "ims_voice_conference_kddi"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x4

    and-int/lit8 v6, p1, 0x4

    if-ne v5, v6, :cond_7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVoicePartyCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_6
    if-eqz v1, :cond_7

    invoke-static {v1}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVoicePartyCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_7
    iget-object v5, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v5}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v5

    and-int/2addr v5, p1

    if-ne p1, v5, :cond_8

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_8
    move v3, v4

    goto :goto_1
.end method

.method public cancelModifyRequestDummy()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getModifyType()I

    move-result v0

    sget v1, Lcom/android/incallui/SecCall$ModifyType;->REQUEST_DUMMY:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    sget v1, Lcom/android/incallui/SecCall$ModifyType;->NONE:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCall;->setModifyType(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->onForceUpdateAsSecVideoState()V

    return-void
.end method

.method public clearSelfChildCallIds()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public fireVideoCallChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallManager;->fireVideoCallChanged(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method public getCallDetails()Lcom/android/incallui/CallDetails;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mCallDetails:Lcom/android/incallui/CallDetails;

    return-object v0
.end method

.method public getCallSubject()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mCallSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getCannedSmsResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getCannedTextResponses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChildCallIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    return-object v0
.end method

.method public getChildNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mChildNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getCallerDisplayNamePresentation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getConnectTimeMillis()J
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getConnectTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 2

    iget v0, p0, Lcom/android/incallui/Call;->mState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/incallui/Call;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    goto :goto_0
.end method

.method public getDisconnectedByUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/Call;->mDisconnectByUser:Z

    return v0
.end method

.method public getDomain()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    iget v0, v0, Lcom/android/incallui/SecCall;->domain:I

    return v0
.end method

.method public getEmergencyCallUpdateState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/Call;->mEmergencyCallUpdateState:Z

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getGatewayInfo()Landroid/telecom/GatewayInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v0

    return-object v0
.end method

.method public getGradientDefaultColor()[I
    .locals 3

    iget v1, p0, Lcom/android/incallui/Call;->mStartGradientDefaultColor:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/incallui/Call;->mEndGradientDefaultColor:I

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v0, v1, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/incallui/Call;->mStartGradientDefaultColor:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/incallui/Call;->mEndGradientDefaultColor:I

    aput v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getGradientDefaultColors()[I

    move-result-object v0

    goto :goto_0
.end method

.method public getHandle()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIllusion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/Call;->mIsIllusion:Z

    return v0
.end method

.method public getIntentExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getLastForwardedNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mLastForwardedNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getLogState()Lcom/android/incallui/Call$LogState;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mLogState:Lcom/android/incallui/Call$LogState;

    return-object v0
.end method

.method public getMessageVoiceFromVideo()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/Call;->mShowMessageVoiceFromVideo:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-static {v0}, Lcom/android/incallui/util/TelecomCallUtil;->getNumber(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberPresentation()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getHandlePresentation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getOutgoingCallMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getOutgoingCallMessage(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v2}, Landroid/telecom/Call;->getParent()Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/incallui/CallList;->getCallByTelecomCall(Landroid/telecom/Call;)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPhoneNumberLocator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mPhoneNumberLocator:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/Call;->mPhoneType:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/incallui/Call;->mPhoneType:I

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneType(Lcom/android/incallui/Call;)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/Call;->mPhoneType:I

    iget v0, p0, Lcom/android/incallui/Call;->mPhoneType:I

    goto :goto_0
.end method

.method public getPreviousParentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mPreviousParentId:Ljava/lang/String;

    return-object v0
.end method

.method public getRadNumber()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v1, 0x0

    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/android/incallui/util/NameNumberUtils;->getRadDisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRadNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object v1

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-static {v2}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsRadNumberConverted(Landroid/telecom/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-static {v2}, Lcom/android/incallui/util/SecCallExtraUtils;->getRadOriginalNumber(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getRequestedVideoState()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/Call;->mRequestedVideoState:I

    return v0
.end method

.method public getRequestingVideoState()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/Call;->mRequestingVideoState:I

    return v0
.end method

.method public getSecCall()Lcom/android/incallui/SecCall;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mSecCall:Lcom/android/incallui/SecCall;

    return-object v0
.end method

.method public getSessionModificationState()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    return v0
.end method

.method public getShowToastAsConnectVoice()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/Call;->mShowToastAsConnectVoice:Z

    return v0
.end method

.method public getSmartCallLogInfoUpdated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/Call;->mIsSmartCallLogInfoUpdated:Z

    return v0
.end method

.method public getSmartCallSearching()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/Call;->mSmartCallIsSearching:Z

    return v0
.end method

.method public getState()I
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getParent()Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/incallui/Call;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/incallui/Call;->mState:I

    goto :goto_0
.end method

.method public getTelecomCall()Landroid/telecom/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    return-object v0
.end method

.method public getTimeAddedMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/incallui/Call;->mTimeAddedMs:J

    return-wide v0
.end method

.method public getTwoPhoneNumber()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/android/incallui/util/NameNumberUtils;->getTwoPhoneDisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "twoPhoneNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mVideoCallAdapter:Lcom/android/incallui/service/vt/VideoCallAdapter;

    return-object v0
.end method

.method public getVideoCall()Landroid/telecom/InCallService$VideoCall;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCallCallback()Lcom/android/incallui/InCallVideoCallCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mVideoCallCallback:Lcom/android/incallui/InCallVideoCallCallback;

    return-object v0
.end method

.method public getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mVideoDetails:Lcom/android/incallui/service/vt/VideoDetails;

    return-object v0
.end method

.method public getVideoPauseState()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mVideoDetails:Lcom/android/incallui/service/vt/VideoDetails;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoDetails;->getVideoPauseState()I

    move-result v0

    return v0
.end method

.method public getVideoSettings()Lcom/android/incallui/Call$VideoSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mVideoSettings:Lcom/android/incallui/Call$VideoSettings;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v0

    return v0
.end method

.method public getVideoStateHistory()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/Call;->mVideoStateHistory:I

    return v0
.end method

.method public hasProperty(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v0

    return v0
.end method

.method public hasVideoState()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isModifyProgressing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCallSubjectSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/Call;->mIsCallSubjectSupported:Z

    return v0
.end method

.method public isConferenceCall()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmergencyCall()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/Call;->mIsEmergencyCall:Z

    return v0
.end method

.method public isEpdgCall()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsEpdgCall(Landroid/telecom/Call;)Z

    move-result v0

    return v0
.end method

.method public isModifyDummy()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getModifyType()I

    move-result v0

    sget v1, Lcom/android/incallui/SecCall$ModifyType;->REQUEST_DUMMY:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModifyProgressing()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getModifyType()I

    move-result v0

    sget v1, Lcom/android/incallui/SecCall$ModifyType;->NONE:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPSDomain()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    iget v0, v0, Lcom/android/incallui/SecCall;->domain:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQueryStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/Call;->mIsQueryStarted:Z

    return v0
.end method

.method public isTheOtherPartyOnHold()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/Call;->mSecCall:Lcom/android/incallui/SecCall;

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->isHoldedByTheOtherParty()Z

    move-result v0

    return v0
.end method

.method public isVideoCall()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoCall(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v0

    return v0
.end method

.method public isVideoCallReady()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/incallui/Call;->mState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logCallInitiationType()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getLogState()Lcom/android/incallui/Call$LogState;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/incallui/Call$LogState;->callInitiationMethod:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getLogState()Lcom/android/incallui/Call$LogState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.android.dialer.EXTRA_CALL_INITIATION_TYPE"

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/incallui/Call$LogState;->callInitiationMethod:I

    goto :goto_0
.end method

.method public onForceUpdateAsSecVideoState()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->setSecVideoState()V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public queryStarted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/Call;->mIsQueryStarted:Z

    return-void
.end method

.method public resetInCallUIFeature()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/incallui/Call;->mSecCall:Lcom/android/incallui/SecCall;

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getFakeSalesCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSecCall.getFakeSalesCode(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/Call;->mSecCall:Lcom/android/incallui/SecCall;

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getFakeSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/Call;->mSecCall:Lcom/android/incallui/SecCall;

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getFakeSalesCode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/InCallUIFeature;->makeFeature(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->makeConfig()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mSecCall:Lcom/android/incallui/SecCall;

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getFakeSmartCallFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSecCall.getFakeSmartCallFeature(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/Call;->mSecCall:Lcom/android/incallui/SecCall;

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getFakeSmartCallFeature()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/Call;->mSecCall:Lcom/android/incallui/SecCall;

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getFakeSmartCallFeature()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/incallui/InCallUIFeature;->makeFeature(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public setDisconnectCause(Landroid/telecom/DisconnectCause;)V
    .locals 2

    iput-object p1, p0, Lcom/android/incallui/Call;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    iget-object v0, p0, Lcom/android/incallui/Call;->mLogState:Lcom/android/incallui/Call$LogState;

    iget-object v1, p0, Lcom/android/incallui/Call;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    iput-object v1, v0, Lcom/android/incallui/Call$LogState;->disconnectCause:Landroid/telecom/DisconnectCause;

    return-void
.end method

.method public setDisconnectedByUser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/Call;->mDisconnectByUser:Z

    return-void
.end method

.method public setEmergencyCallUpdateState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/Call;->mEmergencyCallUpdateState:Z

    return-void
.end method

.method public setGradientDefaultColor(II)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/Call;->mStartGradientDefaultColor:I

    iput p2, p0, Lcom/android/incallui/Call;->mEndGradientDefaultColor:I

    return-void
.end method

.method public setIllusion(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/Call;->mIsIllusion:Z

    return-void
.end method

.method public setMessageVoiceFromVideo(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/Call;->mShowMessageVoiceFromVideo:I

    return-void
.end method

.method public setModifyRequestDummy()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    sget v1, Lcom/android/incallui/SecCall$ModifyType;->REQUEST_DUMMY:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCall;->setModifyType(I)V

    invoke-virtual {p0}, Lcom/android/incallui/Call;->onForceUpdateAsSecVideoState()V

    return-void
.end method

.method public setPhoneNumberLocator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/Call;->mPhoneNumberLocator:Ljava/lang/String;

    return-void
.end method

.method public setPreviousParentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/Call;->mPreviousParentId:Ljava/lang/String;

    return-void
.end method

.method public setRequestedVideoState(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRequestedVideoState - video state= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    const-string v0, "setRequestedVideoState - Clearing session modification state"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    iput p1, p0, Lcom/android/incallui/Call;->mRequestedVideoState:I

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->onUpgradeToVideo(Lcom/android/incallui/Call;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRequestedVideoState - mSessionModificationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " video state= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/incallui/util/VideoCallUtils;->needToUpdateModificationState(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/Call;->update()V

    goto :goto_0
.end method

.method public setRequestingVideoState(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRequestingVideoState - video state= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/incallui/Call;->mRequestingVideoState:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRequestingVideoState - mSessionModificationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " video state= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/incallui/util/VideoCallUtils;->needToUpdateModificationState(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/Call;->update()V

    :cond_0
    return-void
.end method

.method public setSelfChildCallIds()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSessionModificationState(I)V
    .locals 3

    iget v1, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput p1, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSessionModificationState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSessionModificationState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/android/incallui/CallList;->onSessionModificationStateChange(Lcom/android/incallui/Call;I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSessionModificationState(IZ)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/Call;->update()V

    :cond_0
    return-void
.end method

.method public setShowToastAsConnectVoice(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/Call;->mShowToastAsConnectVoice:Z

    return-void
.end method

.method public setSmartCallLogInfoUpdated(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSmartCallLogInfoUpdated  mUpdate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/incallui/Call;->mIsSmartCallLogInfoUpdated:Z

    return-void
.end method

.method public setSmartCallSearching(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSmartCallSearching  mIsSearching : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/incallui/Call;->mSmartCallIsSearching:Z

    return-void
.end method

.method public setState(I)V
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v4, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput p1, p0, Lcom/android/incallui/Call;->mState:I

    iget v2, p0, Lcom/android/incallui/Call;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lcom/android/incallui/Call;->mLogState:Lcom/android/incallui/Call$LogState;

    iput-boolean v4, v0, Lcom/android/incallui/Call$LogState;->isIncoming:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/android/incallui/Call;->mState:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/incallui/Call;->mLogState:Lcom/android/incallui/Call$LogState;

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-nez v3, :cond_2

    :goto_1
    iput-wide v0, v2, Lcom/android/incallui/Call$LogState;->duration:J

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    goto :goto_1
.end method

.method public setVideoPauseState(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/Call;->mVideoDetails:Lcom/android/incallui/service/vt/VideoDetails;

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoDetails;->getVideoPauseState()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/Call;->mVideoDetails:Lcom/android/incallui/service/vt/VideoDetails;

    invoke-virtual {v1, p1}, Lcom/android/incallui/service/vt/VideoDetails;->setVideoPauseState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/incallui/VideoPauseController;->notifyVideoPauseStateChanged(Lcom/android/incallui/Call;I)V

    :cond_0
    return-void
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "[%s, %s, %s, children:%s, parent:%s, conferenceable:%s, videoState:%s, mSessionModificationState:%d, VideoSettings:%s]"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v4}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v4

    invoke-static {v4}, Landroid/telecom/Call$Details;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getParentId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v4}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v4}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v4

    invoke-static {v4}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget v4, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected updateFromCallExtras(Landroid/os/Bundle;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/Call;->areCallExtrasCorrupted(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/Call;->mCallDetails:Lcom/android/incallui/CallDetails;

    invoke-virtual {v4, p1}, Lcom/android/incallui/CallDetails;->updateFromCallExtras(Landroid/os/Bundle;)V

    const-string v4, "android.telecom.extra.CHILD_ADDRESS"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "android.telecom.extra.CHILD_ADDRESS"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/incallui/Call;->mChildNumber:Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iput-object v1, p0, Lcom/android/incallui/Call;->mChildNumber:Ljava/lang/String;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/incallui/CallList;->onChildNumberChange(Lcom/android/incallui/Call;)V

    :cond_2
    const-string v4, "android.telecom.extra.LAST_FORWARDED_NUMBER"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "android.telecom.extra.LAST_FORWARDED_NUMBER"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/Call;->mLastForwardedNumber:Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iput-object v2, p0, Lcom/android/incallui/Call;->mLastForwardedNumber:Ljava/lang/String;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/incallui/CallList;->onLastForwardedNumberChange(Lcom/android/incallui/Call;)V

    :cond_4
    const-string v4, "android.telecom.extra.CALL_SUBJECT"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "android.telecom.extra.CALL_SUBJECT"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/incallui/Call;->mCallSubject:Ljava/lang/String;

    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iput-object v0, p0, Lcom/android/incallui/Call;->mCallSubject:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateRightNow(Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/incallui/Call;

    :cond_0
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/incallui/Call;->mState:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    iget v1, v0, Lcom/android/incallui/Call;->mState:I

    iget v2, p0, Lcom/android/incallui/Call;->mState:I

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRightNow / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / object : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/incallui/Call;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / this : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/Call;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method
