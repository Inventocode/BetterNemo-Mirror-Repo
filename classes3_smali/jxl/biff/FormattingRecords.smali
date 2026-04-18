.class public Ljxl/biff/FormattingRecords;
.super Ljava/lang/Object;
.source "FormattingRecords.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private fonts:Ljxl/biff/Fonts;

.field private formats:Ljava/util/HashMap;

.field private formatsList:Ljava/util/ArrayList;

.field private nextCustomIndexNumber:I

.field private palette:Ljxl/biff/PaletteRecord;

.field private xfRecords:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    const-class v0, Ljxl/biff/FormattingRecords;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/FormattingRecords;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/Fonts;)V
    .registers 4

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljxl/biff/FormattingRecords;->formats:Ljava/util/HashMap;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljxl/biff/FormattingRecords;->formatsList:Ljava/util/ArrayList;

    .line 104
    iput-object p1, p0, Ljxl/biff/FormattingRecords;->fonts:Ljxl/biff/Fonts;

    const/16 p1, 0xa4

    .line 105
    iput p1, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    return-void
.end method


# virtual methods
.method public final addFormat(Ljxl/biff/DisplayFormat;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/NumFormatRecordsException;
        }
    .end annotation

    .line 151
    invoke-interface {p1}, Ljxl/biff/DisplayFormat;->isInitialized()Z

    move-result v0

    const/16 v1, 0x1b9

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v0

    if-lt v0, v1, :cond_20

    .line 154
    sget-object v0, Ljxl/biff/FormattingRecords;->logger:Ljxl/common/Logger;

    const-string v2, "Format index exceeds Excel maximum - assigning custom number"

    invoke-virtual {v0, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 156
    iget v0, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    invoke-interface {p1, v0}, Ljxl/biff/DisplayFormat;->initialize(I)V

    .line 157
    iget v0, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    .line 161
    :cond_20
    invoke-interface {p1}, Ljxl/biff/DisplayFormat;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_31

    .line 163
    iget v0, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    invoke-interface {p1, v0}, Ljxl/biff/DisplayFormat;->initialize(I)V

    .line 164
    iget v0, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    .line 167
    :cond_31
    iget v0, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    if-gt v0, v1, :cond_5f

    .line 173
    invoke-interface {p1}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v0

    iget v1, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    if-lt v0, v1, :cond_45

    .line 175
    invoke-interface {p1}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    .line 178
    :cond_45
    invoke-interface {p1}, Ljxl/biff/DisplayFormat;->isBuiltIn()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 180
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->formatsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->formats:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-interface {p1}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5e
    return-void

    .line 169
    :cond_5f
    iput v1, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    .line 170
    new-instance p1, Ljxl/biff/NumFormatRecordsException;

    invoke-direct {p1}, Ljxl/biff/NumFormatRecordsException;-><init>()V

    throw p1
.end method

.method public final addStyle(Ljxl/biff/XFRecord;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/NumFormatRecordsException;
        }
    .end annotation

    .line 120
    invoke-virtual {p1}, Ljxl/biff/XFRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_17

    .line 122
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 123
    iget-object v1, p0, Ljxl/biff/FormattingRecords;->fonts:Ljxl/biff/Fonts;

    invoke-virtual {p1, v0, p0, v1}, Ljxl/biff/XFRecord;->initialize(ILjxl/biff/FormattingRecords;Ljxl/biff/Fonts;)V

    .line 124
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 131
    :cond_17
    invoke-virtual {p1}, Ljxl/biff/XFRecord;->getXFIndex()I

    move-result v0

    iget-object v1, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_28

    .line 133
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    :goto_28
    return-void
.end method

.method public final getDateFormat(I)Ljava/text/DateFormat;
    .registers 4

    .line 217
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/XFRecord;

    .line 219
    invoke-virtual {p1}, Ljxl/biff/XFRecord;->isDate()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 221
    invoke-virtual {p1}, Ljxl/biff/XFRecord;->getDateFormat()Ljava/text/DateFormat;

    move-result-object p1

    return-object p1

    .line 224
    :cond_13
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->formats:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljxl/biff/XFRecord;->getFormatRecord()I

    move-result p1

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/FormatRecord;

    const/4 v0, 0x0

    if-nez p1, :cond_28

    return-object v0

    .line 232
    :cond_28
    invoke-virtual {p1}, Ljxl/biff/FormatRecord;->isDate()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p1}, Ljxl/biff/FormatRecord;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    :cond_32
    return-object v0
.end method

.method protected final getFonts()Ljxl/biff/Fonts;
    .registers 2

    .line 326
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->fonts:Ljxl/biff/Fonts;

    return-object v0
