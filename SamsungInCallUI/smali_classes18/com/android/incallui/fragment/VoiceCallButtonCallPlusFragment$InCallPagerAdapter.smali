.class Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "VoiceCallButtonCallPlusFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallPagerAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PAGE_COUNT : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_COUNT:I
    invoke-static {}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$700()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_COUNT:I
    invoke-static {}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$700()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InCallPagerAdapterCallPlus instantiateItem position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    move-object v1, p1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    # setter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->mCurrentPageScrollState:I
    invoke-static {v5}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$602(I)I

    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_CALLPLUS:I
    invoke-static {}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$800()I

    move-result v2

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04016e

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # invokes: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->inflateCallPlus(Landroid/view/View;)V
    invoke-static {v2, v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$900(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Landroid/view/View;)V

    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "instantiateItem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0, v5}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # invokes: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->updateVoiceCallButtons()V
    invoke-static {v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1300(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    return-object v0

    :cond_2
    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_INCALL:I
    invoke-static {}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$200()I

    move-result v2

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04016d

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # invokes: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->inflateInCallButtons(Landroid/view/View;)V
    invoke-static {v2, v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1000(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Landroid/view/View;)V

    goto :goto_0

    :cond_3
    # getter for: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->PAGE_EXTRA:I
    invoke-static {}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1100()I

    move-result v2

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040170

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$InCallPagerAdapter;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    # invokes: Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->inflateExtraButtons(Landroid/view/View;)V
    invoke-static {v2, v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$1200(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;Landroid/view/View;)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
