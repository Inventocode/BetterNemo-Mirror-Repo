.class Ljxl/biff/formula/Area;
.super Ljxl/biff/formula/Operand;
.source "Area.java"


# instance fields
.field private columnFirst:I

.field private columnFirstRelative:Z

.field private columnLast:I

.field private columnLastRelative:Z

.field private rowFirst:I

.field private rowFirstRelative:Z

.field private rowLast:I

.field private rowLastRelative:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-class v0, Ljxl/biff/formula/Area;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 6

    .line 91
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    const-string v0, ":"

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_10

    const/4 v3, 0x1

    goto :goto_11

    :cond_10
    const/4 v3, 0x0

    .line 93
    :goto_11
    invoke-static {v3}, Ljxl/common/Assert;->verify(Z)V

    .line 94
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, v1

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-static {v2}, Ljxl/biff/CellReferenceHelper;->getColumn(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/Area;->columnFirst:I

    .line 98
    invoke-static {v2}, Ljxl/biff/CellReferenceHelper;->getRow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/Area;->rowFirst:I

    .line 99
    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->getColumn(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/Area;->columnLast:I

    .line 100
    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->getRow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/Area;->rowLast:I

    .line 102
    invoke-static {v2}, Ljxl/biff/CellReferenceHelper;->isColumnRelative(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ljxl/biff/formula/Area;->columnFirstRelative:Z

    .line 103
    invoke-static {v2}, Ljxl/biff/CellReferenceHelper;->isRowRelative(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ljxl/biff/formula/Area;->rowFirstRelative:Z

    .line 104
    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->isColumnRelative(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ljxl/biff/formula/Area;->columnLastRelative:Z

    .line 105
    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->isRowRelative(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ljxl/biff/formula/Area;->rowLastRelative:Z

    return-void
.end method


# virtual methods
.method getBytes()[B
    .registers 5

    const/16 v0, 0x9

    new-array v0, v0, [B

    .line 191
    invoke-virtual {p0}, Ljxl/biff/formula/ParseItem;->useAlternateCode()Z

    move-result v1

    if-nez v1, :cond_11

    sget-object v1, Ljxl/biff/formula/Token;->AREA:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getCode()B

    move-result v1

    goto :goto_17

    :cond_11
    sget-object v1, Ljxl/biff/formula/Token;->AREA:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getCode2()B

    move-result v1

    :goto_17
    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 194
    iget v1, p0, Ljxl/biff/formula/Area;->rowFirst:I

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 195
    iget v1, p0, Ljxl/biff/formula/Area;->rowLast:I

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 197
    iget v1, p0, Ljxl/biff/formula/Area;->columnFirst:I

    .line 200
    iget-boolean v2, p0, Ljxl/biff/formula/Area;->rowFirstRelative:Z

    const v3, 0x8000

    if-eqz v2, :cond_30

    or-int/2addr v1, v3

    .line 205
    :cond_30
    iget-boolean v2, p0, Ljxl/biff/formula/Area;->columnFirstRelative:Z

    if-eqz v2, :cond_36

    or-int/lit16 v1, v1, 0x4000

    :cond_36
    const/4 v2, 0x5

    .line 210
    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 212
    iget v1, p0, Ljxl/biff/formula/Area;->columnLast:I

    .line 215
    iget-boolean v2, p0, Ljxl/biff/formula/Area;->rowLastRelative:Z

    if-eqz v2, :cond_41

    or-int/2addr v1, v3

    .line 220
    :cond_41
    iget-boolean v2, p0, Ljxl/biff/formula/Area;->columnLastRelative:Z

    if-eqz v2, :cond_47

    or-int/lit16 v1, v1, 0x4000

    :cond_47
    const/4 v2, 0x7

    .line 225
    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v0
.end method

.method getFirstColumn()I
    .registers 2

    .line 115
    iget v0, p0, Ljxl/biff/formula/Area;->columnFirst:I

    return v0
.end method

.method getLastColumn()I
    .registers 2

    .line 135
    iget v0, p0, Ljxl/biff/formula/Area;->columnLast:I

    return v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .registers 4

    .line 178
    iget v0, p0, Ljxl/biff/formula/Area;->columnFirst:I

    iget v1, p0, Ljxl/biff/formula/Area;->rowFirst:I

    invoke-static {v0, v1, p1}, Ljxl/biff/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    const/16 v0, 0x3a

    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 180
    iget v0, p0, Ljxl/biff/formula/Area;->columnLast:I

    iget v1, p0, Ljxl/biff/formula/Area;->rowLast:I

    invoke-static {v0, v1, p1}, Ljxl/biff/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    return-void
.end method

.method public read([BI)I
    .registers 7

    .line 157
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/Area;->rowFirst:I

    add-int/lit8 v0, p2, 0x2

    .line 158
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/Area;->rowLast:I

    add-int/lit8 v0, p2, 0x4

    .line 159
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x5

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    .line 160
    iput v1, p0, Ljxl/biff/formula/Area;->columnFirst:I

    and-int/lit16 v1, v0, 0x4000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    .line 161
    :goto_33
    iput-boolean v1, p0, Ljxl/biff/formula/Area;->columnFirstRelative:Z

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    .line 162
    :goto_3e
    iput-boolean v0, p0, Ljxl/biff/formula/Area;->rowFirstRelative:Z

    add-int/lit8 v0, p2, 0x6

    .line 163
    aget-byte v0, p1, v0

    add-int/lit8 p2, p2, 0x7

    aget-byte p1, p1, p2

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    and-int/lit16 p2, p1, 0xff

    .line 164
    iput p2, p0, Ljxl/biff/formula/Area;->columnLast:I

    and-int/lit16 p2, p1, 0x4000

    if-eqz p2, :cond_56

    const/4 p2, 0x1

    goto :goto_57

    :cond_56
    const/4 p2, 0x0

    .line 165
    :goto_57
    iput-boolean p2, p0, Ljxl/biff/formula/Area;->columnLastRelative:Z

    and-int/2addr p1, v1

    if-eqz p1, :cond_5d

    const/4 v2, 0x1

    .line 166
    :cond_5d
    iput-boolean v2, p0, Ljxl/biff/formula/Area;->rowLastRelative:Z

    const/16 p1, 0x8

    return p1
.end method

.method protected setRangeData(IIIIZZZZ)V
    .registers 9

    .line 405
    iput p1, p0, Ljxl/biff/formula/Area;->columnFirst:I

    .line 406
    iput p2, p0, Ljxl/biff/formula/Area;->columnLast:I

    .line 407
    iput p3, p0, Ljxl/biff/formula/Area;->rowFirst:I

    .line 408
    iput p4, p0, Ljxl/biff/formula/Area;->rowLast:I

    .line 409
    iput-boolean p5, p0, Ljxl/biff/formula/Area;->columnFirstRelative:Z

    .line 410
    iput-boolean p6, p0, Ljxl/biff/formula/Area;->columnLastRelative:Z

    .line 411
    iput-boolean p7, p0, Ljxl/biff/formula/Area;->rowFirstRelative:Z

    .line 412
    iput-boolean p8, p0, Ljxl/biff/formula/Area;->rowLastRelative:Z

    return-void
.end method
