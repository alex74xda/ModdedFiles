.class Lcom/android/incallui/service/SecCallPopupContainer$11;
.super Ljava/lang/Object;
.source "SecCallPopupContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/SecCallPopupContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecCallPopupContainer;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/SecCallPopupContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13

    const/4 v12, 0x6

    const/4 v11, 0x1

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/16 v8, 0x8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick(View "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/incallui/service/SecCallPopupContainer;->log(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v11}, Lcom/android/incallui/service/SecCallPopupContainer;->access$2400(Lcom/android/incallui/service/SecCallPopupContainer;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v9}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->popupIncomingCall_answerVoiceByTap()V

    const-string v5, "automatic_answering_machine"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getAnswerMemoController()Lcom/android/incallui/operator/dcm/AnswerMemoController;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v11}, Lcom/android/incallui/operator/dcm/AnswerMemoController;->handleUserEvent(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;)V

    goto :goto_0

    :cond_1
    const-string v5, "smart_auto_answering"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    invoke-static {v9}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    :cond_2
    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v5}, Lcom/android/incallui/service/SecCallPopupContainer;->knoxCustomStopAutoAnswerTimer()V

    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;
    invoke-static {v5}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/service/SecCallPopupService;->onAnswerWithWaitingCheck()V

    goto :goto_0

    :sswitch_2
    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v5}, Lcom/android/incallui/service/SecCallPopupContainer;->toggleRejectMsgContent()V

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->popupIncomingCall_declineByTap()V

    const-string v5, "automatic_answering_machine"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getAnswerMemoController()Lcom/android/incallui/operator/dcm/AnswerMemoController;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/android/incallui/operator/dcm/AnswerMemoController;->handleUserEvent(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;)V

    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;
    invoke-static {v5}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/service/SecCallPopupService;->endCallClicked()V

    goto/16 :goto_0

    :cond_3
    const-string v5, "smart_auto_answering"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    invoke-static {v9}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    :cond_4
    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;
    invoke-static {v5}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/service/SecCallPopupService;->rejectCallClicked()V

    goto/16 :goto_0

    :sswitch_4
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-ne v5, v8, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->popupDuringCall_Resume(Lcom/android/incallui/Call;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;
    invoke-static {v5}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/service/SecCallPopupService;->showInCallUI()V

    if-eqz v0, :cond_6

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_7

    const-string v3, "PIVO"

    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v5}, Lcom/android/incallui/service/SecCallPopupContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Maximize"

    invoke-static {v5, v3, v6}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->popupIncomingCall_MaximizeToFullScreenButton()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-ne v5, v12, :cond_9

    :cond_8
    const-string v3, "POVO"

    goto :goto_1

    :cond_9
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-eq v5, v10, :cond_a

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-ne v5, v8, :cond_5

    :cond_a
    const-string v3, "PDVO"

    goto :goto_1

    :sswitch_6
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopDockConnected()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v5}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900c8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%s"

    iget-object v7, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v7}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09022f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/InCallUtils;->displayToast(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;
    invoke-static {v5}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mSpeakerBtn:Landroid/widget/ToggleButton;
    invoke-static {v6}, Lcom/android/incallui/service/SecCallPopupContainer;->access$200(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/widget/ToggleButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/service/SecCallPopupService;->toggleSpeaker(Z)V

    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v5}, Lcom/android/incallui/service/SecCallPopupContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.incallui"

    const-string v7, "VPBS"

    invoke-static {v5, v6, v7}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_c

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-ne v5, v12, :cond_f

    :cond_c
    const-string v3, "POVB"

    :cond_d
    :goto_2
    if-eqz v3, :cond_e

    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mSpeakerBtn:Landroid/widget/ToggleButton;
    invoke-static {v5}, Lcom/android/incallui/service/SecCallPopupContainer;->access$200(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/widget/ToggleButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v2, "Speaker on"

    :goto_3
    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v5}, Lcom/android/incallui/service/SecCallPopupContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mSpeakerBtn:Landroid/widget/ToggleButton;
    invoke-static {v5}, Lcom/android/incallui/service/SecCallPopupContainer;->access$200(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/widget/ToggleButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v5

    invoke-static {v0, v5}, Lcom/android/incallui/util/VoiceCallAppLogging;->popupCall_Speaker(Lcom/android/incallui/Call;Z)V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-eq v5, v10, :cond_10

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-ne v5, v8, :cond_d

    :cond_10
    const-string v3, "PDVO"

    goto :goto_2

    :cond_11
    const-string v2, "Speaker off"

    goto :goto_3

    :sswitch_7
    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;
    invoke-static {v5}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mMuteBtn:Landroid/widget/ToggleButton;
    invoke-static {v6}, Lcom/android/incallui/service/SecCallPopupContainer;->access$2500(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/widget/ToggleButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/service/SecCallPopupService;->toggleMute(Z)V

    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v5}, Lcom/android/incallui/service/SecCallPopupContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.incallui"

    const-string v7, "VPBM"

    invoke-static {v5, v6, v7}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-eq v5, v10, :cond_12

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-ne v5, v8, :cond_0

    :cond_12
    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v5}, Lcom/android/incallui/service/SecCallPopupContainer;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "PDVO"

    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mMuteBtn:Landroid/widget/ToggleButton;
    invoke-static {v5}, Lcom/android/incallui/service/SecCallPopupContainer;->access$2500(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/widget/ToggleButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v5, "Mute on"

    :goto_4
    invoke-static {v6, v7, v5}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mSpeakerBtn:Landroid/widget/ToggleButton;
    invoke-static {v5}, Lcom/android/incallui/service/SecCallPopupContainer;->access$200(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/widget/ToggleButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v5

    invoke-static {v0, v5}, Lcom/android/incallui/util/VoiceCallAppLogging;->popupCall_Mute(Lcom/android/incallui/Call;Z)V

    goto/16 :goto_0

    :cond_13
    const-string v5, "Mute off"

    goto :goto_4

    :sswitch_8
    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;
    invoke-static {v5}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/service/SecCallPopupService;->endCallClicked()V

    goto/16 :goto_0

    :sswitch_9
    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;
    invoke-static {v5}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/service/SecCallPopupService;->videoCallClicked()V

    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;
    invoke-static {v5}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/service/SecCallPopupService;->animateForHide()V

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->popupCall_MakeVideoCall()V

    goto/16 :goto_0

    :sswitch_a
    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;
    invoke-static {v5}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/service/SecCallPopupService;->voiceCallClicked()V

    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v5}, Lcom/android/incallui/service/SecCallPopupContainer;->animateForShowBackground()V

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->popupCall_MakeVoiceCall()V

    goto/16 :goto_0

    :sswitch_b
    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;
    invoke-static {v5}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/service/SecCallPopupService;->messageClicked()V

    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;
    invoke-static {v5}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/service/SecCallPopupService;->animateForHide()V

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->popupCall_SendMessage()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f100184 -> :sswitch_1
        0x7f100185 -> :sswitch_3
        0x7f100189 -> :sswitch_6
        0x7f10018b -> :sswitch_7
        0x7f10018d -> :sswitch_8
        0x7f100190 -> :sswitch_a
        0x7f100192 -> :sswitch_9
        0x7f100194 -> :sswitch_b
        0x7f100198 -> :sswitch_4
        0x7f10019a -> :sswitch_8
        0x7f10019b -> :sswitch_9
        0x7f100211 -> :sswitch_0
        0x7f100212 -> :sswitch_2
        0x7f100226 -> :sswitch_5
    .end sparse-switch
.end method