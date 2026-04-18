.class Ljxl/biff/drawing/EscherContainer;
.super Ljxl/biff/drawing/EscherRecord;
.source "EscherContainer.java"


# instance fields
.field private children:Ljava/util/ArrayList;

.field private initialized:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-class v0, Ljxl/biff/drawing/EscherContainer;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/EscherRecordData;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Ljxl/biff/drawing/EscherRecord;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Ljxl/biff/drawing/EscherContainer;->initialized:Z

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/biff/drawing/EscherContainer;->children:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>(Ljxl/biff/drawing/EscherRecordType;)V
    .registers 2

    .line 68
    invoke-direct {p0, p1}, Ljxl/biff/drawing/EscherRecord;-><init>(Ljxl/biff/drawing/EscherRecordType;)V

    const/4 p1, 0x1

    .line 69
    invoke-virtual {p0, p1}, Ljxl/biff/drawing/EscherRecord;->setContainer(Z)V

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/biff/drawing/EscherContainer;->children:Ljava/util/ArrayList;

    return-void
.end method

.method private initialize()V
    .registers 6

    .line 115
    invoke-virtual {p0}, Ljxl/biff/drawing/EscherRecord;->getPos()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    .line 116
    invoke-virtual {p0}, Ljxl/biff/drawing/EscherRecord;->getPos()I

    move-result v1

    invoke-virtual {p0}, Ljxl/biff/drawing/EscherRecord;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Ljxl/biff/drawing/EscherRecord;->getStreamLength()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_17
    if-ge v0, v1, :cond_bc

    .line 122
    new-instance v2, Ljxl/biff/drawing/EscherRecordData;

    invoke-virtual {p0}, Ljxl/biff/drawing/EscherRecord;->getEscherStream()Ljxl/biff/drawing/EscherStream;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljxl/biff/drawing/EscherRecordData;-><init>(Ljxl/biff/drawing/EscherStream;I)V

    .line 124
    invoke-virtual {v2}, Ljxl/biff/drawing/EscherRecordData;->getType()Ljxl/biff/drawing/EscherRecordType;

    move-result-object v3

    .line 125
    sget-object v4, Ljxl/biff/drawing/EscherRecordType;->DGG:Ljxl/biff/drawing/EscherRecordType;

    if-ne v3, v4, :cond_31

    .line 127
    new-instance v3, Ljxl/biff/drawing/Dgg;

    invoke-direct {v3, v2}, Ljxl/biff/drawing/Dgg;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    goto/16 :goto_b0

    .line 129
    :cond_31
    sget-object v4, Ljxl/biff/drawing/EscherRecordType;->DG:Ljxl/biff/drawing/EscherRecordType;

    if-ne v3, v4, :cond_3c

    .line 131
    new-instance v3, Ljxl/biff/drawing/Dg;

    invoke-direct {v3, v2}, Ljxl/biff/drawing/Dg;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    goto/16 :goto_b0

    .line 133
    :cond_3c
    sget-object v4, Ljxl/biff/drawing/EscherRecordType;->BSTORE_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne v3, v4, :cond_47

    .line 135
    new-instance v3, Ljxl/biff/drawing/BStoreContainer;

    invoke-direct {v3, v2}, Ljxl/biff/drawing/BStoreContainer;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    goto/16 :goto_b0

    .line 137
    :cond_47
    sget-object v4, Ljxl/biff/drawing/EscherRecordType;->SPGR_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne v3, v4, :cond_51

    .line 139
    new-instance v3, Ljxl/biff/drawing/SpgrContainer;

    invoke-direct {v3, v2}, Ljxl/biff/drawing/SpgrContainer;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    goto :goto_b0

    .line 141
    :cond_51
    sget-object v4, Ljxl/biff/drawing/EscherRecordType;->SP_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne v3, v4, :cond_5b

    .line 143
    new-instance v3, Ljxl/biff/drawing/SpContainer;

    invoke-direct {v3, v2}, Ljxl/biff/drawing/SpContainer;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    goto :goto_b0

    .line 145
    :cond_5b
    sget-object v4, Ljxl/biff/drawing/EscherRecordType;->SPGR:Ljxl/biff/drawing/EscherRecordType;

    if-ne v3, v4, :cond_65

    .line 147
    new-instance v3, Ljxl/biff/drawing/Spgr;

    invoke-direct {v3, v2}, Ljxl/biff/drawing/Spgr;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    goto :goto_b0

    .line 149
    :cond_65
    sget-object v4, Ljxl/biff/drawing/EscherRecordType;->SP:Ljxl/biff/drawing/EscherRecordType;

    if-ne v3, v4, :cond_6f

    .line 151
    new-instance v3, Ljxl/biff/drawing/Sp;

    invoke-direct {v3, v2}, Ljxl/biff/drawing/Sp;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    goto :goto_b0

    .line 153
    :cond_6f
    sget-object v4, Ljxl/biff/drawing/EscherRecordType;->CLIENT_ANCHOR:Ljxl/biff/drawing/EscherRecordType;

    if-ne v3, v4, :cond_79

    .line 155
    new-instance v3, Ljxl/biff/drawing/ClientAnchor;

    invoke-direct {v3, v2}, Ljxl/biff/drawing/ClientAnchor;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    goto :goto_b0

    .line 157
    :cond_79
    sget-object v4, Ljxl/biff/drawing/EscherRecordType;->CLIENT_DATA:Ljxl/biff/drawing/EscherRecordType;

    if-ne v3, v4, :cond_83

    .line 159
    new-instance v3, Ljxl/biff/drawing/ClientData;

    invoke-direct {v3, v2}, Ljxl/biff/drawing/ClientData;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    goto :goto_b0

    .line 161
    :cond_83
    sget-object v4, Ljxl/biff/drawing/EscherRecordType;->BSE:Ljxl/biff/drawing/EscherRecordType;

    if-ne v3, v4, :cond_8d

    .line 163
    new-instance v3, Ljxl/biff/drawing/BlipStoreEntry;

    invoke-direct {v3, v2}, Ljxl/biff/drawing/BlipStoreEntry;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    goto :goto_b0

    .line 165
    :cond_8d
    sget-object v4, Ljxl/biff/drawing/EscherRecordType;->OPT:Ljxl/biff/drawing/EscherRecordType;

    if-ne v3, v4, :cond_97

    .line 167
    new-instance v3, Ljxl/biff/drawing/Opt;

    invoke-direct {v3, v2}, Ljxl/biff/drawing/Opt;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    goto :goto_b0

    .line 169
    :cond_97
    sget-object v4, Ljxl/biff/drawing/EscherRecordType;->SPLIT_MENU_COLORS:Ljxl/biff/drawing/EscherRecordType;

    if-ne v3, v4, :cond_a1

    .line 171
    new-instance v3, Ljxl/biff/drawing/SplitMenuColors;

    invoke-direct {v3, v2}, Ljxl/biff/drawing/SplitMenuColors;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    goto :goto_b0

    .line 173
    :cond_a1
    sget-object v4, Ljxl/biff/drawing/EscherRecordType;->CLIENT_TEXT_BOX:Ljxl/biff/drawing/EscherRecordType;

    if-ne v3, v4, :cond_ab

    .line 175
    new-instance v3, Ljxl/biff/drawing/ClientTextBox;

    invoke-direct {v3, v2}, Ljxl/biff/drawing/ClientTextBox;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    goto :goto_b0

    .line 179
    :cond_ab
    new-instance v3, Ljxl/biff/drawing/EscherAtom;

    invoke-direct {v3, v2}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    .line 182
    :goto_b0
    iget-object v2, p0, Ljxl/biff/drawing/EscherContainer;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-virtual {v3}, Ljxl/biff/drawing/EscherRecord;->getLength()I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_17

    :cond_bc
    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Ljxl/biff/drawing/EscherContainer;->initialized:Z

    return-void
