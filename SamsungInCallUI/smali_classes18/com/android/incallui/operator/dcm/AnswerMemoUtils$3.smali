.class final Lcom/android/incallui/operator/dcm/AnswerMemoUtils$3;
.super Ljava/lang/Object;
.source "AnswerMemoUtils.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->guidanceBeepSoundPlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 8

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 v4, 0x0

    # setter for: Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->access$002(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    const/4 v4, 0x0

    # setter for: Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->mIsGuidancePlaying:Z
    invoke-static {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->access$202(Z)Z

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getAnswerMemoController()Lcom/android/incallui/operator/dcm/AnswerMemoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoController;->getRecorderManager()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/incallui/operator/dcm/AnswerMemoController;->setAMView(Z)V

    if-eqz v1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recorderMgr.isRecording() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->log(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->getRecordTime()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    invoke-virtual {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->stopRecord()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v4, "recording"

    invoke-static {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAudioParameters(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->startRecord(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method
