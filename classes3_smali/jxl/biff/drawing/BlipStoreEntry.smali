.class Ljxl/biff/drawing/BlipStoreEntry;
.super Ljxl/biff/drawing/EscherAtom;
.source "BlipStoreEntry.java"


# instance fields
.field private data:[B

.field private imageDataLength:I

.field private referenceCount:I

.field private type:Ljxl/biff/drawing/BlipType;

.field private write:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Ljxl/biff/drawing/BlipStoreEntry;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/Drawing;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    sget-object v0, Ljxl/biff/drawing/EscherRecordType;->BSE:Ljxl/biff/drawing/EscherRecordType;

    invoke-direct {p0, v0}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordType;)V

    .line 94
    sget-object v0, Ljxl/biff/drawing/BlipType;->PNG:Ljxl/biff/drawing/BlipType;

    iput-object v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->type:Ljxl/biff/drawing/BlipType;

    const/4 v0, 0x2

    .line 95
    invoke-virtual {p0, v0}, Ljxl/biff/drawing/EscherRecord;->setVersion(I)V

    .line 96
    iget-object v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->type:Ljxl/biff/drawing/BlipType;

    invoke-virtual {v0}, Ljxl/biff/drawing/BlipType;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljxl/biff/drawing/EscherRecord;->setInstance(I)V

    .line 98
    invoke-virtual {p1}, Ljxl/biff/drawing/Drawing;->getImageBytes()[B

    move-result-object v0

    .line 99
    array-length v1, v0

    iput v1, p0, Ljxl/biff/drawing/BlipStoreEntry;->imageDataLength:I

    add-int/lit8 v2, v1, 0x3d

    .line 100
    new-array v2, v2, [B

    iput-object v2, p0, Ljxl/biff/drawing/BlipStoreEntry;->data:[B

    const/4 v3, 0x0

    const/16 v4, 0x3d

    .line 101
    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    invoke-virtual {p1}, Ljxl/biff/drawing/Drawing;->getReferenceCount()I

    move-result p1

    iput p1, p0, Ljxl/biff/drawing/BlipStoreEntry;->referenceCount:I

    const/4 p1, 0x1

    .line 103
    iput-boolean p1, p0, Ljxl/biff/drawing/BlipStoreEntry;->write:Z

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/EscherRecordData;)V
    .registers 6

    .line 77
    invoke-direct {p0, p1}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    .line 78
    invoke-virtual {p0}, Ljxl/biff/drawing/EscherRecord;->getInstance()I

    move-result p1

    invoke-static {p1}, Ljxl/biff/drawing/BlipType;->getType(I)Ljxl/biff/drawing/BlipType;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/drawing/BlipStoreEntry;->type:Ljxl/biff/drawing/BlipType;

    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Ljxl/biff/drawing/BlipStoreEntry;->write:Z

    .line 80
    invoke-virtual {p0}, Ljxl/biff/drawing/EscherRecord;->getBytes()[B

    move-result-object p1

    const/16 v0, 0x18

    .line 81
    aget-byte v0, p1, v0

    const/16 v1, 0x19

    aget-byte v1, p1, v1

    const/16 v2, 0x1a

    aget-byte v2, p1, v2

    const/16 v3, 0x1b

    aget-byte p1, p1, v3

    invoke-static {v0, v1, v2, p1}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result p1

    iput p1, p0, Ljxl/biff/drawing/BlipStoreEntry;->referenceCount:I

    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 6

    .line 123
    iget-boolean v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->write:Z

    if-eqz v0, :cond_6b

    .line 128
    iget-object v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->data:[B

    iget-object v1, p0, Ljxl/biff/drawing/BlipStoreEntry;->type:Ljxl/biff/drawing/BlipType;

    invoke-virtual {v1}, Ljxl/biff/drawing/BlipType;->getValue()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 131
    iget-object v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->data:[B

    iget-object v1, p0, Ljxl/biff/drawing/BlipStoreEntry;->type:Ljxl/biff/drawing/BlipType;

    invoke-virtual {v1}, Ljxl/biff/drawing/BlipType;->getValue()I

    move-result v1

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 140
    iget v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->imageDataLength:I

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x11

    iget-object v1, p0, Ljxl/biff/drawing/BlipStoreEntry;->data:[B

    const/16 v4, 0x14

    invoke-static {v0, v1, v4}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 143
    iget v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->referenceCount:I

    iget-object v1, p0, Ljxl/biff/drawing/BlipStoreEntry;->data:[B

    const/16 v4, 0x18

    invoke-static {v0, v1, v4}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 146
    iget-object v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->data:[B

    const/16 v1, 0x1c

    invoke-static {v2, v0, v1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 149
    iget-object v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->data:[B

    const/16 v1, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    .line 152
    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v4, 0x7e

    .line 155
    aput-byte v4, v0, v1

    const/16 v1, 0x23

    .line 156
    aput-byte v3, v0, v1

    const/16 v1, 0x24

    .line 159
    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x6e

    .line 160
    aput-byte v2, v0, v1

    const v1, 0xf01e

    const/16 v2, 0x26

    .line 163
    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 167
    iget v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->imageDataLength:I

    add-int/lit8 v0, v0, 0x11

    iget-object v1, p0, Ljxl/biff/drawing/BlipStoreEntry;->data:[B

    const/16 v2, 0x28

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    goto :goto_71

    .line 175
    :cond_6b
    invoke-virtual {p0}, Ljxl/biff/drawing/EscherRecord;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->data:[B

    .line 178
    :goto_71
    iget-object v0, p0, Ljxl/biff/drawing/BlipStoreEntry;->data:[B

    invoke-virtual {p0, v0}, Ljxl/biff/drawing/EscherRecord;->setHeaderData([B)[B

    move-result-object v0

    return-object v0
.end method

.method getImageData()[B
    .registers 6

    .line 208
    invoke-virtual {p0}, Ljxl/biff/drawing/EscherRecord;->getBytes()[B

    move-result-object v0

    .line 209
    array-length v1, v0

    const/16 v2, 0x3d

    sub-int/2addr v1, v2

    new-array v3, v1, [B

    const/4 v4, 0x0

    .line 210
    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method
