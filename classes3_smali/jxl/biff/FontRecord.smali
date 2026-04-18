.class public Ljxl/biff/FontRecord;
.super Ljxl/biff/WritableRecordData;
.source "FontRecord.java"

# interfaces
.implements Ljxl/format/Font;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/FontRecord$Biff7;
    }
.end annotation


# static fields
.field public static final biff7:Ljxl/biff/FontRecord$Biff7;


# instance fields
.field private boldWeight:I

.field private characterSet:B

.field private colourIndex:I

.field private fontFamily:B

.field private fontIndex:I

.field private initialized:Z

.field private italic:Z

.field private name:Ljava/lang/String;

.field private pointHeight:I

.field private scriptStyle:I

.field private struckout:Z

.field private underlineStyle:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    const-class v0, Ljxl/biff/FontRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    .line 98
    new-instance v0, Ljxl/biff/FontRecord$Biff7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/biff/FontRecord$Biff7;-><init>(Ljxl/biff/FontRecord$1;)V

    sput-object v0, Ljxl/biff/FontRecord;->biff7:Ljxl/biff/FontRecord$Biff7;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIZIII)V
    .registers 9

    .line 119
    sget-object v0, Ljxl/biff/Type;->FONT:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 120
    iput p3, p0, Ljxl/biff/FontRecord;->boldWeight:I

    .line 121
    iput p5, p0, Ljxl/biff/FontRecord;->underlineStyle:I

    .line 122
    iput-object p1, p0, Ljxl/biff/FontRecord;->name:Ljava/lang/String;

    .line 123
    iput p2, p0, Ljxl/biff/FontRecord;->pointHeight:I

    .line 124
    iput-boolean p4, p0, Ljxl/biff/FontRecord;->italic:Z

    .line 125
    iput p7, p0, Ljxl/biff/FontRecord;->scriptStyle:I

    .line 126
    iput p6, p0, Ljxl/biff/FontRecord;->colourIndex:I

    const/4 p1, 0x0

    .line 127
    iput-boolean p1, p0, Ljxl/biff/FontRecord;->initialized:Z

    .line 128
    iput-boolean p1, p0, Ljxl/biff/FontRecord;->struckout:Z

    return-void
.end method

