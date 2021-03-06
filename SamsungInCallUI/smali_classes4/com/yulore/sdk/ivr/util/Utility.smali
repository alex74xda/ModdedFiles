.class public Lcom/yulore/sdk/ivr/util/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# static fields
.field public static final CMCC:I = 0x1

.field public static final OPERATOR:[Ljava/lang/String;

.field public static final OPERATOR_CMCC:Ljava/lang/String; = "10086"

.field public static final OPERATOR_TELECOM:[Ljava/lang/String;

.field public static final OPERATOR_UNICOM:[Ljava/lang/String;

.field public static final TELECOM:I = 0x3

.field public static final UNICOM:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "10086"

    aput-object v1, v0, v3

    const-string v1, "10010"

    aput-object v1, v0, v4

    const-string v1, "10011"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "10000"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "10001"

    aput-object v2, v0, v1

    sput-object v0, Lcom/yulore/sdk/ivr/util/Utility;->OPERATOR:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "10010"

    aput-object v1, v0, v3

    const-string v1, "10011"

    aput-object v1, v0, v4

    sput-object v0, Lcom/yulore/sdk/ivr/util/Utility;->OPERATOR_UNICOM:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "10000"

    aput-object v1, v0, v3

    const-string v1, "10001"

    aput-object v1, v0, v4

    sput-object v0, Lcom/yulore/sdk/ivr/util/Utility;->OPERATOR_TELECOM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateDelay(I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    if-ge p0, v2, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v2, p0, -0x1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getDuration(Ljava/lang/String;)J
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[0-9]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getTelOperator(Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "10086"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/yulore/sdk/ivr/util/Utility;->OPERATOR_UNICOM:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/yulore/sdk/ivr/util/Utility;->OPERATOR_UNICOM:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/yulore/sdk/ivr/util/Utility;->OPERATOR_TELECOM:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/yulore/sdk/ivr/util/Utility;->OPERATOR_TELECOM:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static isOperator(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startWithNum(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const-string v2, "[0-9]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    goto :goto_0
.end method
