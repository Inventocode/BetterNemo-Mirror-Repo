.class Ljxl/write/biff/PasswordRecord;
.super Ljxl/biff/WritableRecordData;
.source "PasswordRecord.java"


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 81
    sget-object v0, Ljxl/biff/Type;->PASSWORD:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 83
    iput-object v0, p0, Ljxl/write/biff/PasswordRecord;->data:[B

    const/4 v1, 0x0

    .line 84
    invoke-static {p1, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7

    .line 48
    sget-object v0, Ljxl/biff/Type;->PASSWORD:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p1, :cond_11

    new-array p1, v0, [B

    .line 54
    iput-object p1, p0, Ljxl/write/biff/PasswordRecord;->data:[B

    .line 55
    invoke-static {v1, p1, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    goto :goto_31

    .line 59
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 61
    :goto_17
    array-length v4, p1

    if-ge v2, v4, :cond_24

    .line 63
    aget-byte v4, p1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v4, v2}, Ljxl/write/biff/PasswordRecord;->rotLeft15Bit(II)I

    move-result v4

    xor-int/2addr v3, v4

    goto :goto_17

    .line 66
    :cond_24
    array-length p1, p1

    xor-int/2addr p1, v3

    const v2, 0xce4b

    xor-int/2addr p1, v2

    new-array v0, v0, [B

    .line 69
    iput-object v0, p0, Ljxl/write/biff/PasswordRecord;->data:[B

    .line 70
    invoke-static {p1, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    :goto_31
    return-void
.end method

.method private rotLeft15Bit(II)I
    .registers 4

    and-int/lit16 p1, p1, 0x7fff

    :goto_2
    if-lez p2, :cond_16

    and-int/lit16 v0, p1, 0x4000

    if-eqz v0, :cond_f

    shl-int/lit8 p1, p1, 0x1

    and-int/lit16 p1, p1, 0x7fff

    add-int/lit8 p1, p1, 0x1

    goto :goto_13

    :cond_f
    shl-int/lit8 p1, p1, 0x1

    and-int/lit16 p1, p1, 0x7fff

    :goto_13
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_16
    return p1
.end method


# virtual methods
.method public getData()[B
    .registers 2

    .line 94
    iget-object v0, p0, Ljxl/write/biff/PasswordRecord;->data:[B

    return-object v0
.end method
