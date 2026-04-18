.class public Ljxl/biff/PaletteRecord;
.super Ljxl/biff/WritableRecordData;
.source "PaletteRecord.java"


# instance fields
.field private dirty:Z

.field private read:Z

.field private rgbColours:[Ljxl/format/RGB;


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;)V
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    const/16 p1, 0x38

    new-array p1, p1, [Ljxl/format/RGB;

    .line 34
    iput-object p1, p0, Ljxl/biff/PaletteRecord;->rgbColours:[Ljxl/format/RGB;

    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Ljxl/biff/PaletteRecord;->dirty:Z

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Ljxl/biff/PaletteRecord;->read:Z

    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 7

    .line 103
    iget-boolean v0, p0, Ljxl/biff/PaletteRecord;->read:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Ljxl/biff/PaletteRecord;->dirty:Z

    if-nez v0, :cond_11

    .line 105
    invoke-virtual {p0}, Ljxl/biff/RecordData;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    return-object v0

    :cond_11
    const/16 v0, 0xe2

    new-array v0, v0, [B

    const/16 v1, 0x38

    const/4 v2, 0x0

    .line 112
    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    :goto_1b
    if-ge v2, v1, :cond_49

    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v3, v3, 0x2

    .line 118
    iget-object v4, p0, Ljxl/biff/PaletteRecord;->rgbColours:[Ljxl/format/RGB;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljxl/format/RGB;->getRed()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v4, v3, 0x1

    .line 119
    iget-object v5, p0, Ljxl/biff/PaletteRecord;->rgbColours:[Ljxl/format/RGB;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljxl/format/RGB;->getGreen()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v3, v3, 0x2

    .line 120
    iget-object v4, p0, Ljxl/biff/PaletteRecord;->rgbColours:[Ljxl/format/RGB;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljxl/format/RGB;->getBlue()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_49
    return-object v0
.end method
