.class public Lcom/android/incallui/util/GifUtil;
.super Ljava/lang/Object;
.source "GifUtil.java"


# static fields
.field public static final OVAL:I = 0x0

.field public static final ROUND_RECT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GifUtil"


# instance fields
.field private bAnimate:Z

.field private bitmap:Landroid/graphics/Bitmap;

.field private canvas:Landroid/graphics/Canvas;

.field private duration:I

.field private file:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private height:I

.field private iv:Landroid/widget/ImageView;

.field private movie:Landroid/graphics/Movie;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/util/GifUtil;->movie:Landroid/graphics/Movie;

    iput v1, p0, Lcom/android/incallui/util/GifUtil;->duration:I

    iput-object v0, p0, Lcom/android/incallui/util/GifUtil;->canvas:Landroid/graphics/Canvas;

    iput-object v0, p0, Lcom/android/incallui/util/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/incallui/util/GifUtil;->iv:Landroid/widget/ImageView;

    iput-boolean v1, p0, Lcom/android/incallui/util/GifUtil;->bAnimate:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/util/GifUtil;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/util/GifUtil;->movie:Landroid/graphics/Movie;

    iput v1, p0, Lcom/android/incallui/util/GifUtil;->duration:I

    iput-object v0, p0, Lcom/android/incallui/util/GifUtil;->canvas:Landroid/graphics/Canvas;

    iput-object v0, p0, Lcom/android/incallui/util/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/incallui/util/GifUtil;->iv:Landroid/widget/ImageView;

    iput-boolean v1, p0, Lcom/android/incallui/util/GifUtil;->bAnimate:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/util/GifUtil;->handler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/incallui/util/GifUtil;->iv:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/util/GifUtil;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/util/GifUtil;->bAnimate:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/incallui/util/GifUtil;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/util/GifUtil;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private init()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/util/GifUtil;->movie:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/incallui/util/GifUtil;->movie:Landroid/graphics/Movie;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/util/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/util/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/util/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/incallui/util/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public static isAGIF(Landroid/net/Uri;)Z
    .locals 7

    const/4 v5, 0x0

    if-nez p0, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    if-nez v3, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    const/4 v6, 0x3

    :try_start_1
    new-array v2, v6, [B

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "GIF"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    const/4 v4, 0x1

    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    move v4, v5

    goto :goto_0

    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    move v4, v5

    goto :goto_0
.end method

.method public static isAGIF(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/graphics/Movie;->decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Movie;->duration()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    const-string v2, "GifUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAGIF : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static playGif(Lcom/android/incallui/gif/GifDrawable;)V
    .locals 4

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/incallui/util/GifUtil$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/util/GifUtil$1;-><init>(Lcom/android/incallui/gif/GifDrawable;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static setOutline(Landroid/view/View;I)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/android/incallui/util/GifUtil$2;

    invoke-direct {v0}, Lcom/android/incallui/util/GifUtil$2;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/android/incallui/util/GifUtil$3;

    invoke-direct {v0}, Lcom/android/incallui/util/GifUtil$3;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/util/GifUtil;->bAnimate:Z

    invoke-direct {p0}, Lcom/android/incallui/util/GifUtil;->init()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/util/GifUtil;->iv:Landroid/widget/ImageView;

    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/android/incallui/util/GifUtil;->file:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/incallui/util/GifUtil;->init()V

    iget-object v0, p0, Lcom/android/incallui/util/GifUtil;->file:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Movie;->decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/util/GifUtil;->movie:Landroid/graphics/Movie;

    const-string v0, "GifUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Movie : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/util/GifUtil;->movie:Landroid/graphics/Movie;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/util/GifUtil;->movie:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/util/GifUtil;->movie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/util/GifUtil;->duration:I

    iget-object v0, p0, Lcom/android/incallui/util/GifUtil;->movie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/util/GifUtil;->width:I

    iget-object v0, p0, Lcom/android/incallui/util/GifUtil;->movie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/util/GifUtil;->height:I

    const-string v0, "GifUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/util/GifUtil;->duration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/util/GifUtil;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/util/GifUtil;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setImageView(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/util/GifUtil;->iv:Landroid/widget/ImageView;

    return-void
.end method

.method public startAnimate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/util/GifUtil;->bAnimate:Z

    new-instance v0, Lcom/android/incallui/util/GifUtil$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/util/GifUtil$4;-><init>(Lcom/android/incallui/util/GifUtil;)V

    invoke-virtual {v0}, Lcom/android/incallui/util/GifUtil$4;->start()V

    return-void
.end method

.method public stopAnimate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/util/GifUtil;->bAnimate:Z

    return-void
.end method

.method public updateView()V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/incallui/util/GifUtil;->movie:Landroid/graphics/Movie;

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/incallui/util/GifUtil;->duration:I

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/incallui/util/GifUtil;->duration:I

    int-to-long v4, v4

    rem-long v4, v2, v4

    long-to-int v1, v4

    iget-object v4, p0, Lcom/android/incallui/util/GifUtil;->movie:Landroid/graphics/Movie;

    invoke-virtual {v4, v1}, Landroid/graphics/Movie;->setTime(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/util/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/util/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/util/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iget v4, p0, Lcom/android/incallui/util/GifUtil;->width:I

    iget v5, p0, Lcom/android/incallui/util/GifUtil;->height:I

    invoke-static {v4, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/util/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/incallui/util/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/android/incallui/util/GifUtil;->canvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/android/incallui/util/GifUtil;->canvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v4, p0, Lcom/android/incallui/util/GifUtil;->movie:Landroid/graphics/Movie;

    iget-object v5, p0, Lcom/android/incallui/util/GifUtil;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v5, v7, v7}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/incallui/util/GifUtil;->canvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/android/incallui/util/GifUtil;->iv:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/util/GifUtil;->iv:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/incallui/util/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method
