.class public Lcom/codemao/midi/sun/ModelStandardIndexedDirector;
.super Ljava/lang/Object;
.source "ModelStandardIndexedDirector.java"

# interfaces
.implements Lcom/codemao/midi/sun/ModelDirector;


# instance fields
.field counters:[I

.field mat:[[I

.field noteOffUsed:Z

.field noteOnUsed:Z

.field performers:[Lcom/codemao/midi/sun/ModelPerformer;

.field player:Lcom/codemao/midi/sun/ModelDirectedPlayer;

.field trantables:[[B


# direct methods
.method public constructor <init>([Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelDirectedPlayer;)V
    .registers 5

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->noteOnUsed:Z

    .line 38
    iput-boolean v0, p0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->noteOffUsed:Z

    .line 47
    iput-object p1, p0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->performers:[Lcom/codemao/midi/sun/ModelPerformer;

    .line 48
    iput-object p2, p0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->player:Lcom/codemao/midi/sun/ModelDirectedPlayer;

    .line 49
    :goto_c
    array-length p2, p1

    if-ge v0, p2, :cond_20

    .line 50
    aget-object p2, p1, v0

    .line 51
    invoke-virtual {p2}, Lcom/codemao/midi/sun/ModelPerformer;->isReleaseTriggered()Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_1b

    .line 52
    iput-boolean v1, p0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->noteOffUsed:Z

    goto :goto_1d

    .line 54
    :cond_1b
    iput-boolean v1, p0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->noteOnUsed:Z

    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 57
    :cond_20
    invoke-direct {p0}, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->buildindex()V

    return-void
.end method

.method private buildindex()V
    .registers 17

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 78
    fill-array-data v1, :array_136

    const-class v2, B

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, v0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->trantables:[[B

    .line 79
    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->counters:[I

    .line 80
    iget-object v1, v0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->performers:[Lcom/codemao/midi/sun/ModelPerformer;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1c
    const/4 v5, 0x1

    if-ge v4, v2, :cond_5e

    aget-object v6, v1, v4

    .line 81
    invoke-virtual {v6}, Lcom/codemao/midi/sun/ModelPerformer;->getKeyFrom()I

    move-result v7

    .line 82
    invoke-virtual {v6}, Lcom/codemao/midi/sun/ModelPerformer;->getKeyTo()I

    move-result v8

    .line 83
    invoke-virtual {v6}, Lcom/codemao/midi/sun/ModelPerformer;->getVelFrom()I

    move-result v9

    .line 84
    invoke-virtual {v6}, Lcom/codemao/midi/sun/ModelPerformer;->getVelTo()I

    move-result v6

    if-le v7, v8, :cond_34

    goto :goto_5b

    :cond_34
    if-le v9, v6, :cond_37

    goto :goto_5b

    .line 87
    :cond_37
    invoke-direct {v0, v7}, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->restrict(I)I

    move-result v7

    .line 88
    invoke-direct {v0, v8}, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->restrict(I)I

    move-result v8

    .line 89
    invoke-direct {v0, v9}, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->restrict(I)I

    move-result v9

    .line 90
    invoke-direct {v0, v6}, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->restrict(I)I

    move-result v6

    .line 91
    iget-object v10, v0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->trantables:[[B

    aget-object v11, v10, v3

    aput-byte v5, v11, v7

    .line 92
    aget-object v7, v10, v3

    add-int/2addr v8, v5

    aput-byte v5, v7, v8

    .line 93
    aget-object v7, v10, v5

    aput-byte v5, v7, v9

    .line 94
    aget-object v7, v10, v5

    add-int/2addr v6, v5

    aput-byte v5, v7, v6

    :goto_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_5e
    const/4 v1, 0x0

    .line 96
    :goto_5f
    iget-object v2, v0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->trantables:[[B

    array-length v4, v2

    const/4 v6, -0x1

    if-ge v1, v4, :cond_94

    .line 97
    aget-object v2, v2, v1

    .line 98
    array-length v4, v2

    add-int/lit8 v7, v4, -0x1

    :goto_6a
    if-ltz v7, :cond_78

    .line 100
    aget-byte v8, v2, v7

    if-ne v8, v5, :cond_73

    .line 101
    aput-byte v6, v2, v7

    goto :goto_78

    .line 104
    :cond_73
    aput-byte v6, v2, v7

    add-int/lit8 v7, v7, -0x1

    goto :goto_6a

    :cond_78
    :goto_78
    const/4 v7, 0x0

    const/4 v8, -0x1

    :goto_7a
    if-ge v7, v4, :cond_8d

    .line 108
    aget-byte v9, v2, v7

    if-eqz v9, :cond_87

    add-int/lit8 v8, v8, 0x1

    .line 110
    aget-byte v9, v2, v7

    if-ne v9, v6, :cond_87

    goto :goto_8d

    :cond_87
    int-to-byte v9, v8

    .line 113
    aput-byte v9, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_7a

    .line 115
    :cond_8d
    :goto_8d
    iget-object v2, v0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->counters:[I

    aput v8, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 117
    :cond_94
    iget-object v1, v0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->counters:[I

    aget v2, v1, v3

    aget v1, v1, v5

    mul-int v2, v2, v1

    new-array v1, v2, [[I

    iput-object v1, v0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->mat:[[I

    .line 119
    iget-object v1, v0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->performers:[Lcom/codemao/midi/sun/ModelPerformer;

    array-length v2, v1

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_a5
    if-ge v4, v2, :cond_134

    aget-object v8, v1, v4

    .line 120
    invoke-virtual {v8}, Lcom/codemao/midi/sun/ModelPerformer;->getKeyFrom()I

    move-result v9

    .line 121
    invoke-virtual {v8}, Lcom/codemao/midi/sun/ModelPerformer;->getKeyTo()I

    move-result v10

    .line 122
    invoke-virtual {v8}, Lcom/codemao/midi/sun/ModelPerformer;->getVelFrom()I

    move-result v11

    .line 123
    invoke-virtual {v8}, Lcom/codemao/midi/sun/ModelPerformer;->getVelTo()I

    move-result v8

    if-le v9, v10, :cond_bd

    goto/16 :goto_12e

    :cond_bd
    if-le v11, v8, :cond_c1

    goto/16 :goto_12e

    .line 126
    :cond_c1
    invoke-direct {v0, v9}, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->restrict(I)I

    move-result v9

    .line 127
    invoke-direct {v0, v10}, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->restrict(I)I

    move-result v10

    .line 128
    invoke-direct {v0, v11}, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->restrict(I)I

    move-result v11

    .line 129
    invoke-direct {v0, v8}, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->restrict(I)I

    move-result v8

    .line 130
    iget-object v12, v0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->trantables:[[B

    aget-object v13, v12, v3

    aget-byte v9, v13, v9

    .line 131
    aget-object v13, v12, v3

    add-int/2addr v10, v5

    aget-byte v10, v13, v10

    .line 132
    aget-object v13, v12, v5

    aget-byte v11, v13, v11

    .line 133
    aget-object v12, v12, v5

    add-int/2addr v8, v5

    aget-byte v8, v12, v8

    if-ne v10, v6, :cond_eb

    .line 135
    iget-object v10, v0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->counters:[I

    aget v10, v10, v3

    :cond_eb
    if-ne v8, v6, :cond_f1

    .line 137
    iget-object v8, v0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->counters:[I

    aget v8, v8, v5

    :cond_f1
    :goto_f1
    if-ge v11, v8, :cond_12c

    .line 139
    iget-object v12, v0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->counters:[I

    aget v12, v12, v3

    mul-int v12, v12, v11

    add-int/2addr v12, v9

    move v13, v9

    :goto_fb
    if-ge v13, v10, :cond_127

    .line 141
    iget-object v14, v0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->mat:[[I

    aget-object v15, v14, v12

    if-nez v15, :cond_10a

    new-array v15, v5, [I

    aput v7, v15, v3

    .line 143
    aput-object v15, v14, v12

    goto :goto_120

    .line 145
    :cond_10a
    array-length v14, v15

    add-int/2addr v14, v5

    new-array v3, v14, [I

    sub-int/2addr v14, v5

    .line 146
    aput v7, v3, v14

    const/4 v14, 0x0

    .line 147
    :goto_112
    array-length v5, v15

    if-ge v14, v5, :cond_11c

    .line 148
    aget v5, v15, v14

    aput v5, v3, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_112

    .line 149
    :cond_11c
    iget-object v5, v0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->mat:[[I

    aput-object v3, v5, v12

    :goto_120
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto :goto_fb

    :cond_127
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto :goto_f1

    :cond_12c
    add-int/lit8 v7, v7, 0x1

    :goto_12e
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto/16 :goto_a5

    :cond_134
    return-void

    nop

    :array_136
    .array-data 4
        0x2
        0x81
    .end array-data
.end method

.method private lookupIndex(II)[I
    .registers 6

    if-ltz p1, :cond_27

    const/16 v0, 0x80

    if-ge p1, v0, :cond_27

    if-ltz p2, :cond_27

    if-ge p2, v0, :cond_27

    .line 62
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->trantables:[[B

    const/4 v1, 0x0

    aget-object v2, v0, v1

    aget-byte p1, v2, p1

    const/4 v2, 0x1

    .line 63
    aget-object v0, v0, v2

    aget-byte p2, v0, p2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_27

    if-eq p2, v0, :cond_27

    .line 65
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->mat:[[I

    iget-object v2, p0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->counters:[I

    aget v1, v2, v1

    mul-int p2, p2, v1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method private restrict(I)I
    .registers 3

    if-gez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    const/16 v0, 0x7f

    if-le p1, v0, :cond_9

    return v0

    :cond_9
    return p1
.end method


# virtual methods
.method public noteOff(II)V
    .registers 7

    .line 162
    iget-boolean v0, p0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->noteOffUsed:Z

    if-nez v0, :cond_5

    return-void

    .line 164
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->lookupIndex(II)[I

    move-result-object p1

    if-nez p1, :cond_c

    return-void

    .line 166
    :cond_c
    array-length p2, p1

    const/4 v0, 0x0

    :goto_e
    if-ge v0, p2, :cond_25

    aget v1, p1, v0

    .line 167
    iget-object v2, p0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->performers:[Lcom/codemao/midi/sun/ModelPerformer;

    aget-object v2, v2, v1

    .line 168
    invoke-virtual {v2}, Lcom/codemao/midi/sun/ModelPerformer;->isReleaseTriggered()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 169
    iget-object v2, p0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->player:Lcom/codemao/midi/sun/ModelDirectedPlayer;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/codemao/midi/sun/ModelDirectedPlayer;->play(I[Lcom/codemao/midi/sun/ModelConnectionBlock;)V

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_25
    return-void
.end method

.method public noteOn(II)V
    .registers 7

    .line 175
    iget-boolean v0, p0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->noteOnUsed:Z

    if-nez v0, :cond_5

    return-void

    .line 177
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->lookupIndex(II)[I

    move-result-object p1

    if-nez p1, :cond_c

    return-void

    .line 179
    :cond_c
    array-length p2, p1

    const/4 v0, 0x0

    :goto_e
    if-ge v0, p2, :cond_25

    aget v1, p1, v0

    .line 180
    iget-object v2, p0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->performers:[Lcom/codemao/midi/sun/ModelPerformer;

    aget-object v2, v2, v1

    .line 181
    invoke-virtual {v2}, Lcom/codemao/midi/sun/ModelPerformer;->isReleaseTriggered()Z

    move-result v2

    if-nez v2, :cond_22

    .line 182
    iget-object v2, p0, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;->player:Lcom/codemao/midi/sun/ModelDirectedPlayer;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/codemao/midi/sun/ModelDirectedPlayer;->play(I[Lcom/codemao/midi/sun/ModelConnectionBlock;)V

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_25
    return-void
.end method
