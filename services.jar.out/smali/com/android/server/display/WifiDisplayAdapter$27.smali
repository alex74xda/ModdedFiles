.class Lcom/android/server/display/WifiDisplayAdapter$27;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->setActiveDlnaState(Landroid/os/IBinder;Landroid/hardware/display/SemDlnaDevice;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field final synthetic val$appToken:Landroid/os/IBinder;

.field final synthetic val$device:Landroid/hardware/display/SemDlnaDevice;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;ILandroid/os/IBinder;Landroid/hardware/display/SemDlnaDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput p2, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->val$state:I

    iput-object p3, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->val$appToken:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->val$device:Landroid/hardware/display/SemDlnaDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v3, 0x1

    :try_start_0
    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->val$state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->val$appToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->val$device:Landroid/hardware/display/SemDlnaDevice;

    invoke-static {v1, v2, v3}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap29(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/IBinder;Landroid/hardware/display/SemDlnaDevice;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->val$state:I

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set0(Lcom/android/server/display/WifiDisplayAdapter;I)I

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->val$device:Landroid/hardware/display/SemDlnaDevice;

    iget v3, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->val$state:I

    invoke-static {v1, v2, v3}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap23(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/SemDlnaDevice;I)V

    :goto_1
    return-void

    :cond_1
    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->val$state:I

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->val$appToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->val$device:Landroid/hardware/display/SemDlnaDevice;

    invoke-static {v1, v2, v3}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap29(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/IBinder;Landroid/hardware/display/SemDlnaDevice;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->val$state:I

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set0(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-get1(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/SemDlnaDevice;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-get1(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/SemDlnaDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/SemDlnaDevice;->isSwitchingDevice()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->-get1(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/SemDlnaDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->setLastConnectedDlnaDevice(Landroid/hardware/display/SemDlnaDevice;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap21(Lcom/android/server/display/WifiDisplayAdapter;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->val$device:Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {v2}, Landroid/hardware/display/SemDlnaDevice;->getP2pMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap9(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x1

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap24(Lcom/android/server/display/WifiDisplayAdapter;II)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-get22(Lcom/android/server/display/WifiDisplayAdapter;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/display/WifiDisplayAdapter;->-set19(Lcom/android/server/display/WifiDisplayAdapter;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setActiveDlnaState error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-get1(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/SemDlnaDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/SemDlnaDevice;->isSwitchingDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-get3(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->isEmptySurface()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap25(Lcom/android/server/display/WifiDisplayAdapter;)V

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->val$state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->val$state:I

    if-nez v1, :cond_0

    :cond_5
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-get1(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/SemDlnaDevice;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-get1(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/SemDlnaDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/SemDlnaDevice;->isSwitchingDevice()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->val$device:Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {v2}, Landroid/hardware/display/SemDlnaDevice;->getP2pMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap7(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V

    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap6(Lcom/android/server/display/WifiDisplayAdapter;)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-get1(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/SemDlnaDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/SemDlnaDevice;->isSwitchingDevice()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-get20(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$27;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->requestResumeLocked()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