.end method

.method getFormatRecord(I)Ljxl/biff/FormatRecord;
    .registers 4

    .line 270
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->formats:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/FormatRecord;

    return-object p1
.end method

.method public final getNumberFormat(I)Ljava/text/NumberFormat;
    .registers 4

    .line 244
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/XFRecord;

    .line 246
    invoke-virtual {p1}, Ljxl/biff/XFRecord;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 248
    invoke-virtual {p1}, Ljxl/biff/XFRecord;->getNumberFormat()Ljava/text/NumberFormat;

    move-result-object p1

    return-object p1

    .line 251
    :cond_13
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->formats:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljxl/biff/XFRecord;->getFormatRecord()I

    move-result p1

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/FormatRecord;

    const/4 v0, 0x0

    if-nez p1, :cond_28

    return-object v0

    .line 259
    :cond_28
    invoke-virtual {p1}, Ljxl/biff/FormatRecord;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p1}, Ljxl/biff/FormatRecord;->getNumberFormat()Ljava/text/NumberFormat;

    move-result-object v0

    :cond_32
    return-object v0
.end method

.method public getPalette()Ljxl/biff/PaletteRecord;
    .registers 2

    .line 529
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->palette:Ljxl/biff/PaletteRecord;

    return-object v0
.end method

.method public final getXFRecord(I)Ljxl/biff/XFRecord;
    .registers 3

    .line 338
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/XFRecord;

    return-object p1
.end method

.method public final isDate(I)Z
    .registers 4

    .line 195
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/XFRecord;

    .line 197
    invoke-virtual {p1}, Ljxl/biff/XFRecord;->isDate()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p1, 0x1

    return p1

    .line 202
    :cond_10
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->formats:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljxl/biff/XFRecord;->getFormatRecord()I

    move-result p1

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/FormatRecord;

    if-nez p1, :cond_25

    const/4 p1, 0x0

    goto :goto_29

    .line 205
    :cond_25
    invoke-virtual {p1}, Ljxl/biff/FormatRecord;->isDate()Z

    move-result p1

    :goto_29
    return p1
.end method

