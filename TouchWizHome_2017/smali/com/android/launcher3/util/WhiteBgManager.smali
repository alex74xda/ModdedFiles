.class public Lcom/android/launcher3/util/WhiteBgManager;
.super Ljava/lang/Object;
.source "WhiteBgManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/WhiteBgManager$AttribImage;,
        Lcom/android/launcher3/util/WhiteBgManager$AttribText;
    }
.end annotation


# static fields
.field public static final LIGHT_TEXT_COLOR:I = 0x0

.field public static final PREFERENCES_NEED_DARK_FONT:Ljava/lang/String; = "need_dark_font"

.field public static final PREFERENCES_NEED_DARK_NAVIGATIONBAR:Ljava/lang/String; = "need_dark_navigationbar"

.field public static final PREFERENCES_NEED_DARK_STATUSBAR:Ljava/lang/String; = "need_dark_statusbar"

.field static final TAG:Ljava/lang/String; = "WhiteBgManager"

.field private static sChangeForWhiteBg:Z

.field private static sChangeNavigationBarForWhiteBg:Z

.field private static sChangeStatusBarForWhiteBg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/util/WhiteBgManager;->sChangeForWhiteBg:Z

    sput-boolean v0, Lcom/android/launcher3/util/WhiteBgManager;->sChangeStatusBarForWhiteBg:Z

    sput-boolean v0, Lcom/android/launcher3/util/WhiteBgManager;->sChangeNavigationBarForWhiteBg:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    sget v0, Lcom/android/launcher3/util/WhiteBgManager$AttribImage;->sColorFilter:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0
.end method

.method public static changeColorFilterForBg(Landroid/content/Context;Landroid/widget/ImageView;Z)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    sget v0, Lcom/android/launcher3/util/WhiteBgManager$AttribImage;->sColorFilter:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0
.end method

.method public static changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    return-void
.end method

.method public static changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;ZZ)V
    .locals 4

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    sget-boolean v0, Lcom/android/launcher3/util/WhiteBgManager;->sChangeForWhiteBg:Z

    if-eq p2, v0, :cond_2

    invoke-static {p0, p2}, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->setup(Landroid/content/Context;Z)V

    :goto_1
    sget v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sRadius:F

    const/4 v1, 0x0

    sget v2, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sDy:F

    sget v3, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sShadowColor:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    if-eqz p3, :cond_0

    sget-boolean v0, Lcom/android/launcher3/util/WhiteBgManager;->sChangeForWhiteBg:Z

    invoke-static {p0, v0}, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->setup(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    goto :goto_1
.end method

.method public static changeTextColorForBg(Landroid/content/Context;Lcom/android/launcher3/common/view/IconView;ZZ)V
    .locals 4

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    sget-boolean v0, Lcom/android/launcher3/util/WhiteBgManager;->sChangeForWhiteBg:Z

    if-eq p2, v0, :cond_2

    invoke-static {p0, p2}, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->setup(Landroid/content/Context;Z)V

    :goto_1
    sget v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sColor:I

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/view/IconView;->setTextColor(I)V

    sget v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sRadius:F

    const/4 v1, 0x0

    sget v2, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sDy:F

    sget v3, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sShadowColor:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/launcher3/common/view/IconView;->setShadowLayer(FFFI)V

    if-eqz p3, :cond_0

    sget-boolean v0, Lcom/android/launcher3/util/WhiteBgManager;->sChangeForWhiteBg:Z

    invoke-static {p0, v0}, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->setup(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    goto :goto_1
.end method

.method public static isWhiteBg()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/util/WhiteBgManager;->sChangeForWhiteBg:Z

    return v0
.end method

.method public static isWhiteNavigationBar()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/util/WhiteBgManager;->sChangeNavigationBarForWhiteBg:Z

    return v0
.end method

.method public static isWhiteStatusBar()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/util/WhiteBgManager;->sChangeStatusBarForWhiteBg:Z

    return v0
.end method

.method public static setup(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "need_dark_font"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/launcher3/util/WhiteBgManager;->sChangeForWhiteBg:Z

    const-string v0, "WhiteBgManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sChangeForWhiteBg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/launcher3/util/WhiteBgManager;->sChangeForWhiteBg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/launcher3/util/WhiteBgManager;->sChangeForWhiteBg:Z

    invoke-static {p0, v0}, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->setup(Landroid/content/Context;Z)V

    sget-boolean v0, Lcom/android/launcher3/util/WhiteBgManager;->sChangeForWhiteBg:Z

    invoke-static {p0, v0}, Lcom/android/launcher3/util/WhiteBgManager$AttribImage;->setup(Landroid/content/Context;Z)V

    return-void
.end method

.method public static setupForNavigationBar(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "need_dark_navigationbar"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/launcher3/util/WhiteBgManager;->sChangeNavigationBarForWhiteBg:Z

    return-void
.end method

.method public static setupForStatusBar(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "need_dark_statusbar"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/launcher3/util/WhiteBgManager;->sChangeStatusBarForWhiteBg:Z

    return-void
.end method
