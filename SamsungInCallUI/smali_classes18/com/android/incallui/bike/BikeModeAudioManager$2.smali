.class Lcom/android/incallui/bike/BikeModeAudioManager$2;
.super Ljava/lang/Object;
.source "BikeModeAudioManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/bike/BikeModeAudioManager;->playEnglishGuidance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/bike/BikeModeAudioManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/bike/BikeModeAudioManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/bike/BikeModeAudioManager$2;->this$0:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    const-string v0, "BikeModeAudioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playEnglishGuidance onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager$2;->this$0:Lcom/android/incallui/bike/BikeModeAudioManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/android/incallui/bike/BikeModeAudioManager;->access$002(Lcom/android/incallui/bike/BikeModeAudioManager;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    return v0
.end method