.end method


# virtual methods
.method public add(Ljxl/biff/drawing/EscherRecord;)V
    .registers 3

    .line 97
    iget-object v0, p0, Ljxl/biff/drawing/EscherContainer;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getChildren()[Ljxl/biff/drawing/EscherRecord;
    .registers 3

    .line 80
    iget-boolean v0, p0, Ljxl/biff/drawing/EscherContainer;->initialized:Z

    if-nez v0, :cond_7

    .line 82
    invoke-direct {p0}, Ljxl/biff/drawing/EscherContainer;->initialize()V

    .line 85
    :cond_7
    iget-object v0, p0, Ljxl/biff/drawing/EscherContainer;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljxl/biff/drawing/EscherRecord;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 87
    check-cast v0, [Ljxl/biff/drawing/EscherRecord;

    return-object v0
.end method

.method getData()[B
    .registers 7

    .line 196
    iget-boolean v0, p0, Ljxl/biff/drawing/EscherContainer;->initialized:Z

    if-nez v0, :cond_7

    .line 198
    invoke-direct {p0}, Ljxl/biff/drawing/EscherContainer;->initialize()V

    :cond_7
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 202
    iget-object v2, p0, Ljxl/biff/drawing/EscherContainer;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 204
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/biff/drawing/EscherRecord;

    .line 205
    invoke-virtual {v3}, Ljxl/biff/drawing/EscherRecord;->getData()[B

    move-result-object v3

    if-eqz v3, :cond_10

    .line 209
    array-length v4, v1

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 210
    array-length v5, v1

    invoke-static {v1, v0, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    array-length v1, v1

    array-length v5, v3

    invoke-static {v3, v0, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v4

    goto :goto_10

    .line 216
    :cond_32
    invoke-virtual {p0, v1}, Ljxl/biff/drawing/EscherRecord;->setHeaderData([B)[B

    move-result-object v0

    return-object v0
.end method
