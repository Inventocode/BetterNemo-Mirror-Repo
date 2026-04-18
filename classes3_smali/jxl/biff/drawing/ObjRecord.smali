.class public Ljxl/biff/drawing/ObjRecord;
.super Ljxl/biff/WritableRecordData;
.source "ObjRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/drawing/ObjRecord$ObjType;
    }
.end annotation


# static fields
.field public static final BUTTON:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final CHART:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final CHECKBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final COMBOBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final EXCELNOTE:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final PICTURE:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final TEXT:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final UNKNOWN:Ljxl/biff/drawing/ObjRecord$ObjType;

.field private static final logger:Ljxl/common/Logger;


# instance fields
.field private objectId:I

.field private read:Z

.field private type:Ljxl/biff/drawing/ObjRecord$ObjType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 39
    const-class v0, Ljxl/biff/drawing/ObjRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->logger:Ljxl/common/Logger;

    .line 97
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/4 v1, 0x0

    const-string v2, "Group"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    .line 98
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/4 v1, 0x1

    const-string v2, "Line"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    .line 99
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/4 v1, 0x2

    const-string v2, "Rectangle"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    .line 100
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/4 v1, 0x3

    const-string v2, "Oval"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    .line 101
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/4 v1, 0x4

    const-string v2, "Arc"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    .line 102
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/4 v1, 0x5

    const-string v2, "Chart"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->CHART:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 103
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/4 v1, 0x6

    const-string v2, "Text"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->TEXT:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 104
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/4 v1, 0x7

    const-string v2, "Button"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->BUTTON:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 105
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0x8

    const-string v2, "Picture"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->PICTURE:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 106
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0x9

    const-string v2, "Polygon"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    .line 107
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0xb

    const-string v2, "Checkbox"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->CHECKBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 108
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0xc

    const-string v2, "Option"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    .line 109
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0xd

    const-string v2, "Edit Box"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    .line 110
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0xe

    const-string v2, "Label"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    .line 111
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0xf

    const-string v2, "Dialogue Box"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    .line 112
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0x10

    const-string v2, "Spin Box"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    .line 113
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0x11

    const-string v2, "Scrollbar"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    .line 114
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0x12

    const-string v2, "List Box"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    .line 115
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0x13

    const-string v2, "Group Box"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    .line 116
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0x14

    const-string v2, "Combo Box"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->COMBOBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 117
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v2, 0x1e

    const-string v3, "MS Office Drawing"

    invoke-direct {v0, v2, v3}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    .line 119
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const-string v2, "Form Combo Box"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    .line 121
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0x19

    const-string v2, "Excel Note"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->EXCELNOTE:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 124
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0xff

    const-string v2, "Unknown"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->UNKNOWN:Ljxl/biff/drawing/ObjRecord$ObjType;

    return-void
.end method

.method constructor <init>(ILjxl/biff/drawing/ObjRecord$ObjType;)V
    .registers 4

    .line 163
    sget-object v0, Ljxl/biff/Type;->OBJ:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 164
    iput p1, p0, Ljxl/biff/drawing/ObjRecord;->objectId:I

    .line 165
    iput-object p2, p0, Ljxl/biff/drawing/ObjRecord;->type:Ljxl/biff/drawing/ObjRecord$ObjType;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .registers 6

    .line 141
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 142
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x4

    .line 143
    aget-byte v0, p1, v0

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    const/4 v1, 0x1

    .line 144
    iput-boolean v1, p0, Ljxl/biff/drawing/ObjRecord;->read:Z

    .line 145
    invoke-static {v0}, Ljxl/biff/drawing/ObjRecord$ObjType;->getType(I)Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object v1

    iput-object v1, p0, Ljxl/biff/drawing/ObjRecord;->type:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 147
    sget-object v2, Ljxl/biff/drawing/ObjRecord;->UNKNOWN:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-ne v1, v2, :cond_34

    .line 149
    sget-object v1, Ljxl/biff/drawing/ObjRecord;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown object type code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :cond_34
    const/4 v0, 0x6

    .line 152
    aget-byte v0, p1, v0

    const/4 v1, 0x7

    aget-byte p1, p1, v1

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/biff/drawing/ObjRecord;->objectId:I

    return-void
.end method

