.class Ljxl/biff/formula/Area3d;
.super Ljxl/biff/formula/Operand;
.source "Area3d.java"


# instance fields
.field private columnFirst:I

.field private columnFirstRelative:Z

.field private columnLast:I

.field private columnLastRelative:Z

.field private rowFirst:I

.field private rowFirstRelative:Z

.field private rowLast:I

.field private rowLastRelative:Z

.field private sheet:I

.field private workbook:Ljxl/biff/formula/ExternalSheet;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-class v0, Ljxl/biff/formula/Area3d;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 107
    iput-object p2, p0, Ljxl/biff/formula/Area3d;->workbook:Ljxl/biff/formula/ExternalSheet;

    const-string v0, ":"

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    .line 109
    :goto_13
    invoke-static {v3}, Ljxl/common/Assert;->verify(Z)V

    add-int/lit8 v3, v0, 0x1

    .line 110
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x21

    .line 113
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    .line 114
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Ljxl/biff/CellReferenceHelper;->getColumn(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Ljxl/biff/formula/Area3d;->columnFirst:I

    .line 116
    invoke-static {v0}, Ljxl/biff/CellReferenceHelper;->getRow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/Area3d;->rowFirst:I

    .line 119
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x27

    if-ne v0, v1, :cond_54

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_54

    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 128
    :cond_54
    invoke-interface {p2, p1}, Ljxl/biff/formula/ExternalSheet;->getExternalSheetIndex(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Ljxl/biff/formula/Area3d;->sheet:I

    if-ltz p2, :cond_71

    .line 137
    invoke-static {v3}, Ljxl/biff/CellReferenceHelper;->getColumn(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ljxl/biff/formula/Area3d;->columnLast:I

    .line 138
    invoke-static {v3}, Ljxl/biff/CellReferenceHelper;->getRow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ljxl/biff/formula/Area3d;->rowLast:I

    .line 140
    iput-boolean v2, p0, Ljxl/biff/formula/Area3d;->columnFirstRelative:Z

    .line 141
    iput-boolean v2, p0, Ljxl/biff/formula/Area3d;->rowFirstRelative:Z

    .line 142
    iput-boolean v2, p0, Ljxl/biff/formula/Area3d;->columnLastRelative:Z

    .line 143
    iput-boolean v2, p0, Ljxl/biff/formula/Area3d;->rowLastRelative:Z

    return-void

    .line 132
    :cond_71
    new-instance p2, Ljxl/biff/formula/FormulaException;

    sget-object v0, Ljxl/biff/formula/FormulaException;->SHEET_REF_NOT_FOUND:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {p2, v0, p1}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;Ljava/lang/String;)V

    throw p2
.end method

.method constructor <init>(Ljxl/biff/formula/ExternalSheet;)V
    .registers 2

    .line 94
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 95
    iput-object p1, p0, Ljxl/biff/formula/Area3d;->workbook:Ljxl/biff/formula/ExternalSheet;

    return-void
.end method


# virtual methods
.method getBytes()[B
    .registers 5

    const/16 v0, 0xb

    new-array v0, v0, [B

    .line 231
    sget-object v1, Ljxl/biff/formula/Token;->AREA3D:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getCode()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 233
    iget v1, p0, Ljxl/biff/formula/Area3d;->sheet:I

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 235
    iget v1, p0, Ljxl/biff/formula/Area3d;->rowFirst:I

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 236
    iget v1, p0, Ljxl/biff/formula/Area3d;->rowLast:I

    const/4 v2, 0x5

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 238
    iget v1, p0, Ljxl/biff/formula/Area3d;->columnFirst:I

    .line 241
    iget-boolean v2, p0, Ljxl/biff/formula/Area3d;->rowFirstRelative:Z

    const v3, 0x8000

    if-eqz v2, :cond_29

    or-int/2addr v1, v3

    .line 246
    :cond_29
    iget-boolean v2, p0, Ljxl/biff/formula/Area3d;->columnFirstRelative:Z

    if-eqz v2, :cond_2f

    or-int/lit16 v1, v1, 0x4000

    :cond_2f
    const/4 v2, 0x7

    .line 251
    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 253
    iget v1, p0, Ljxl/biff/formula/Area3d;->columnLast:I

    .line 256
    iget-boolean v2, p0, Ljxl/biff/formula/Area3d;->rowLastRelative:Z

    if-eqz v2, :cond_3a

    or-int/2addr v1, v3

    .line 261
    :cond_3a
    iget-boolean v2, p0, Ljxl/biff/formula/Area3d;->columnLastRelative:Z

    if-eqz v2, :cond_40

    or-int/lit16 v1, v1, 0x4000

    :cond_40
    const/16 v2, 0x9

    .line 266
    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v0
.end method

.method getFirstColumn()I
    .registers 2

    .line 153
    iget v0, p0, Ljxl/biff/formula/Area3d;->columnFirst:I

    return v0
.end method

.method getLastColumn()I
    .registers 2

    .line 173
    iget v0, p0, Ljxl/biff/formula/Area3d;->columnLast:I

    return v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .registers 6

    .line 217
    iget v0, p0, Ljxl/biff/formula/Area3d;->sheet:I

    iget v1, p0, Ljxl/biff/formula/Area3d;->columnFirst:I

    iget v2, p0, Ljxl/biff/formula/Area3d;->rowFirst:I

    iget-object v3, p0, Ljxl/biff/formula/Area3d;->workbook:Ljxl/biff/formula/ExternalSheet;

    invoke-static {v0, v1, v2, v3, p1}, Ljxl/biff/CellReferenceHelper;->getCellReference(IIILjxl/biff/formula/ExternalSheet;Ljava/lang/StringBuffer;)V

    const/16 v0, 0x3a

    .line 219
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 220
    iget v0, p0, Ljxl/biff/formula/Area3d;->columnLast:I

    iget v1, p0, Ljxl/biff/formula/Area3d;->rowLast:I

    invoke-static {v0, v1, p1}, Ljxl/biff/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    return-void
.end method

.method public read([BI)I
    .registers 7

    .line 195
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/Area3d;->sheet:I

    add-int/lit8 v0, p2, 0x2

    .line 196
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/Area3d;->rowFirst:I

    add-int/lit8 v0, p2, 0x4

    .line 197
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x5

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/Area3d;->rowLast:I

    add-int/lit8 v0, p2, 0x6

    .line 198
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x7

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    .line 199
    iput v1, p0, Ljxl/biff/formula/Area3d;->columnFirst:I

    and-int/lit16 v1, v0, 0x4000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_40

    const/4 v1, 0x1

    goto :goto_41

    :cond_40
    const/4 v1, 0x0

    .line 200
    :goto_41
    iput-boolean v1, p0, Ljxl/biff/formula/Area3d;->columnFirstRelative:Z

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4b

    const/4 v0, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v0, 0x0

    .line 201
    :goto_4c
    iput-boolean v0, p0, Ljxl/biff/formula/Area3d;->rowFirstRelative:Z

    add-int/lit8 v0, p2, 0x8

    .line 202
    aget-byte v0, p1, v0

    add-int/lit8 p2, p2, 0x9

    aget-byte p1, p1, p2

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    and-int/lit16 p2, p1, 0xff

    .line 203
    iput p2, p0, Ljxl/biff/formula/Area3d;->columnLast:I

    and-int/lit16 p2, p1, 0x4000

    if-eqz p2, :cond_64

    const/4 p2, 0x1

    goto :goto_65

    :cond_64
    const/4 p2, 0x0

    .line 204
    :goto_65
    iput-boolean p2, p0, Ljxl/biff/formula/Area3d;->columnLastRelative:Z

    and-int/2addr p1, v1

    if-eqz p1, :cond_6b

    const/4 v2, 0x1

    .line 205
    :cond_6b
    iput-boolean v2, p0, Ljxl/biff/formula/Area3d;->rowLastRelative:Z

    const/16 p1, 0xa

    return p1
.end method

.method protected setRangeData(IIIIIZZZZ)V
    .registers 10

    .line 448
    iput p1, p0, Ljxl/biff/formula/Area3d;->sheet:I

    .line 449
    iput p2, p0, Ljxl/biff/formula/Area3d;->columnFirst:I

    .line 450
    iput p3, p0, Ljxl/biff/formula/Area3d;->columnLast:I

    .line 451
    iput p4, p0, Ljxl/biff/formula/Area3d;->rowFirst:I

    .line 452
    iput p5, p0, Ljxl/biff/formula/Area3d;->rowLast:I

    .line 453
    iput-boolean p6, p0, Ljxl/biff/formula/Area3d;->columnFirstRelative:Z

    .line 454
    iput-boolean p7, p0, Ljxl/biff/formula/Area3d;->columnLastRelative:Z

    .line 455
    iput-boolean p8, p0, Ljxl/biff/formula/Area3d;->rowFirstRelative:Z

    .line 456
    iput-boolean p9, p0, Ljxl/biff/formula/Area3d;->rowLastRelative:Z

    return-void
.end method
