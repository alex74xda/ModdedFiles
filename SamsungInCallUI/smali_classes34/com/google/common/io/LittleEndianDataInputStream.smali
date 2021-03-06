.class public final Lcom/google/common/io/LittleEndianDataInputStream;
.super Ljava/io/FilterInputStream;
.source "LittleEndianDataInputStream.java"

# interfaces
.implements Ljava/io/DataInput;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private readAndCheckByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/common/io/LittleEndianDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_0
    int-to-byte v1, v0

    return v1
.end method


# virtual methods
.method public readBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readUnsignedByte()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readUnsignedShort()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/io/ByteStreams;->readFully(Ljava/io/InputStream;[B)V

    return-void
.end method

.method public readFully([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/io/ByteStreams;->readFully(Ljava/io/InputStream;[BII)V

    return-void
.end method

.method public readInt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readAndCheckByte()B

    move-result v0

    invoke-direct {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readAndCheckByte()B

    move-result v1

    invoke-direct {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readAndCheckByte()B

    move-result v2

    invoke-direct {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readAndCheckByte()B

    move-result v3

    invoke-static {v3, v2, v1, v0}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v4

    return v4
.end method

.method public readLine()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "readLine is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readLong()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readAndCheckByte()B

    move-result v7

    invoke-direct {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readAndCheckByte()B

    move-result v6

    invoke-direct {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readAndCheckByte()B

    move-result v5

    invoke-direct {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readAndCheckByte()B

    move-result v4

    invoke-direct {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readAndCheckByte()B

    move-result v3

    invoke-direct {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readAndCheckByte()B

    move-result v2

    invoke-direct {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readAndCheckByte()B

    move-result v1

    invoke-direct {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readAndCheckByte()B

    move-result v0

    invoke-static/range {v0 .. v7}, Lcom/google/common/primitives/Longs;->fromBytes(BBBBBBBB)J

    move-result-wide v8

    return-wide v8
.end method

.method public readShort()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readUnsignedShort()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/google/common/io/LittleEndianDataInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/common/io/LittleEndianDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_0
    return v0
.end method

.method public readUnsignedShort()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readAndCheckByte()B

    move-result v0

    invoke-direct {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readAndCheckByte()B

    move-result v1

    invoke-static {v2, v2, v1, v0}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v2

    return v2
.end method

.method public skipBytes(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/io/LittleEndianDataInputStream;->in:Ljava/io/InputStream;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