.method public rationalize(Ljxl/biff/IndexMapping;Ljxl/biff/IndexMapping;)Ljxl/biff/IndexMapping;
    .registers 11

    .line 379
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 381
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/XFRecord;

    .line 383
    invoke-virtual {v1}, Ljxl/biff/XFRecord;->getFormatRecord()I

    move-result v2

    const/16 v3, 0xa4

    if-lt v2, v3, :cond_25

    .line 385
    invoke-virtual {v1}, Ljxl/biff/XFRecord;->getFormatRecord()I

    move-result v2

    invoke-virtual {p2, v2}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/biff/XFRecord;->setFormatIndex(I)V

    .line 388
    :cond_25
    invoke-virtual {v1}, Ljxl/biff/XFRecord;->getFontIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/biff/XFRecord;->setFontIndex(I)V

    goto :goto_6

    .line 391
    :cond_31
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0x15

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 392
    new-instance v0, Ljxl/biff/IndexMapping;

    iget-object v1, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljxl/biff/IndexMapping;-><init>(I)V

    .line 395
    iget-object v1, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4f
    if-ge v3, v1, :cond_60

    .line 399
    iget-object v4, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    invoke-virtual {v0, v3, v3}, Ljxl/biff/IndexMapping;->setMapping(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    :cond_60
    if-ge v1, p2, :cond_6a

    .line 405
    sget-object p1, Ljxl/biff/FormattingRecords;->logger:Ljxl/common/Logger;

    const-string p2, "There are less than the expected minimum number of XF records"

    invoke-virtual {p1, p2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    return-object v0

    :cond_6a
    const/4 v1, 0x0

    .line 411
    :goto_6b
    iget-object v3, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p2, v3, :cond_b0

    .line 413
    iget-object v3, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/biff/XFRecord;

    .line 417
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    .line 418
    :cond_80
    :goto_80
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a3

    if-nez v5, :cond_a3

    .line 420
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljxl/biff/XFRecord;

    .line 421
    invoke-virtual {v6, v3}, Ljxl/biff/XFRecord;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_80

    .line 424
    invoke-virtual {v6}, Ljxl/biff/XFRecord;->getXFIndex()I

    move-result v5

    invoke-virtual {v0, v5}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result v5

    invoke-virtual {v0, p2, v5}, Ljxl/biff/IndexMapping;->setMapping(II)V

    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x1

    goto :goto_80

    :cond_a3
    if-nez v5, :cond_ad

    .line 432
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sub-int v3, p2, v1

    .line 433
    invoke-virtual {v0, p2, v3}, Ljxl/biff/IndexMapping;->setMapping(II)V

    :cond_ad
    add-int/lit8 p2, p2, 0x1

    goto :goto_6b

    .line 440
    :cond_b0
    iget-object p2, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 442
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/XFRecord;

    .line 443
    invoke-virtual {v1, v0}, Ljxl/biff/XFRecord;->rationalize(Ljxl/biff/IndexMapping;)V

    goto :goto_b6

    .line 447
    :cond_c6
    iput-object p1, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public rationalizeDisplayFormats()Ljxl/biff/IndexMapping;
    .registers 12

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    new-instance v1, Ljxl/biff/IndexMapping;

    iget v2, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    invoke-direct {v1, v2}, Ljxl/biff/IndexMapping;-><init>(I)V

    .line 467
    iget-object v2, p0, Ljxl/biff/FormattingRecords;->formatsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 471
    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_77

    .line 473
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljxl/biff/DisplayFormat;

    .line 475
    invoke-interface {v5}, Ljxl/biff/DisplayFormat;->isBuiltIn()Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    invoke-static {v6}, Ljxl/common/Assert;->verify(Z)V

    .line 478
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, 0x0

    .line 480
    :cond_2e
    :goto_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_55

    if-nez v8, :cond_55

    .line 482
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljxl/biff/DisplayFormat;

    .line 483
    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2e

    .line 486
    invoke-interface {v5}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v8

    invoke-interface {v9}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v9

    invoke-virtual {v1, v9}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result v9

    invoke-virtual {v1, v8, v9}, Ljxl/biff/IndexMapping;->setMapping(II)V

    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x1

    goto :goto_2e

    :cond_55
    if-nez v8, :cond_14

    .line 495
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    invoke-interface {v5}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v6

    sub-int/2addr v6, v4

    const/16 v7, 0x1b9

    if-le v6, v7, :cond_6a

    .line 499
    sget-object v6, Ljxl/biff/FormattingRecords;->logger:Ljxl/common/Logger;

    const-string v7, "Too many number formats - using default format."

    invoke-virtual {v6, v7}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 502
    :cond_6a
    invoke-interface {v5}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v6

    invoke-interface {v5}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v1, v6, v5}, Ljxl/biff/IndexMapping;->setMapping(II)V

    goto :goto_14

    .line 508
    :cond_77
    iput-object v0, p0, Ljxl/biff/FormattingRecords;->formatsList:Ljava/util/ArrayList;

    .line 511
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 513
    :goto_7d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_95

    .line 515
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/biff/DisplayFormat;

    .line 516
    invoke-interface {v2}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljxl/biff/DisplayFormat;->initialize(I)V

    goto :goto_7d

    :cond_95
    return-object v1
.end method

.method public rationalizeFonts()Ljxl/biff/IndexMapping;
    .registers 2

    .line 360
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->fonts:Ljxl/biff/Fonts;

    invoke-virtual {v0}, Ljxl/biff/Fonts;->rationalize()Ljxl/biff/IndexMapping;

    move-result-object v0

    return-object v0
.end method

.method public setPalette(Ljxl/biff/PaletteRecord;)V
    .registers 2

    .line 539
    iput-object p1, p0, Ljxl/biff/FormattingRecords;->palette:Ljxl/biff/PaletteRecord;

    return-void
.end method

.method public write(Ljxl/write/biff/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->formatsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 284
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 286
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/FormatRecord;

    .line 287
    invoke-virtual {p1, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_6

    .line 291
    :cond_16
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 293
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 295
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/XFRecord;

    .line 296
    invoke-virtual {p1, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_1c

    .line 300
    :cond_2c
    new-instance v0, Ljxl/biff/BuiltInStyle;

    const/16 v1, 0x10

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInStyle;-><init>(II)V

    .line 301
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 303
    new-instance v0, Ljxl/biff/BuiltInStyle;

    const/16 v1, 0x11

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInStyle;-><init>(II)V

    .line 304
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 306
    new-instance v0, Ljxl/biff/BuiltInStyle;

    const/16 v1, 0x12

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInStyle;-><init>(II)V

    .line 307
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 309
    new-instance v0, Ljxl/biff/BuiltInStyle;

    const/16 v1, 0x13

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInStyle;-><init>(II)V

    .line 310
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 312
    new-instance v0, Ljxl/biff/BuiltInStyle;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljxl/biff/BuiltInStyle;-><init>(II)V

    .line 313
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 315
    new-instance v0, Ljxl/biff/BuiltInStyle;

    const/16 v1, 0x14

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInStyle;-><init>(II)V

    .line 316
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    return-void
.end method
