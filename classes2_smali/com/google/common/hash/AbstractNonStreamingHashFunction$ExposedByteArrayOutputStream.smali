.class final Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "AbstractNonStreamingHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/AbstractNonStreamingHashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExposedByteArrayOutputStream"
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 113
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method byteArray()[B
    .registers 2

    .line 126
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    return-object v0
.end method

.method length()I
    .registers 2

    .line 130
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    return v0
.end method

.method write(Ljava/nio/ByteBuffer;)V
    .registers 7

    .line 117
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 118
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int v2, v1, v0

    iget-object v3, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    array-length v4, v3

    if-le v2, v4, :cond_14

    add-int/2addr v1, v0

    .line 119
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    .line 121
    :cond_14
    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 122
    iget p1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/2addr p1, v0

    iput p1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    return-void
.end method
