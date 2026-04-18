.class public Ljxl/biff/drawing/DrawingData;
.super Ljava/lang/Object;
.source "DrawingData.java"

# interfaces
.implements Ljxl/biff/drawing/EscherStream;


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private drawingData:[B

.field private initialized:Z

.field private numDrawings:I

.field private spContainers:[Ljxl/biff/drawing/EscherRecord;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-class v0, Ljxl/biff/drawing/DrawingData;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/DrawingData;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Ljxl/biff/drawing/DrawingData;->numDrawings:I

    const/4 v1, 0x0

    .line 64
    iput-object v1, p0, Ljxl/biff/drawing/DrawingData;->drawingData:[B

    .line 65
    iput-boolean v0, p0, Ljxl/biff/drawing/DrawingData;->initialized:Z

    return-void
.end method

.method private getSpContainers(Ljxl/biff/drawing/EscherContainer;Ljava/util/ArrayList;)V
    .registers 6

    .line 132
    invoke-virtual {p1}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object p1

    const/4 v0, 0x0

    .line 133
    :goto_5
    array-length v1, p1

    if-ge v0, v1, :cond_34

    .line 135
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljxl/biff/drawing/EscherRecord;->getType()Ljxl/biff/drawing/EscherRecordType;

    move-result-object v1

    sget-object v2, Ljxl/biff/drawing/EscherRecordType;->SP_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne v1, v2, :cond_18

    .line 137
    aget-object v1, p1, v0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 139
    :cond_18
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljxl/biff/drawing/EscherRecord;->getType()Ljxl/biff/drawing/EscherRecordType;

    move-result-object v1

    sget-object v2, Ljxl/biff/drawing/EscherRecordType;->SPGR_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne v1, v2, :cond_2a

    .line 141
    aget-object v1, p1, v0

    check-cast v1, Ljxl/biff/drawing/EscherContainer;

    invoke-direct {p0, v1, p2}, Ljxl/biff/drawing/DrawingData;->getSpContainers(Ljxl/biff/drawing/EscherContainer;Ljava/util/ArrayList;)V

    goto :goto_31

    .line 145
    :cond_2a
    sget-object v1, Ljxl/biff/drawing/DrawingData;->logger:Ljxl/common/Logger;

    const-string v2, "Spgr Containers contains a record other than Sp/Spgr containers"

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_34
    return-void
.end method

.method private initialize()V
    .registers 8

    .line 73
    new-instance v0, Ljxl/biff/drawing/EscherRecordData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljxl/biff/drawing/EscherRecordData;-><init>(Ljxl/biff/drawing/EscherStream;I)V

    .line 74
    invoke-virtual {v0}, Ljxl/biff/drawing/EscherRecordData;->isContainer()Z

    move-result v2

    invoke-static {v2}, Ljxl/common/Assert;->verify(Z)V

    .line 76
    new-instance v2, Ljxl/biff/drawing/EscherContainer;

    invoke-direct {v2, v0}, Ljxl/biff/drawing/EscherContainer;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    .line 77
    invoke-virtual {v2}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    .line 79
    invoke-virtual {v2}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 84
    :goto_1b
    array-length v4, v0

    if-ge v3, v4, :cond_30

    if-nez v2, :cond_30

    .line 86
    aget-object v4, v0, v3

    .line 87
    invoke-virtual {v4}, Ljxl/biff/drawing/EscherRecord;->getType()Ljxl/biff/drawing/EscherRecordType;

    move-result-object v5

    sget-object v6, Ljxl/biff/drawing/EscherRecordType;->SPGR_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne v5, v6, :cond_2d

    .line 89
    check-cast v4, Ljxl/biff/drawing/EscherContainer;

    move-object v2, v4

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_30
    const/4 v0, 0x1

    if-eqz v2, :cond_35

    const/4 v3, 0x1

    goto :goto_36

    :cond_35
    const/4 v3, 0x0

    .line 92
    :goto_36
    invoke-static {v3}, Ljxl/common/Assert;->verify(Z)V

    .line 94
    invoke-virtual {v2}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v3

    const/4 v4, 0x0

    .line 98
    :goto_3e
    array-length v5, v3

    if-ge v1, v5, :cond_51

    if-nez v4, :cond_51

    .line 100
    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljxl/biff/drawing/EscherRecord;->getType()Ljxl/biff/drawing/EscherRecordType;

    move-result-object v5

    sget-object v6, Ljxl/biff/drawing/EscherRecordType;->SPGR_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne v5, v6, :cond_4e

    const/4 v4, 0x1

    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_51
    if-nez v4, :cond_56

    .line 110
    iput-object v3, p0, Ljxl/biff/drawing/DrawingData;->spContainers:[Ljxl/biff/drawing/EscherRecord;

    goto :goto_6e

    .line 115
    :cond_56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    invoke-direct {p0, v2, v1}, Ljxl/biff/drawing/DrawingData;->getSpContainers(Ljxl/biff/drawing/EscherContainer;Ljava/util/ArrayList;)V

    .line 117
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljxl/biff/drawing/EscherRecord;

    iput-object v2, p0, Ljxl/biff/drawing/DrawingData;->spContainers:[Ljxl/biff/drawing/EscherRecord;

    .line 118
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljxl/biff/drawing/EscherRecord;

    iput-object v1, p0, Ljxl/biff/drawing/DrawingData;->spContainers:[Ljxl/biff/drawing/EscherRecord;

    .line 121
    :goto_6e
    iput-boolean v0, p0, Ljxl/biff/drawing/DrawingData;->initialized:Z

    return-void
.end method


# virtual methods
.method public addData([B)V
    .registers 2

    .line 158
    invoke-virtual {p0, p1}, Ljxl/biff/drawing/DrawingData;->addRawData([B)V

    .line 159
    iget p1, p0, Ljxl/biff/drawing/DrawingData;->numDrawings:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljxl/biff/drawing/DrawingData;->numDrawings:I

    return-void
.end method

.method public addRawData([B)V
    .registers 6

    .line 171
    iget-object v0, p0, Ljxl/biff/drawing/DrawingData;->drawingData:[B

    if-nez v0, :cond_7

    .line 173
    iput-object p1, p0, Ljxl/biff/drawing/DrawingData;->drawingData:[B

    return-void

    .line 178
    :cond_7
    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 179
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iget-object v0, p0, Ljxl/biff/drawing/DrawingData;->drawingData:[B

    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    iput-object v1, p0, Ljxl/biff/drawing/DrawingData;->drawingData:[B

    .line 184
    iput-boolean v3, p0, Ljxl/biff/drawing/DrawingData;->initialized:Z

    return-void
.end method

.method public getData()[B
    .registers 2

    .line 230
    iget-object v0, p0, Ljxl/biff/drawing/DrawingData;->drawingData:[B

    return-object v0
.end method

.method final getNumDrawings()I
    .registers 2

    .line 194
    iget v0, p0, Ljxl/biff/drawing/DrawingData;->numDrawings:I

    return v0
.end method

.method getSpContainer(I)Ljxl/biff/drawing/EscherContainer;
    .registers 5

    .line 205
    iget-boolean v0, p0, Ljxl/biff/drawing/DrawingData;->initialized:Z

    if-nez v0, :cond_7

    .line 207
    invoke-direct {p0}, Ljxl/biff/drawing/DrawingData;->initialize()V

    :cond_7
    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 210
    iget-object v1, p0, Ljxl/biff/drawing/DrawingData;->spContainers:[Ljxl/biff/drawing/EscherRecord;

    array-length v2, v1

    if-ge p1, v2, :cond_1a

    .line 215
    aget-object p1, v1, p1

    check-cast p1, Ljxl/biff/drawing/EscherContainer;

    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 218
    :goto_16
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    return-object p1

    .line 212
    :cond_1a
    new-instance p1, Ljxl/biff/drawing/DrawingDataException;

    invoke-direct {p1}, Ljxl/biff/drawing/DrawingDataException;-><init>()V

    throw p1
.end method
