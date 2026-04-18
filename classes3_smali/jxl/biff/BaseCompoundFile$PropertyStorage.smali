.class public Ljxl/biff/BaseCompoundFile$PropertyStorage;
.super Ljava/lang/Object;
.source "BaseCompoundFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/biff/BaseCompoundFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PropertyStorage"
.end annotation


# instance fields
.field public child:I

.field public colour:I

.field public data:[B

.field public name:Ljava/lang/String;

.field public next:I

.field public previous:I

.field public size:I

.field public startBlock:I

.field public type:I


# direct methods
.method public constructor <init>(Ljxl/biff/BaseCompoundFile;Ljava/lang/String;)V
    .registers 6

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x80

    new-array p1, p1, [B

    .line 244
    iput-object p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    .line 246
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x20

    if-ge p1, v2, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    invoke-static {p1}, Ljxl/common/Assert;->verify(Z)V

    .line 248
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v1

    mul-int/lit8 p1, p1, 0x2

    iget-object v1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    const/16 v2, 0x40

    invoke-static {p1, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 253
    :goto_27
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v0, p1, :cond_3b

    .line 255
    iget-object p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    mul-int/lit8 v1, v0, 0x2

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_3b
    return-void
.end method

.method public constructor <init>(Ljxl/biff/BaseCompoundFile;[B)V
    .registers 7

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p2, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    const/16 p1, 0x40

    .line 184
    aget-byte v0, p2, p1

    const/16 v1, 0x41

    aget-byte p2, p2, v1

    invoke-static {v0, p2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p2

    if-le p2, p1, :cond_1d

    .line 189
    invoke-static {}, Ljxl/biff/BaseCompoundFile;->access$000()Ljxl/common/Logger;

    move-result-object p2

    const-string v0, "property set name exceeds max length - truncating"

    invoke-virtual {p2, v0}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_1e

    :cond_1d
    move p1, p2

    .line 193
    :goto_1e
    iget-object p2, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    const/16 v0, 0x42

    aget-byte v0, p2, v0

    iput v0, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->type:I

    const/16 v0, 0x43

    .line 194
    aget-byte v0, p2, v0

    iput v0, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->colour:I

    const/16 v0, 0x74

    .line 196
    aget-byte v0, p2, v0

    const/16 v1, 0x75

    aget-byte v1, p2, v1

    const/16 v2, 0x76

    aget-byte v2, p2, v2

    const/16 v3, 0x77

    aget-byte p2, p2, v3

    invoke-static {v0, v1, v2, p2}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result p2

    iput p2, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->startBlock:I

    .line 201
    iget-object p2, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    const/16 v0, 0x78

    aget-byte v0, p2, v0

    const/16 v1, 0x79

    aget-byte v1, p2, v1

    const/16 v2, 0x7a

    aget-byte v2, p2, v2

    const/16 v3, 0x7b

    aget-byte p2, p2, v3

    invoke-static {v0, v1, v2, p2}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result p2

    iput p2, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->size:I

    .line 206
    iget-object p2, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    const/16 v0, 0x44

    aget-byte v0, p2, v0

    const/16 v1, 0x45

    aget-byte v1, p2, v1

    const/16 v2, 0x46

    aget-byte v2, p2, v2

    const/16 v3, 0x47

    aget-byte p2, p2, v3

    invoke-static {v0, v1, v2, p2}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result p2

    iput p2, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->previous:I

    .line 211
    iget-object p2, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    const/16 v0, 0x48

    aget-byte v0, p2, v0

    const/16 v1, 0x49

    aget-byte v1, p2, v1

    const/16 v2, 0x4a

    aget-byte v2, p2, v2

    const/16 v3, 0x4b

    aget-byte p2, p2, v3

    invoke-static {v0, v1, v2, p2}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result p2

    iput p2, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->next:I

    .line 216
    iget-object p2, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    const/16 v0, 0x4c

    aget-byte v0, p2, v0

    const/16 v1, 0x4d

    aget-byte v1, p2, v1

    const/16 v2, 0x4e

    aget-byte v2, p2, v2

    const/16 v3, 0x4f

    aget-byte p2, p2, v3

    invoke-static {v0, v1, v2, p2}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result p2

    iput p2, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->child:I

    const/4 p2, 0x0

    const/4 v0, 0x2

    if-le p1, v0, :cond_aa

    add-int/lit8 p1, p1, -0x1

    .line 225
    div-int/2addr p1, v0

    goto :goto_ab

    :cond_aa
    const/4 p1, 0x0

    .line 228
    :goto_ab
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_b2
    if-ge p2, p1, :cond_c1

    .line 231
    iget-object v1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    mul-int/lit8 v2, p2, 0x2

    aget-byte v1, v1, v2

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_b2

    .line 234
    :cond_c1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setChild(I)V
    .registers 4

    .line 321
    iput p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->child:I

    .line 322
    iget-object v0, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    const/16 v1, 0x4c

    invoke-static {p1, v0, v1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    return-void
.end method

.method public setColour(I)V
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_5

    :cond_4
    const/4 p1, 0x1

    .line 332
    :goto_5
    iput p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->colour:I

    .line 333
    iget-object v0, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    const/16 v1, 0x43

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public setNext(I)V
    .registers 4

    .line 310
    iput p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->next:I

    .line 311
    iget-object v0, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    const/16 v1, 0x48

    invoke-static {p1, v0, v1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    return-void
.end method

.method public setPrevious(I)V
    .registers 4

    .line 299
    iput p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->previous:I

    .line 300
    iget-object v0, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    const/16 v1, 0x44

    invoke-static {p1, v0, v1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    return-void
.end method

.method public setSize(I)V
    .registers 4

    .line 288
    iput p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->size:I

    .line 289
    iget-object v0, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    const/16 v1, 0x78

    invoke-static {p1, v0, v1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    return-void
.end method

.method public setStartBlock(I)V
    .registers 4

    .line 277
    iput p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->startBlock:I

    .line 278
    iget-object v0, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    const/16 v1, 0x74

    invoke-static {p1, v0, v1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    return-void
.end method

.method public setType(I)V
    .registers 4

    .line 266
    iput p1, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->type:I

    .line 267
    iget-object v0, p0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->data:[B

    int-to-byte p1, p1

    const/16 v1, 0x42

    aput-byte p1, v0, v1

    return-void
.end method
