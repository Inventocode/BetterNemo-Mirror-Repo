.class public Ljxl/read/biff/RowRecord;
.super Ljxl/biff/RecordData;
.source "RowRecord.java"


# instance fields
.field private collapsed:Z

.field private defaultFormat:Z

.field private groupStart:Z

.field private matchesDefFontHeight:Z

.field private outlineLevel:I

.field private rowHeight:I

.field private rowNumber:I

.field private xfIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-class v0, Ljxl/read/biff/RowRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    return-void
.end method

.method constructor <init>(Ljxl/read/biff/Record;)V
    .registers 8

    .line 84
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 86
    invoke-virtual {p0}, Ljxl/biff/RecordData;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 87
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte v3, p1, v2

    invoke-static {v1, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/read/biff/RowRecord;->rowNumber:I

    const/4 v1, 0x6

    .line 88
    aget-byte v1, p1, v1

    const/4 v3, 0x7

    aget-byte v3, p1, v3

    invoke-static {v1, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/read/biff/RowRecord;->rowHeight:I

    const/16 v1, 0xc

    .line 90
    aget-byte v1, p1, v1

    const/16 v3, 0xd

    aget-byte v3, p1, v3

    const/16 v4, 0xe

    aget-byte v4, p1, v4

    const/16 v5, 0xf

    aget-byte p1, p1, v5

    invoke-static {v1, v3, v4, p1}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result p1

    and-int/lit8 v1, p1, 0x7

    .line 92
    iput v1, p0, Ljxl/read/biff/RowRecord;->outlineLevel:I

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_41

    const/4 v1, 0x1

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    .line 93
    :goto_42
    iput-boolean v1, p0, Ljxl/read/biff/RowRecord;->groupStart:Z

    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_4a

    const/4 v1, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v1, 0x0

    .line 94
    :goto_4b
    iput-boolean v1, p0, Ljxl/read/biff/RowRecord;->collapsed:Z

    and-int/lit8 v1, p1, 0x40

    if-nez v1, :cond_53

    const/4 v1, 0x1

    goto :goto_54

    :cond_53
    const/4 v1, 0x0

    .line 95
    :goto_54
    iput-boolean v1, p0, Ljxl/read/biff/RowRecord;->matchesDefFontHeight:Z

    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_5b

    const/4 v0, 0x1

    .line 96
    :cond_5b
    iput-boolean v0, p0, Ljxl/read/biff/RowRecord;->defaultFormat:Z

    const/high16 v0, 0xfff0000

    and-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x10

    .line 97
    iput p1, p0, Ljxl/read/biff/RowRecord;->xfIndex:I

    return-void
.end method


# virtual methods
.method public getGroupStart()Z
    .registers 2

    .line 147
    iget-boolean v0, p0, Ljxl/read/biff/RowRecord;->groupStart:Z

    return v0
.end method

.method public getOutlineLevel()I
    .registers 2

    .line 137
    iget v0, p0, Ljxl/read/biff/RowRecord;->outlineLevel:I

    return v0
.end method

.method public getRowHeight()I
    .registers 2

    .line 157
    iget v0, p0, Ljxl/read/biff/RowRecord;->rowHeight:I

    return v0
.end method

.method public getRowNumber()I
    .registers 2

    .line 127
    iget v0, p0, Ljxl/read/biff/RowRecord;->rowNumber:I

    return v0
.end method

.method public getXFIndex()I
    .registers 2

    .line 177
    iget v0, p0, Ljxl/read/biff/RowRecord;->xfIndex:I

    return v0
.end method

.method public hasDefaultFormat()Z
    .registers 2

    .line 187
    iget-boolean v0, p0, Ljxl/read/biff/RowRecord;->defaultFormat:Z

    return v0
.end method

.method public isCollapsed()Z
    .registers 2

    .line 167
    iget-boolean v0, p0, Ljxl/read/biff/RowRecord;->collapsed:Z

    return v0
.end method

.method isDefaultHeight()Z
    .registers 3

    .line 107
    iget v0, p0, Ljxl/read/biff/RowRecord;->rowHeight:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public matchesDefaultFontHeight()Z
    .registers 2

    .line 117
    iget-boolean v0, p0, Ljxl/read/biff/RowRecord;->matchesDefFontHeight:Z

    return v0
.end method
