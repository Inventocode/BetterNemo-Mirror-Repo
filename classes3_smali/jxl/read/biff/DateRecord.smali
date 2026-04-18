.class Ljxl/read/biff/DateRecord;
.super Ljava/lang/Object;
.source "DateRecord.java"

# interfaces
.implements Ljxl/DateCell;
.implements Ljxl/read/biff/CellFeaturesAccessor;


# static fields
.field private static final dateFormat:Ljava/text/SimpleDateFormat;

.field private static final gmtZone:Ljava/util/TimeZone;

.field private static final timeFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private cellFormat:Ljxl/format/CellFormat;

.field private column:I

.field private date:Ljava/util/Date;

.field private features:Ljxl/CellFeatures;

.field private format:Ljava/text/DateFormat;

.field private formattingRecords:Ljxl/biff/FormattingRecords;

.field private initialized:Z

.field private row:I

.field private sheet:Ljxl/read/biff/SheetImpl;

.field private time:Z

.field private xfIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 45
    const-class v0, Ljxl/read/biff/DateRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    .line 103
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/read/biff/DateRecord;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 106
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/read/biff/DateRecord;->timeFormat:Ljava/text/SimpleDateFormat;

    const-string v0, "GMT"

    .line 115
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/DateRecord;->gmtZone:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(Ljxl/NumberCell;ILjxl/biff/FormattingRecords;ZLjxl/read/biff/SheetImpl;)V
    .registers 10

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-interface {p1}, Ljxl/Cell;->getRow()I

    move-result v0

    iput v0, p0, Ljxl/read/biff/DateRecord;->row:I

    .line 145
    invoke-interface {p1}, Ljxl/Cell;->getColumn()I

    move-result v0

    iput v0, p0, Ljxl/read/biff/DateRecord;->column:I

    .line 146
    iput p2, p0, Ljxl/read/biff/DateRecord;->xfIndex:I

    .line 147
    iput-object p3, p0, Ljxl/read/biff/DateRecord;->formattingRecords:Ljxl/biff/FormattingRecords;

    .line 148
    iput-object p5, p0, Ljxl/read/biff/DateRecord;->sheet:Ljxl/read/biff/SheetImpl;

    const/4 p5, 0x0

    .line 149
    iput-boolean p5, p0, Ljxl/read/biff/DateRecord;->initialized:Z

    .line 151
    invoke-virtual {p3, p2}, Ljxl/biff/FormattingRecords;->getDateFormat(I)Ljava/text/DateFormat;

    move-result-object p2

    iput-object p2, p0, Ljxl/read/biff/DateRecord;->format:Ljava/text/DateFormat;

    .line 154
    invoke-interface {p1}, Ljxl/NumberCell;->getValue()D

    move-result-wide p1

    .line 156
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    cmpg-double p3, v0, v2

    if-gez p3, :cond_38

    .line 158
    iget-object p3, p0, Ljxl/read/biff/DateRecord;->format:Ljava/text/DateFormat;

    if-nez p3, :cond_34

    .line 160
    sget-object p3, Ljxl/read/biff/DateRecord;->timeFormat:Ljava/text/SimpleDateFormat;

    iput-object p3, p0, Ljxl/read/biff/DateRecord;->format:Ljava/text/DateFormat;

    :cond_34
    const/4 p3, 0x1

    .line 162
    iput-boolean p3, p0, Ljxl/read/biff/DateRecord;->time:Z

    goto :goto_42

    .line 166
    :cond_38
    iget-object p3, p0, Ljxl/read/biff/DateRecord;->format:Ljava/text/DateFormat;

    if-nez p3, :cond_40

    .line 168
    sget-object p3, Ljxl/read/biff/DateRecord;->dateFormat:Ljava/text/SimpleDateFormat;

    iput-object p3, p0, Ljxl/read/biff/DateRecord;->format:Ljava/text/DateFormat;

    .line 170
    :cond_40
    iput-boolean p5, p0, Ljxl/read/biff/DateRecord;->time:Z

    :goto_42
    if-nez p4, :cond_52

    .line 177
    iget-boolean p3, p0, Ljxl/read/biff/DateRecord;->time:Z

    if-nez p3, :cond_52

    const-wide v0, 0x404e800000000000L  # 61.0

    cmpg-double p3, p1, v0

    if-gez p3, :cond_52

    add-double/2addr p1, v2

    .line 184
    :cond_52
    iget-object p3, p0, Ljxl/read/biff/DateRecord;->format:Ljava/text/DateFormat;

    sget-object p5, Ljxl/read/biff/DateRecord;->gmtZone:Ljava/util/TimeZone;

    invoke-virtual {p3, p5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    if-eqz p4, :cond_5e

    const/16 p3, 0x5e2b

    goto :goto_60

    :cond_5e
    const/16 p3, 0x63e1

    :goto_60
    int-to-double p3, p3

    sub-double/2addr p1, p3

    const-wide p3, 0x40f5180000000000L  # 86400.0

    mul-double p1, p1, p3

    .line 193
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    mul-long p1, p1, p3

    .line 195
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3, p1, p2}, Ljava/util/Date;-><init>(J)V

    iput-object p3, p0, Ljxl/read/biff/DateRecord;->date:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getCellFeatures()Ljxl/CellFeatures;
    .registers 2

    .line 333
    iget-object v0, p0, Ljxl/read/biff/DateRecord;->features:Ljxl/CellFeatures;

    return-object v0
