.class public Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;
.super Ljava/lang/Object;
.source "OpenThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/theme/OpenThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;
    }
.end annotation


# static fields
.field private static final CLOSE_FOLDER_COLOR2:I = -0x652e01

.field private static final CLOSE_FOLDER_COLOR3:I = -0x891c52

.field private static final CLOSE_FOLDER_COLOR4:I = -0x114282

.field private static final CLOSE_FOLDER_COLOR5:I = -0xc1e73

.field public static final CLOSE_FOLDER_TYPE_COLOR:I = 0x0

.field public static final CLOSE_FOLDER_TYPE_IMAGE:I = 0x1

.field private static final DEFAULT_CLOSE_FOLDER_COLOR:I = -0x70813

.field private static final DEFAULT_COLOR_INDEX:I = 0x0

.field private static final DEFAULT_FOLDER_COLOR:I = -0x414142

.field public static final DEFAULT_FOLDER_TEXT_COLOR:I = -0x1000000

.field private static final DEFAULT_OPEN_FOLDER_BG_COLOR:I = -0x50506

.field private static final DEFAULT_SHAPE:I = 0x0

.field public static final FOLDER_COLOR2:I = -0xea4643

.field public static final FOLDER_COLOR3:I = -0x69db

.field public static final FOLDER_COLOR4:I = -0x1345f6

.field public static final FOLDER_COLOR5:I = -0x5829c9

.field public static final INVALID_COLOR:I = 0x1ffffff

.field private static final INVALID_SHAPE:I = -0x1

.field private static final INVALID_TYPE:I = -0x1

.field private static final NUM_FOLDER_COLOR:I = 0x5

.field public static final OPEN_FOLDER_TYPE_DEFAULT:I = 0x0

.field public static final OPEN_FOLDER_TYPE_IMAGE:I = 0x2

