.class Ljxl/biff/formula/CellReference;
.super Ljxl/biff/formula/Operand;
.source "CellReference.java"


# instance fields
.field private column:I

.field private columnRelative:Z

.field private relativeTo:Ljxl/Cell;

.field private row:I

.field private rowRelative:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-class v0, Ljxl/biff/formula/CellReference;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 87
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 88
    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->getColumn(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/CellReference;->column:I

    .line 89
    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->getRow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/CellReference;->row:I

    .line 90
    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->isColumnRelative(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ljxl/biff/formula/CellReference;->columnRelative:Z

    .line 91
    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->isRowRelative(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ljxl/biff/formula/CellReference;->rowRelative:Z

    return-void
.end method

.method public constructor <init>(Ljxl/Cell;)V
    .registers 2

    .line 70
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 71
    iput-object p1, p0, Ljxl/biff/formula/CellReference;->relativeTo:Ljxl/Cell;

    return-void
.end method


# virtual methods
.method getBytes()[B
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 152
    invoke-virtual {p0}, Ljxl/biff/formula/ParseItem;->useAlternateCode()Z

    move-result v1

    if-nez v1, :cond_10

    sget-object v1, Ljxl/biff/formula/Token;->REF:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getCode()B

    move-result v1

    goto :goto_16

    :cond_10
    sget-object v1, Ljxl/biff/formula/Token;->REF:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getCode2()B

    move-result v1

    :goto_16
    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 155
    iget v1, p0, Ljxl/biff/formula/CellReference;->row:I

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 157
    iget v1, p0, Ljxl/biff/formula/CellReference;->column:I

    .line 160
    iget-boolean v2, p0, Ljxl/biff/formula/CellReference;->rowRelative:Z

    if-eqz v2, :cond_29

    const v2, 0x8000

    or-int/2addr v1, v2

    .line 165
    :cond_29
    iget-boolean v2, p0, Ljxl/biff/formula/CellReference;->columnRelative:Z

    if-eqz v2, :cond_2f

    or-int/lit16 v1, v1, 0x4000

    :cond_2f
    const/4 v2, 0x3

    .line 170
    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .registers 6

    .line 139
    iget v0, p0, Ljxl/biff/formula/CellReference;->column:I

    iget-boolean v1, p0, Ljxl/biff/formula/CellReference;->columnRelative:Z

    xor-int/lit8 v1, v1, 0x1

    iget v2, p0, Ljxl/biff/formula/CellReference;->row:I

    iget-boolean v3, p0, Ljxl/biff/formula/CellReference;->rowRelative:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1, v2, v3, p1}, Ljxl/biff/CellReferenceHelper;->getCellReference(IZIZLjava/lang/StringBuffer;)V

    return-void
.end method

.method public read([BI)I
    .registers 5

    .line 103
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/CellReference;->row:I

    add-int/lit8 v0, p2, 0x2

    .line 104
    aget-byte v0, p1, v0

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    and-int/lit16 p2, p1, 0xff

    .line 105
    iput p2, p0, Ljxl/biff/formula/CellReference;->column:I

    and-int/lit16 p2, p1, 0x4000

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_24

    const/4 p2, 0x1

    goto :goto_25

    :cond_24
    const/4 p2, 0x0

    .line 106
    :goto_25
    iput-boolean p2, p0, Ljxl/biff/formula/CellReference;->columnRelative:Z

    const p2, 0x8000

    and-int/2addr p1, p2

    if-eqz p1, :cond_2e

    const/4 v0, 0x1

    .line 107
    :cond_2e
    iput-boolean v0, p0, Ljxl/biff/formula/CellReference;->rowRelative:Z

    const/4 p1, 0x4

    return p1
.end method
