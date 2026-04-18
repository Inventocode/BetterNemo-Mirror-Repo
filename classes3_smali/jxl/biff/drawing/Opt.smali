.class Ljxl/biff/drawing/Opt;
.super Ljxl/biff/drawing/EscherAtom;
.source "Opt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/drawing/Opt$Property;
    }
.end annotation


# instance fields
.field private data:[B

.field private numProperties:I

.field private properties:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-class v0, Ljxl/biff/drawing/Opt;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 153
    sget-object v0, Ljxl/biff/drawing/EscherRecordType;->OPT:Ljxl/biff/drawing/EscherRecordType;

    invoke-direct {p0, v0}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordType;)V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/biff/drawing/Opt;->properties:Ljava/util/ArrayList;

    const/4 v0, 0x3

    .line 155
    invoke-virtual {p0, v0}, Ljxl/biff/drawing/EscherRecord;->setVersion(I)V

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/EscherRecordData;)V
    .registers 2

    .line 108
    invoke-direct {p0, p1}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    .line 109
    invoke-virtual {p0}, Ljxl/biff/drawing/EscherRecord;->getInstance()I

    move-result p1

    iput p1, p0, Ljxl/biff/drawing/Opt;->numProperties:I

    .line 110
    invoke-direct {p0}, Ljxl/biff/drawing/Opt;->readProperties()V

    return-void
.end method

.method private readProperties()V
    .registers 12

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/biff/drawing/Opt;->properties:Ljava/util/ArrayList;

    .line 120
    invoke-virtual {p0}, Ljxl/biff/drawing/EscherRecord;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 122
    :goto_e
    iget v4, p0, Ljxl/biff/drawing/Opt;->numProperties:I

    if-ge v2, v4, :cond_51

    .line 124
    aget-byte v4, v0, v3

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v0, v5

    invoke-static {v4, v5}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v4

    and-int/lit16 v5, v4, 0x3fff

    add-int/lit8 v6, v3, 0x2

    .line 126
    aget-byte v6, v0, v6

    add-int/lit8 v7, v3, 0x3

    aget-byte v7, v0, v7

    add-int/lit8 v8, v3, 0x4

    aget-byte v8, v0, v8

    add-int/lit8 v9, v3, 0x5

    aget-byte v9, v0, v9

    invoke-static {v6, v7, v8, v9}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v6

    .line 128
    new-instance v7, Ljxl/biff/drawing/Opt$Property;

    and-int/lit16 v8, v4, 0x4000

    const/4 v9, 0x1

    if-eqz v8, :cond_3b

    const/4 v8, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v8, 0x0

    :goto_3c
    const v10, 0x8000

    and-int/2addr v4, v10

    if-eqz v4, :cond_43

    goto :goto_44

    :cond_43
    const/4 v9, 0x0

    :goto_44
    invoke-direct {v7, v5, v8, v9, v6}, Ljxl/biff/drawing/Opt$Property;-><init>(IZZI)V

    add-int/lit8 v3, v3, 0x6

    .line 133
    iget-object v4, p0, Ljxl/biff/drawing/Opt;->properties:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 136
    :cond_51
    iget-object v1, p0, Ljxl/biff/drawing/Opt;->properties:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_57
    :goto_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    .line 138
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/biff/drawing/Opt$Property;

    .line 139
    iget-boolean v4, v2, Ljxl/biff/drawing/Opt$Property;->complex:Z

    if-eqz v4, :cond_57

    .line 141
    iget v4, v2, Ljxl/biff/drawing/Opt$Property;->value:I

    div-int/lit8 v4, v4, 0x2

    invoke-static {v0, v4, v3}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljxl/biff/drawing/Opt$Property;->stringValue:Ljava/lang/String;

    .line 143
    iget v2, v2, Ljxl/biff/drawing/Opt$Property;->value:I

    add-int/2addr v3, v2

    goto :goto_57

    :cond_75
    return-void
.end method