.method private getComboBoxData()[B
    .registers 10

    const/16 v0, 0x46

    new-array v0, v0, [B

    const/16 v1, 0x15

    const/4 v2, 0x0

    .line 332
    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v1, 0x12

    const/4 v3, 0x2

    .line 335
    invoke-static {v1, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 338
    iget-object v1, p0, Ljxl/biff/drawing/ObjRecord;->type:Ljxl/biff/drawing/ObjRecord$ObjType;

    iget v1, v1, Ljxl/biff/drawing/ObjRecord$ObjType;->value:I

    const/4 v4, 0x4

    invoke-static {v1, v0, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 341
    iget v1, p0, Ljxl/biff/drawing/ObjRecord;->objectId:I

    const/4 v5, 0x6

    invoke-static {v1, v0, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v1, 0x8

    .line 344
    invoke-static {v2, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v6, 0xc

    const/16 v7, 0x16

    .line 349
    invoke-static {v6, v0, v7}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v6, 0x14

    const/16 v7, 0x18

    .line 352
    invoke-static {v6, v0, v7}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v6, 0x24

    const/4 v7, 0x1

    aput-byte v7, v0, v6

    const/16 v6, 0x26

    aput-byte v4, v0, v6

    const/16 v6, 0x2a

    const/16 v8, 0x10

    aput-byte v8, v0, v6

    const/16 v6, 0x2e

    const/16 v8, 0x13

    aput-byte v8, v0, v6

    const/16 v6, 0x30

    const/16 v8, -0x12

    aput-byte v8, v0, v6

    const/16 v6, 0x31

    const/16 v8, 0x1f

    aput-byte v8, v0, v6

    const/16 v6, 0x34

    aput-byte v4, v0, v6

    const/16 v4, 0x38

    aput-byte v7, v0, v4

    const/16 v4, 0x39

    aput-byte v5, v0, v4

    const/16 v4, 0x3c

    aput-byte v3, v0, v4

    const/16 v3, 0x3e

    aput-byte v1, v0, v3

    const/16 v1, 0x40

    aput-byte v1, v0, v1

    const/16 v1, 0x42

    .line 372
    invoke-static {v2, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v1, 0x44

    .line 375
    invoke-static {v2, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v0
.end method

.method private getNoteData()[B
    .registers 5

    const/16 v0, 0x34

    new-array v0, v0, [B

    const/16 v1, 0x15

    const/4 v2, 0x0

    .line 279
    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v1, 0x12

    const/4 v3, 0x2

    .line 282
    invoke-static {v1, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 285
    iget-object v1, p0, Ljxl/biff/drawing/ObjRecord;->type:Ljxl/biff/drawing/ObjRecord$ObjType;

    iget v1, v1, Ljxl/biff/drawing/ObjRecord$ObjType;->value:I

    const/4 v3, 0x4

    invoke-static {v1, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 288
    iget v1, p0, Ljxl/biff/drawing/ObjRecord;->objectId:I

    const/4 v3, 0x6

    invoke-static {v1, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v1, 0x4011

    const/16 v3, 0x8

    .line 291
    invoke-static {v1, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v1, 0xd

    const/16 v3, 0x16

    .line 296
    invoke-static {v1, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v1, 0x18

    .line 299
    invoke-static {v3, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v1, 0x30

    .line 306
    invoke-static {v2, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v1, 0x32

    .line 309
    invoke-static {v2, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v0
.end method

.method private getPictureData()[B
    .registers 7

    const/16 v0, 0x26

    new-array v0, v0, [B

    const/16 v1, 0x15

    const/4 v2, 0x0

    .line 215
    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v1, 0x12

    const/4 v3, 0x2

    .line 218
    invoke-static {v1, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 221
    iget-object v1, p0, Ljxl/biff/drawing/ObjRecord;->type:Ljxl/biff/drawing/ObjRecord$ObjType;

    iget v1, v1, Ljxl/biff/drawing/ObjRecord$ObjType;->value:I

    const/4 v4, 0x4

    invoke-static {v1, v0, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 224
    iget v1, p0, Ljxl/biff/drawing/ObjRecord;->objectId:I

    const/4 v4, 0x6

    invoke-static {v1, v0, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v1, 0x6011

    const/16 v4, 0x8

    .line 227
    invoke-static {v1, v0, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/4 v1, 0x7

    const/16 v5, 0x16

    .line 232
    invoke-static {v1, v0, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v1, 0x18

    .line 235
    invoke-static {v3, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const v1, 0xffff

    const/16 v5, 0x1a

    .line 238
    invoke-static {v1, v0, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v1, 0x1c

    .line 243
    invoke-static {v4, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v1, 0x1e

    .line 246
    invoke-static {v3, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/4 v1, 0x1

    const/16 v3, 0x20

    .line 249
    invoke-static {v1, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v1, 0x22

    .line 253
    invoke-static {v2, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v1, 0x24

    .line 256
    invoke-static {v2, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v0
.end method


# virtual methods
.method public getData()[B
    .registers 3

    .line 175
    iget-boolean v0, p0, Ljxl/biff/drawing/ObjRecord;->read:Z

    if-eqz v0, :cond_d

    .line 177
    invoke-virtual {p0}, Ljxl/biff/drawing/ObjRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    return-object v0

    .line 180
    :cond_d
    iget-object v0, p0, Ljxl/biff/drawing/ObjRecord;->type:Ljxl/biff/drawing/ObjRecord$ObjType;

    sget-object v1, Ljxl/biff/drawing/ObjRecord;->PICTURE:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-eq v0, v1, :cond_30

    sget-object v1, Ljxl/biff/drawing/ObjRecord;->CHART:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-ne v0, v1, :cond_18

    goto :goto_30

    .line 184
    :cond_18
    sget-object v1, Ljxl/biff/drawing/ObjRecord;->EXCELNOTE:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-ne v0, v1, :cond_21

    .line 186
    invoke-direct {p0}, Ljxl/biff/drawing/ObjRecord;->getNoteData()[B

    move-result-object v0

    return-object v0

    .line 188
    :cond_21
    sget-object v1, Ljxl/biff/drawing/ObjRecord;->COMBOBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-ne v0, v1, :cond_2a

    .line 190
    invoke-direct {p0}, Ljxl/biff/drawing/ObjRecord;->getComboBoxData()[B

    move-result-object v0

    return-object v0

    :cond_2a
    const/4 v0, 0x0

    .line 194
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    const/4 v0, 0x0

    return-object v0

    .line 182
    :cond_30
    :goto_30
    invoke-direct {p0}, Ljxl/biff/drawing/ObjRecord;->getPictureData()[B

    move-result-object v0

    return-object v0
.end method

.method public getObjectId()I
    .registers 2

    .line 411
    iget v0, p0, Ljxl/biff/drawing/ObjRecord;->objectId:I

    return v0
.end method

.method public getRecord()Ljxl/read/biff/Record;
    .registers 2

    .line 391
    invoke-super {p0}, Ljxl/biff/RecordData;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljxl/biff/drawing/ObjRecord$ObjType;
    .registers 2

    .line 401
    iget-object v0, p0, Ljxl/biff/drawing/ObjRecord;->type:Ljxl/biff/drawing/ObjRecord$ObjType;

    return-object v0
.end method