.method protected constructor <init>(Ljxl/format/Font;)V
    .registers 4

    .line 224
    sget-object v0, Ljxl/biff/Type;->FONT:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    .line 226
    :goto_b
    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    .line 228
    invoke-interface {p1}, Ljxl/format/Font;->getPointSize()I

    move-result v1

    iput v1, p0, Ljxl/biff/FontRecord;->pointHeight:I

    .line 229
    invoke-interface {p1}, Ljxl/format/Font;->getColour()Ljxl/format/Colour;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/format/Colour;->getValue()I

    move-result v1

    iput v1, p0, Ljxl/biff/FontRecord;->colourIndex:I

    .line 230
    invoke-interface {p1}, Ljxl/format/Font;->getBoldWeight()I

    move-result v1

    iput v1, p0, Ljxl/biff/FontRecord;->boldWeight:I

    .line 231
    invoke-interface {p1}, Ljxl/format/Font;->getScriptStyle()Ljxl/format/ScriptStyle;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/format/ScriptStyle;->getValue()I

    move-result v1

    iput v1, p0, Ljxl/biff/FontRecord;->scriptStyle:I

    .line 232
    invoke-interface {p1}, Ljxl/format/Font;->getUnderlineStyle()Ljxl/format/UnderlineStyle;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/format/UnderlineStyle;->getValue()I

    move-result v1

    iput v1, p0, Ljxl/biff/FontRecord;->underlineStyle:I

    .line 233
    invoke-interface {p1}, Ljxl/format/Font;->isItalic()Z

    move-result v1

    iput-boolean v1, p0, Ljxl/biff/FontRecord;->italic:Z

    .line 234
    invoke-interface {p1}, Ljxl/format/Font;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljxl/biff/FontRecord;->name:Ljava/lang/String;

    .line 235
    invoke-interface {p1}, Ljxl/format/Font;->isStruckout()Z

    move-result p1

    iput-boolean p1, p0, Ljxl/biff/FontRecord;->struckout:Z

    .line 236
    iput-boolean v0, p0, Ljxl/biff/FontRecord;->initialized:Z

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V
    .registers 8

    .line 140
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 142
    invoke-virtual {p0}, Ljxl/biff/RecordData;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 144
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte v3, p1, v2

    invoke-static {v1, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    div-int/lit8 v1, v1, 0x14

    iput v1, p0, Ljxl/biff/FontRecord;->pointHeight:I

    const/4 v1, 0x4

    .line 146
    aget-byte v1, p1, v1

    const/4 v3, 0x5

    aget-byte v3, p1, v3

    invoke-static {v1, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/biff/FontRecord;->colourIndex:I

    const/4 v1, 0x6

    .line 147
    aget-byte v1, p1, v1

    const/4 v3, 0x7

    aget-byte v3, p1, v3

    invoke-static {v1, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/biff/FontRecord;->boldWeight:I

    const/16 v1, 0x8

    .line 148
    aget-byte v3, p1, v1

    const/16 v4, 0x9

    aget-byte v4, p1, v4

    invoke-static {v3, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    iput v3, p0, Ljxl/biff/FontRecord;->scriptStyle:I

    const/16 v3, 0xa

    .line 149
    aget-byte v3, p1, v3

    iput v3, p0, Ljxl/biff/FontRecord;->underlineStyle:I

    const/16 v3, 0xb

    .line 150
    aget-byte v3, p1, v3

    iput-byte v3, p0, Ljxl/biff/FontRecord;->fontFamily:B

    const/16 v3, 0xc

    .line 151
    aget-byte v3, p1, v3

    iput-byte v3, p0, Ljxl/biff/FontRecord;->characterSet:B

    .line 152
    iput-boolean v0, p0, Ljxl/biff/FontRecord;->initialized:Z

    const/4 v0, 0x2

    .line 154
    aget-byte v3, p1, v0

    and-int/2addr v3, v0

    if-eqz v3, :cond_5b

    .line 156
    iput-boolean v2, p0, Ljxl/biff/FontRecord;->italic:Z

    .line 159
    :cond_5b
    aget-byte v0, p1, v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_62

    .line 161
    iput-boolean v2, p0, Ljxl/biff/FontRecord;->struckout:Z

    :cond_62
    const/16 v0, 0xe

    .line 164
    aget-byte v0, p1, v0

    const/16 v1, 0xf

    .line 165
    aget-byte v3, p1, v1

    const/16 v4, 0x10

    if-nez v3, :cond_75

    .line 167
    invoke-static {p1, v0, v4, p2}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/FontRecord;->name:Ljava/lang/String;

    goto :goto_86

    .line 169
    :cond_75
    aget-byte v3, p1, v1

    if-ne v3, v2, :cond_80

    .line 171
    invoke-static {p1, v0, v4}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/FontRecord;->name:Ljava/lang/String;

    goto :goto_86

    .line 176
    :cond_80
    invoke-static {p1, v0, v1, p2}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/FontRecord;->name:Ljava/lang/String;

    :goto_86
    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/biff/FontRecord$Biff7;)V
    .registers 8

    .line 190
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 192
    invoke-virtual {p0}, Ljxl/biff/RecordData;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 p3, 0x0

    .line 194
    aget-byte v0, p1, p3

    const/4 v1, 0x1

    aget-byte v2, p1, v1

    invoke-static {v0, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    div-int/lit8 v0, v0, 0x14

    iput v0, p0, Ljxl/biff/FontRecord;->pointHeight:I

    const/4 v0, 0x4

    .line 196
    aget-byte v0, p1, v0

    const/4 v2, 0x5

    aget-byte v2, p1, v2

    invoke-static {v0, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/biff/FontRecord;->colourIndex:I

    const/4 v0, 0x6

    .line 197
    aget-byte v0, p1, v0

    const/4 v2, 0x7

    aget-byte v2, p1, v2

    invoke-static {v0, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/biff/FontRecord;->boldWeight:I

    const/16 v0, 0x8

    .line 198
    aget-byte v2, p1, v0

    const/16 v3, 0x9

    aget-byte v3, p1, v3

    invoke-static {v2, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    iput v2, p0, Ljxl/biff/FontRecord;->scriptStyle:I

    const/16 v2, 0xa

    .line 199
    aget-byte v2, p1, v2

    iput v2, p0, Ljxl/biff/FontRecord;->underlineStyle:I

    const/16 v2, 0xb

    .line 200
    aget-byte v2, p1, v2

    iput-byte v2, p0, Ljxl/biff/FontRecord;->fontFamily:B

    .line 201
    iput-boolean p3, p0, Ljxl/biff/FontRecord;->initialized:Z

    const/4 p3, 0x2

    .line 203
    aget-byte v2, p1, p3

    and-int/2addr v2, p3

    if-eqz v2, :cond_55

    .line 205
    iput-boolean v1, p0, Ljxl/biff/FontRecord;->italic:Z

    .line 208
    :cond_55
    aget-byte p3, p1, p3

    and-int/2addr p3, v0

    if-eqz p3, :cond_5c

    .line 210
    iput-boolean v1, p0, Ljxl/biff/FontRecord;->struckout:Z

    :cond_5c
    const/16 p3, 0xe

    .line 213
    aget-byte p3, p1, p3

    const/16 v0, 0xf

    .line 214
    invoke-static {p1, p3, v0, p2}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/FontRecord;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 502
    :cond_4
    instance-of v1, p1, Ljxl/biff/FontRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 507
    :cond_a
    check-cast p1, Ljxl/biff/FontRecord;

    .line 509
    iget v1, p0, Ljxl/biff/FontRecord;->pointHeight:I

    iget v3, p1, Ljxl/biff/FontRecord;->pointHeight:I

    if-ne v1, v3, :cond_4d

    iget v1, p0, Ljxl/biff/FontRecord;->colourIndex:I

    iget v3, p1, Ljxl/biff/FontRecord;->colourIndex:I

    if-ne v1, v3, :cond_4d

    iget v1, p0, Ljxl/biff/FontRecord;->boldWeight:I

    iget v3, p1, Ljxl/biff/FontRecord;->boldWeight:I

    if-ne v1, v3, :cond_4d

    iget v1, p0, Ljxl/biff/FontRecord;->scriptStyle:I

    iget v3, p1, Ljxl/biff/FontRecord;->scriptStyle:I

    if-ne v1, v3, :cond_4d

    iget v1, p0, Ljxl/biff/FontRecord;->underlineStyle:I

    iget v3, p1, Ljxl/biff/FontRecord;->underlineStyle:I

    if-ne v1, v3, :cond_4d

    iget-boolean v1, p0, Ljxl/biff/FontRecord;->italic:Z

    iget-boolean v3, p1, Ljxl/biff/FontRecord;->italic:Z

    if-ne v1, v3, :cond_4d

    iget-boolean v1, p0, Ljxl/biff/FontRecord;->struckout:Z

    iget-boolean v3, p1, Ljxl/biff/FontRecord;->struckout:Z

    if-ne v1, v3, :cond_4d

    iget-byte v1, p0, Ljxl/biff/FontRecord;->fontFamily:B

    iget-byte v3, p1, Ljxl/biff/FontRecord;->fontFamily:B

    if-ne v1, v3, :cond_4d

    iget-byte v1, p0, Ljxl/biff/FontRecord;->characterSet:B

    iget-byte v3, p1, Ljxl/biff/FontRecord;->characterSet:B

    if-ne v1, v3, :cond_4d

    iget-object v1, p0, Ljxl/biff/FontRecord;->name:Ljava/lang/String;

    iget-object p1, p1, Ljxl/biff/FontRecord;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    return v0

    :cond_4d
    return v2
.end method

.method public getBoldWeight()I
    .registers 2

    .line 376
    iget v0, p0, Ljxl/biff/FontRecord;->boldWeight:I

    return v0
.end method

.method public getColour()Ljxl/format/Colour;
    .registers 2

    .line 445
    iget v0, p0, Ljxl/biff/FontRecord;->colourIndex:I

    invoke-static {v0}, Ljxl/format/Colour;->getInternalColour(I)Ljxl/format/Colour;

    move-result-object v0

    return-object v0
.end method

.method public getData()[B
    .registers 7

    .line 246
    iget-object v0, p0, Ljxl/biff/FontRecord;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    const/16 v2, 0x10

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 249
    iget v3, p0, Ljxl/biff/FontRecord;->pointHeight:I

    mul-int/lit8 v3, v3, 0x14

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 252
    iget-boolean v3, p0, Ljxl/biff/FontRecord;->italic:Z

    if-eqz v3, :cond_20

    .line 254
    aget-byte v3, v0, v1

    or-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 257
    :cond_20
    iget-boolean v3, p0, Ljxl/biff/FontRecord;->struckout:Z

    const/16 v5, 0x8

    if-eqz v3, :cond_2c

    .line 259
    aget-byte v3, v0, v1

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 263
    :cond_2c
    iget v1, p0, Ljxl/biff/FontRecord;->colourIndex:I

    const/4 v3, 0x4

    invoke-static {v1, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 266
    iget v1, p0, Ljxl/biff/FontRecord;->boldWeight:I

    const/4 v3, 0x6

    invoke-static {v1, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 269
    iget v1, p0, Ljxl/biff/FontRecord;->scriptStyle:I

    invoke-static {v1, v0, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v1, 0xa

    .line 272
    iget v3, p0, Ljxl/biff/FontRecord;->underlineStyle:I

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    const/16 v1, 0xb

    .line 275
    iget-byte v3, p0, Ljxl/biff/FontRecord;->fontFamily:B

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    .line 278
    iget-byte v3, p0, Ljxl/biff/FontRecord;->characterSet:B

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    .line 281
    aput-byte v4, v0, v1

    const/16 v1, 0xe

    .line 284
    iget-object v3, p0, Ljxl/biff/FontRecord;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    const/16 v1, 0xf

    const/4 v3, 0x1

    .line 286
    aput-byte v3, v0, v1

    .line 289
    iget-object v1, p0, Ljxl/biff/FontRecord;->name:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    return-object v0
.end method

.method public final getFontIndex()I
    .registers 2

    .line 332
    iget v0, p0, Ljxl/biff/FontRecord;->fontIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 478
    iget-object v0, p0, Ljxl/biff/FontRecord;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPointSize()I
    .registers 2

    .line 354
    iget v0, p0, Ljxl/biff/FontRecord;->pointHeight:I

    return v0
.end method

.method public getScriptStyle()Ljxl/format/ScriptStyle;
    .registers 2

    .line 468
    iget v0, p0, Ljxl/biff/FontRecord;->scriptStyle:I

    invoke-static {v0}, Ljxl/format/ScriptStyle;->getStyle(I)Ljxl/format/ScriptStyle;

    move-result-object v0

    return-object v0
.end method

.method public getUnderlineStyle()Ljxl/format/UnderlineStyle;
    .registers 2

    .line 422
    iget v0, p0, Ljxl/biff/FontRecord;->underlineStyle:I

    invoke-static {v0}, Ljxl/format/UnderlineStyle;->getStyle(I)Ljxl/format/UnderlineStyle;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 487
    iget-object v0, p0, Ljxl/biff/FontRecord;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final initialize(I)V
    .registers 2

    .line 312
    iput p1, p0, Ljxl/biff/FontRecord;->fontIndex:I

    const/4 p1, 0x1

    .line 313
    iput-boolean p1, p0, Ljxl/biff/FontRecord;->initialized:Z

    return-void
.end method

.method public final isInitialized()Z
    .registers 2

    .line 301
    iget-boolean v0, p0, Ljxl/biff/FontRecord;->initialized:Z

    return v0
.end method

.method public isItalic()Z
    .registers 2

    .line 399
    iget-boolean v0, p0, Ljxl/biff/FontRecord;->italic:Z

    return v0
.end method

.method public isStruckout()Z
    .registers 2

    .line 533
    iget-boolean v0, p0, Ljxl/biff/FontRecord;->struckout:Z

    return v0
.end method

.method protected setFontColour(I)V
    .registers 3

    .line 433
    iget-boolean v0, p0, Ljxl/biff/FontRecord;->initialized:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 435
    iput p1, p0, Ljxl/biff/FontRecord;->colourIndex:I

    return-void
.end method

.method public final uninitialize()V
    .registers 2

    const/4 v0, 0x0

    .line 322
    iput-boolean v0, p0, Ljxl/biff/FontRecord;->initialized:Z

    return-void
.end method
