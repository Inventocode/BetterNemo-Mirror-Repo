.class public abstract Ljxl/write/biff/DateRecord;
.super Ljxl/write/biff/CellValue;
.source "DateRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/write/biff/DateRecord$GMTDate;
    }
.end annotation


# static fields
.field static final defaultDateFormat:Ljxl/write/WritableCellFormat;


# instance fields
.field private date:Ljava/util/Date;

.field private time:Z

.field private value:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 44
    const-class v0, Ljxl/write/biff/DateRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    .line 75
    new-instance v0, Ljxl/write/WritableCellFormat;

    sget-object v1, Ljxl/write/DateFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {v0, v1}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    sput-object v0, Ljxl/write/biff/DateRecord;->defaultDateFormat:Ljxl/write/WritableCellFormat;

    return-void
.end method

.method protected constructor <init>(Ljxl/DateCell;)V
    .registers 3

    .line 174
    sget-object v0, Ljxl/biff/Type;->NUMBER:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;Ljxl/Cell;)V

    .line 175
    invoke-interface {p1}, Ljxl/DateCell;->getDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    .line 176
    invoke-interface {p1}, Ljxl/DateCell;->isTime()Z

    move-result p1

    iput-boolean p1, p0, Ljxl/write/biff/DateRecord;->time:Z

    const/4 p1, 0x0

    .line 177
    invoke-direct {p0, p1}, Ljxl/write/biff/DateRecord;->calculateValue(Z)V

    return-void
.end method

.method private calculateValue(Z)V
    .registers 8

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1c

    .line 213
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 214
    iget-object v0, p0, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0xf

    .line 216
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x10

    .line 217
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    int-to-long v2, p1

    goto :goto_1d

    :cond_1c
    move-wide v2, v0

    .line 220
    :goto_1d
    iget-object p1, p0, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    add-long/2addr v4, v0

    add-long/2addr v4, v2

    long-to-double v0, v4

    const-wide v2, 0x4194997000000000L  # 8.64E7

    div-double/2addr v0, v2

    const-wide v2, 0x40d8f84000000000L  # 25569.0

    add-double/2addr v0, v2

    .line 227
    iput-wide v0, p0, Ljxl/write/biff/DateRecord;->value:D

    .line 233
    iget-boolean p1, p0, Ljxl/write/biff/DateRecord;->time:Z

    if-nez p1, :cond_46

    const-wide v2, 0x404e800000000000L  # 61.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_46

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v0, v2

    .line 235
    iput-wide v0, p0, Ljxl/write/biff/DateRecord;->value:D

    :cond_46
    if-eqz p1, :cond_4f

    .line 241
    iget-wide v0, p0, Ljxl/write/biff/DateRecord;->value:D

    double-to-int p1, v0

    int-to-double v2, p1

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljxl/write/biff/DateRecord;->value:D

    :cond_4f
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .registers 2

    .line 279
    iget-object v0, p0, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()[B
    .registers 5

    .line 262
    invoke-super {p0}, Ljxl/write/biff/CellValue;->getData()[B

    move-result-object v0

    .line 263
    array-length v1, v0

    add-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    .line 264
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    iget-wide v2, p0, Ljxl/write/biff/DateRecord;->value:D

    array-length v0, v0

    invoke-static {v2, v3, v1, v0}, Ljxl/biff/DoubleHelper;->getIEEEBytes(D[BI)V

    return-object v1
.end method

.method public getDate()Ljava/util/Date;
    .registers 2

    .line 313
    iget-object v0, p0, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .registers 2

    .line 252
    sget-object v0, Ljxl/CellType;->DATE:Ljxl/CellType;

    return-object v0
.end method

.method public isTime()Z
    .registers 2

    .line 325
    iget-boolean v0, p0, Ljxl/write/biff/DateRecord;->time:Z

    return v0
.end method