.end method

.method public getCellFormat()Ljxl/format/CellFormat;
    .registers 3

    .line 283
    iget-boolean v0, p0, Ljxl/read/biff/DateRecord;->initialized:Z

    if-nez v0, :cond_11

    .line 285
    iget-object v0, p0, Ljxl/read/biff/DateRecord;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget v1, p0, Ljxl/read/biff/DateRecord;->xfIndex:I

    invoke-virtual {v0, v1}, Ljxl/biff/FormattingRecords;->getXFRecord(I)Ljxl/biff/XFRecord;

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/DateRecord;->cellFormat:Ljxl/format/CellFormat;

    const/4 v0, 0x1

    .line 286
    iput-boolean v0, p0, Ljxl/read/biff/DateRecord;->initialized:Z

    .line 289
    :cond_11
    iget-object v0, p0, Ljxl/read/biff/DateRecord;->cellFormat:Ljxl/format/CellFormat;

    return-object v0
.end method

.method public final getColumn()I
    .registers 2

    .line 215
    iget v0, p0, Ljxl/read/biff/DateRecord;->column:I

    return v0
.end method

.method public getContents()Ljava/lang/String;
    .registers 3

    .line 236
    iget-object v0, p0, Ljxl/read/biff/DateRecord;->format:Ljava/text/DateFormat;

    iget-object v1, p0, Ljxl/read/biff/DateRecord;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .registers 2

    .line 225
    iget-object v0, p0, Ljxl/read/biff/DateRecord;->date:Ljava/util/Date;

    return-object v0
.end method

.method public final getRow()I
    .registers 2

    .line 205
    iget v0, p0, Ljxl/read/biff/DateRecord;->row:I

    return v0
.end method

.method protected final getSheet()Ljxl/read/biff/SheetImpl;
    .registers 2

    .line 323
    iget-object v0, p0, Ljxl/read/biff/DateRecord;->sheet:Ljxl/read/biff/SheetImpl;

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .registers 2

    .line 246
    sget-object v0, Ljxl/CellType;->DATE:Ljxl/CellType;

    return-object v0
.end method

.method public isTime()Z
    .registers 2

    .line 257
    iget-boolean v0, p0, Ljxl/read/biff/DateRecord;->time:Z

    return v0
.end method

.method public setCellFeatures(Ljxl/CellFeatures;)V
    .registers 2

    .line 343
    iput-object p1, p0, Ljxl/read/biff/DateRecord;->features:Ljxl/CellFeatures;

    return-void
.end method