.field private static final mDefaultCloseFolderColor:[I

.field private static final mDefaultFolderTitleColor:[I

.field private static final mFolderShapeRes:[I


# instance fields
.field public mFirstCloseFolderIconColor:I

.field public mFolderAttr:[Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

.field private mFolderType:I

.field private mOpenFolderType:I

.field private mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x5

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mDefaultFolderTitleColor:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mDefaultCloseFolderColor:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderShapeRes:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x414142
        -0xea4643
        -0x69db
        -0x1345f6
        -0x5829c9
    .end array-data

    :array_1
    .array-data 4
        -0x70813
        -0x652e01
        -0x891c52
        -0x114282
        -0xc1e73
    .end array-data

    :array_2
    .array-data 4
        0x7f02005e
        0x7f020044
        0x7f020045
        0x7f020046
        0x7f020047
    .end array-data
.end method

.method constructor <init>(Lcom/android/launcher3/theme/OpenThemeManager;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderType:I

    iput v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mOpenFolderType:I

    const v1, 0x1ffffff

    iput v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFirstCloseFolderIconColor:I

    new-array v1, v3, [Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    iput-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderAttr:[Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    iput-object v4, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;

    iput-object p1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderAttr:[Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    new-instance v2, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    invoke-direct {v2, p0, v4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;-><init>(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;Lcom/android/launcher3/theme/OpenThemeManager$1;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;)Lcom/android/launcher3/theme/OpenThemeManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    sget-object v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderShapeRes:[I

    return-object v0
.end method

.method private init()V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v0, 0x5

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderAttr:[Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    aget-object v0, v0, v6

    sget-object v2, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mDefaultCloseFolderColor:[I

    aget v2, v2, v6

    const v3, 0x1ffffff

    sget-object v4, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mDefaultFolderTitleColor:[I

    aget v4, v4, v6

    const/high16 v5, -0x1000000

    # invokes: Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->set(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->access$700(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;IIIII)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderType:I

    return-void
.end method

.method private setFolder(I[IIII)V
    .locals 10

    const v9, 0x1ffffff

    const/4 v8, 0x0

    if-ne p4, v9, :cond_0

    const/4 v8, 0x1

    :cond_0
    const v6, 0x1ffffff

    const/4 v7, 0x0

    :goto_0
    const/4 v0, 0x5

    if-ge v7, v0, :cond_7

    aget v0, p2, v7

    if-ne v0, v9, :cond_1

    sget-object v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mDefaultCloseFolderColor:[I

    aget v0, v0, v7

    aput v0, p2, v7

    :cond_1
    if-eqz v8, :cond_2

    if-nez v7, :cond_5

    iget v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFirstCloseFolderIconColor:I

    if-ne v0, v9, :cond_5

    sget-object v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mDefaultFolderTitleColor:[I

    aget p4, v0, v7

    :cond_2
    :goto_1
    if-ne p5, v9, :cond_3

    const/high16 p5, -0x1000000

    :cond_3
    if-ne p3, v9, :cond_4

    const p3, -0x50506

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderAttr:[Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    aget-object v0, v0, v7

    aget v2, p2, v7

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    # invokes: Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->set(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->access$700(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;IIIII)V

    aget v0, p2, v7

    if-eq v6, v0, :cond_6

    if-lez v7, :cond_6

    const v6, 0x1ffffff

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    aget p4, p2, v7

    goto :goto_1

    :cond_6
    aget v6, p2, v7

    goto :goto_2

    :cond_7
    if-eq v6, v9, :cond_8

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderType:I

    :cond_8
    return-void
.end method

.method private setFolder(I[ILandroid/graphics/drawable/Drawable;II)V
    .locals 9

    const v8, 0x1ffffff

    const v6, 0x1ffffff

    const/4 v7, 0x0

    :goto_0
    const/4 v0, 0x5

    if-ge v7, v0, :cond_4

    aget v0, p2, v7

    if-ne v0, v8, :cond_0

    sget-object v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mDefaultCloseFolderColor:[I

    aget v0, v0, v7

    aput v0, p2, v7

    :cond_0
    if-ne p4, v8, :cond_1

    const/4 v0, 0x0

    aget p4, p2, v0

    :cond_1
    if-ne p5, v8, :cond_2

    const/high16 p5, -0x1000000

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderAttr:[Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    aget-object v0, v0, v7

    aget v2, p2, v7

    move v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    # invokes: Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->set(IILandroid/graphics/drawable/Drawable;II)V
    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->access$1000(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;IILandroid/graphics/drawable/Drawable;II)V

    aget v0, p2, v7

    if-eq v6, v0, :cond_3

    if-lez v7, :cond_3

    const v6, 0x1ffffff

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    aget v6, p2, v7

    goto :goto_1

    :cond_4
    if-eq v6, v8, :cond_5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderType:I

    :cond_5
    return-void
.end method

.method private setFolder(Landroid/graphics/drawable/Drawable;III)V
    .locals 3

    const/4 v2, 0x0

    const v1, 0x1ffffff

    if-ne p3, v1, :cond_0

    sget-object v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mDefaultFolderTitleColor:[I

    aget p3, v0, v2

    :cond_0
    if-ne p4, v1, :cond_1

    const/high16 p4, -0x1000000

    :cond_1
    if-ne p2, v1, :cond_2

    const p4, -0x50506

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderAttr:[Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    aget-object v0, v0, v2

    # invokes: Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->set(Landroid/graphics/drawable/Drawable;III)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->access$900(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;Landroid/graphics/drawable/Drawable;III)V

    return-void
.end method

.method private setFolder(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 3

    const v2, 0x1ffffff

    const/4 v1, 0x0

    if-ne p3, v2, :cond_0

    sget-object v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mDefaultFolderTitleColor:[I

    aget p3, v0, v1

    :cond_0
    if-ne p4, v2, :cond_1

    const/high16 p4, -0x1000000

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderAttr:[Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    aget-object v0, v0, v1

    # invokes: Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->set(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->access$800(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    return-void
.end method


# virtual methods
.method public getCloseFolderBackground(III)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x1

    iget v2, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderType:I

    if-ne v2, v3, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderAttr:[Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    aget-object v2, v2, p1

    # invokes: Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->getCloseFolderImage()Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->access$1100(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p2, p3, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    :cond_1
    if-ltz p1, :cond_2

    const/4 v2, 0x5

    if-lt p1, v2, :cond_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getCloseFolderColor(I)I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderAttr:[Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    aget-object v0, v0, p1

    # invokes: Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->getCloseFolderColor()I
    invoke-static {v0}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->access$1500(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;)I

    move-result v0

    return v0

    :cond_1
    if-ltz p1, :cond_2

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getCloseFolderImage(I)Landroid/graphics/Bitmap;
    .locals 3

    iget v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderAttr:[Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    aget-object v1, v1, p1

    # invokes: Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->getCloseFolderImage()Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->access$1100(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    if-ltz p1, :cond_2

    const/4 v1, 0x5

    if-lt p1, v1, :cond_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getFirstCloseFolderIconColor()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFirstCloseFolderIconColor:I

    return v0
.end method

.method public getFolderType()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderType:I

    return v0
.end method

.method public getOpenFolderBackground(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderAttr:[Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    # invokes: Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->getOpenFolderImage()Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->access$1200(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getOpenFolderType()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mOpenFolderType:I

    return v0
.end method

.method public getTextColor(I)I
    .locals 3

    iget v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderAttr:[Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    aget-object v1, v1, p1

    # invokes: Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->getOpenFolderTextColor()I
    invoke-static {v1}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->access$1400(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;)I

    move-result v0

    return v0

    :cond_1
    if-ltz p1, :cond_2

    const/4 v1, 0x5

    if-lt p1, v1, :cond_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getTitleColor(I)I
    .locals 3

    iget v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderAttr:[Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;

    aget-object v1, v1, p1

    # invokes: Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->getOpenFolderTitleColor()I
    invoke-static {v1}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;->access$1300(Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle$FolderAttr;)I

    move-result v0

    return v0

    :cond_1
    if-ltz p1, :cond_2

    const/4 v1, 0x5

    if-lt p1, v1, :cond_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method setFolderTheme()V
    .locals 18

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->init()V

    const/4 v2, 0x5

    new-array v4, v2, [I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;

    sget-object v8, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->CLOSE_FOLDER_TYPE:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v8}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/theme/OpenThemeManager;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderType:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;

    sget-object v8, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->OPEN_FOLDER_TITLE_COLOR:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v8}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/theme/OpenThemeManager;->getColor(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;

    sget-object v8, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->OPEN_FOLDER_TEXT_COLOR:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v8}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/theme/OpenThemeManager;->getColor(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;

    sget-object v8, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->OPEN_FOLDER_BG:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v8}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/theme/OpenThemeManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;

    sget-object v8, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->OPEN_FOLDER_BG_COLOR:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v8}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/theme/OpenThemeManager;->getColor(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;

    sget-object v8, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->OPEN_FOLDER_TYPE:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v8}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/theme/OpenThemeManager;->getInteger(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;

    sget-object v8, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->CLOSE_FOLDER_ICON1:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v8}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/theme/OpenThemeManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    instance-of v2, v5, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;

    sget-object v8, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->OPEN_FOLDER_BG:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v8}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/theme/OpenThemeManager;->getItemBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_1

    const/16 v17, 0x0

    :cond_1
    const v2, 0x1ffffff

    if-ne v6, v2, :cond_2

    const v6, -0x414142

    :cond_2
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mOpenFolderType:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderType:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_6

    if-eqz v14, :cond_6

    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_3

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5, v6, v7}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->setFolder(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    :goto_0
    return-void

    :cond_3
    if-eqz v17, :cond_4

    const v2, 0x1ffffff

    if-eq v11, v2, :cond_4

    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_5

    if-nez v5, :cond_5

    :cond_4
    const v11, -0x50506

    if-nez v17, :cond_5

    const v6, 0x1ffffff

    const/high16 v7, -0x1000000

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11, v6, v7}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->setFolder(Landroid/graphics/drawable/Drawable;III)V

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;

    sget-object v8, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->CLOSE_FOLDER_SHAPE:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v8}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/theme/OpenThemeManager;->getInteger(I)I

    move-result v3

    const/4 v2, -0x1

    if-eq v3, v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFolderType:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_8

    if-nez v14, :cond_8

    :cond_7
    const/4 v3, 0x0

    :cond_8
    const/4 v15, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v15, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;

    sget-object v8, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->CLOSE_FOLDER_COLOR1:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v8}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v8

    add-int/2addr v8, v15

    invoke-virtual {v2, v8}, Lcom/android/launcher3/theme/OpenThemeManager;->getColor(I)I

    move-result v2

    aput v2, v4, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mThemeManager:Lcom/android/launcher3/theme/OpenThemeManager;

    sget-object v8, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->CLOSE_FOLDER_COLOR1:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v8}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/theme/OpenThemeManager;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->mFirstCloseFolderIconColor:I

    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_a

    if-eqz v5, :cond_a

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->setFolder(I[ILandroid/graphics/drawable/Drawable;II)V

    goto :goto_0

    :cond_a
    if-eqz v17, :cond_b

    const v2, 0x1ffffff

    if-eq v11, v2, :cond_b

    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_c

    if-nez v5, :cond_c

    :cond_b
    const v11, -0x50506

    if-nez v17, :cond_c

    const v6, 0x1ffffff

    const/high16 v7, -0x1000000

    :cond_c
    move-object/from16 v8, p0

    move v9, v3

    move-object v10, v4

    move v12, v6

    move v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->setFolder(I[IIII)V

    goto/16 :goto_0
.end method