# virtual methods
.method addProperty(IZZI)V
    .registers 6

    .line 220
    new-instance v0, Ljxl/biff/drawing/Opt$Property;

    invoke-direct {v0, p1, p2, p3, p4}, Ljxl/biff/drawing/Opt$Property;-><init>(IZZI)V

    .line 221
    iget-object p1, p0, Ljxl/biff/drawing/Opt;->properties:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addProperty(IZZILjava/lang/String;)V
    .registers 13

    .line 235
    new-instance v6, Ljxl/biff/drawing/Opt$Property;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Ljxl/biff/drawing/Opt$Property;-><init>(IZZILjava/lang/String;)V

    .line 236
    iget-object p1, p0, Ljxl/biff/drawing/Opt;->properties:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method getData()[B
    .registers 7

    .line 165
    iget-object v0, p0, Ljxl/biff/drawing/Opt;->properties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Ljxl/biff/drawing/Opt;->numProperties:I

    .line 166
    invoke-virtual {p0, v0}, Ljxl/biff/drawing/EscherRecord;->setInstance(I)V

    .line 168
    iget v0, p0, Ljxl/biff/drawing/Opt;->numProperties:I

    mul-int/lit8 v0, v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/biff/drawing/Opt;->data:[B

    .line 172
    iget-object v0, p0, Ljxl/biff/drawing/Opt;->properties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 174
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/biff/drawing/Opt$Property;

    .line 175
    iget v4, v3, Ljxl/biff/drawing/Opt$Property;->id:I

    and-int/lit16 v4, v4, 0x3fff

    .line 177
    iget-boolean v5, v3, Ljxl/biff/drawing/Opt$Property;->blipId:Z

    if-eqz v5, :cond_31

    or-int/lit16 v4, v4, 0x4000

    .line 182
    :cond_31
    iget-boolean v5, v3, Ljxl/biff/drawing/Opt$Property;->complex:Z

    if-eqz v5, :cond_39

    const v5, 0x8000

    or-int/2addr v4, v5

    .line 187
    :cond_39
    iget-object v5, p0, Ljxl/biff/drawing/Opt;->data:[B

    invoke-static {v4, v5, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 188
    iget v3, v3, Ljxl/biff/drawing/Opt$Property;->value:I

    iget-object v4, p0, Ljxl/biff/drawing/Opt;->data:[B

    add-int/lit8 v5, v2, 0x2

    invoke-static {v3, v4, v5}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    add-int/lit8 v2, v2, 0x6

    goto :goto_1b

    .line 193
    :cond_4a
    iget-object v0, p0, Ljxl/biff/drawing/Opt;->properties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_50
    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    .line 195
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/biff/drawing/Opt$Property;

    .line 197
    iget-boolean v3, v2, Ljxl/biff/drawing/Opt$Property;->complex:Z

    if-eqz v3, :cond_50

    iget-object v3, v2, Ljxl/biff/drawing/Opt$Property;->stringValue:Ljava/lang/String;

    if-eqz v3, :cond_50

    .line 199
    iget-object v4, p0, Ljxl/biff/drawing/Opt;->data:[B

    array-length v4, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v4, v3

    new-array v3, v4, [B

    .line 201
    iget-object v4, p0, Ljxl/biff/drawing/Opt;->data:[B

    array-length v5, v4

    invoke-static {v4, v1, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iget-object v2, v2, Ljxl/biff/drawing/Opt$Property;->stringValue:Ljava/lang/String;

    iget-object v4, p0, Ljxl/biff/drawing/Opt;->data:[B

    array-length v4, v4

    invoke-static {v2, v3, v4}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 203
    iput-object v3, p0, Ljxl/biff/drawing/Opt;->data:[B

    goto :goto_50

    .line 207
    :cond_81
    iget-object v0, p0, Ljxl/biff/drawing/Opt;->data:[B

    invoke-virtual {p0, v0}, Ljxl/biff/drawing/EscherRecord;->setHeaderData([B)[B

    move-result-object v0

    return-object v0
.end method

.method getProperty(I)Ljxl/biff/drawing/Opt$Property;
    .registers 7

    .line 249
    iget-object v0, p0, Ljxl/biff/drawing/Opt;->properties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    if-nez v2, :cond_1d

    .line 251
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/biff/drawing/Opt$Property;

    .line 252
    iget v4, v3, Ljxl/biff/drawing/Opt$Property;->id:I

    if-ne v4, p1, :cond_9

    const/4 v2, 0x1

    goto :goto_9

    :cond_1d
    if-eqz v2, :cond_20

    move-object v1, v3

    :cond_20
    return-object v1
.end method
