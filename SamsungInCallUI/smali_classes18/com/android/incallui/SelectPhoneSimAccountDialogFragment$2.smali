.class Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$2;
.super Ljava/lang/Object;
.source "SelectPhoneSimAccountDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$2;->this$0:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {p3}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isBoltSIM(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p3}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isNetworkRoaming(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isImsRegistered()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$2;->this$0:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0905b0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$2;->this$0:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    const/4 v2, 0x1

    # setter for: Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mIsSelected:Z
    invoke-static {v1, v2}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->access$002(Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;Z)Z

    iget-object v1, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$2;->this$0:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    # getter for: Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mAccountHandles:Ljava/util/List;
    invoke-static {v1}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->access$100(Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/android/incallui/InCallPresenter;->handleAccountSelection(Landroid/telecom/PhoneAccountHandle;Z)V

    goto :goto_0
.end method
