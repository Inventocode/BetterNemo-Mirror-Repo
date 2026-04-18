.class public final Lokio/Options$Companion;
.super Ljava/lang/Object;
.source "Options.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Options.kt\nokio/Options$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 -Util.kt\nokio/-Util\n*L\n1#1,234:1\n8226#2:235\n8543#2,3:236\n10272#2,3:241\n37#3,2:239\n63#4:244\n63#4:245\n*E\n*S KotlinDebug\n*F\n+ 1 Options.kt\nokio/Options$Companion\n*L\n44#1:235\n44#1,3:236\n45#1,3:241\n44#1,2:239\n152#1:244\n207#1:245\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Lokio/Options$Companion;-><init>()V

    return-void
.end method

.method private final buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lokio/Buffer;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lokio/ByteString;",
            ">;II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v0, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    if-ge v0, v13, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    const-string v4, "Failed requirement."

    if-eqz v3, :cond_1ce

    move v3, v0

    :goto_18
    if-ge v3, v13, :cond_38

    .line 119
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v5

    if-lt v5, v11, :cond_28

    const/4 v5, 0x1

    goto :goto_29

    :cond_28
    const/4 v5, 0x0

    :goto_29
    if-eqz v5, :cond_2e

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_38
    invoke-interface/range {p5 .. p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    add-int/lit8 v4, v13, -0x1

    .line 124
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    .line 128
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v5

    const/4 v15, -0x1

    if-ne v11, v5, :cond_63

    .line 129
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    .line 131
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    move v6, v0

    move v0, v3

    move-object v3, v5

    goto :goto_65

    :cond_63
    move v6, v0

    const/4 v0, -0x1

    .line 134
    :goto_65
    invoke-virtual {v3, v11}, Lokio/ByteString;->getByte(I)B

    move-result v5

    invoke-virtual {v4, v11}, Lokio/ByteString;->getByte(I)B

    move-result v7

    const/4 v8, 0x2

    if-eq v5, v7, :cond_13b

    add-int/lit8 v1, v6, 0x1

    const/4 v2, 0x1

    :goto_73
    if-ge v1, v13, :cond_92

    add-int/lit8 v3, v1, -0x1

    .line 138
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3, v11}, Lokio/ByteString;->getByte(I)B

    move-result v3

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v4, v11}, Lokio/ByteString;->getByte(I)B

    move-result v4

    if-eq v3, v4, :cond_8f

    add-int/lit8 v2, v2, 0x1

    :cond_8f
    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    .line 144
    :cond_92
    invoke-direct {v9, v10}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    move-result-wide v3

    add-long v3, p1, v3

    int-to-long v7, v8

    add-long/2addr v3, v7

    mul-int/lit8 v1, v2, 0x2

    int-to-long v7, v1

    add-long v16, v3, v7

    .line 146
    invoke-virtual {v10, v2}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 147
    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move v0, v6

    :goto_a6
    if-ge v0, v13, :cond_ca

    .line 150
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/ByteString;

    invoke-virtual {v1, v11}, Lokio/ByteString;->getByte(I)B

    move-result v1

    if-eq v0, v6, :cond_c2

    add-int/lit8 v2, v0, -0x1

    .line 151
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    invoke-virtual {v2, v11}, Lokio/ByteString;->getByte(I)B

    move-result v2

    if-eq v1, v2, :cond_c7

    :cond_c2
    and-int/lit16 v1, v1, 0xff

    .line 152
    invoke-virtual {v10, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    :cond_c7
    add-int/lit8 v0, v0, 0x1

    goto :goto_a6

    .line 156
    :cond_ca
    new-instance v8, Lokio/Buffer;

    invoke-direct {v8}, Lokio/Buffer;-><init>()V

    :goto_cf
    if-ge v6, v13, :cond_135

    .line 159
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/ByteString;

    invoke-virtual {v0, v11}, Lokio/ByteString;->getByte(I)B

    move-result v0

    add-int/lit8 v1, v6, 0x1

    move v2, v1

    :goto_de
    if-ge v2, v13, :cond_f1

    .line 162
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3, v11}, Lokio/ByteString;->getByte(I)B

    move-result v3

    if-eq v0, v3, :cond_ee

    move v7, v2

    goto :goto_f2

    :cond_ee
    add-int/lit8 v2, v2, 0x1

    goto :goto_de

    :cond_f1
    move v7, v13

    :goto_f2
    if-ne v1, v7, :cond_113

    add-int/lit8 v0, v11, 0x1

    .line 169
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    if-ne v0, v1, :cond_113

    .line 171
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move/from16 v18, v7

    move-object v15, v8

    goto :goto_130

    .line 174
    :cond_113
    invoke-direct {v9, v8}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    move-result-wide v0

    add-long v0, v16, v0

    long-to-int v1, v0

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v10, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    add-int/lit8 v4, v11, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-object v3, v8

    move-object/from16 v5, p5

    move/from16 v18, v7

    move-object v15, v8

    move-object/from16 v8, p8

    .line 175
    invoke-direct/range {v0 .. v8}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    :goto_130
    move-object v8, v15

    move/from16 v6, v18

    const/4 v15, -0x1

    goto :goto_cf

    :cond_135
    move-object v15, v8

    .line 188
    invoke-virtual {v10, v15}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    goto/16 :goto_1cd

    .line 192
    :cond_13b
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v5

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v7, v11

    const/4 v15, 0x0

    :goto_149
    if-ge v7, v5, :cond_15a

    .line 193
    invoke-virtual {v3, v7}, Lokio/ByteString;->getByte(I)B

    move-result v1

    invoke-virtual {v4, v7}, Lokio/ByteString;->getByte(I)B

    move-result v2

    if-ne v1, v2, :cond_15a

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_149

    .line 201
    :cond_15a
    invoke-direct {v9, v10}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    move-result-wide v1

    add-long v1, p1, v1

    int-to-long v4, v8

    add-long/2addr v1, v4

    int-to-long v4, v15

    add-long/2addr v1, v4

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    neg-int v4, v15

    .line 203
    invoke-virtual {v10, v4}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 204
    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    add-int v4, v11, v15

    :goto_170
    if-ge v11, v4, :cond_17e

    .line 207
    invoke-virtual {v3, v11}, Lokio/ByteString;->getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    add-int/lit8 v11, v11, 0x1

    goto :goto_170

    :cond_17e
    add-int/lit8 v0, v6, 0x1

    if-ne v0, v13, :cond_1ad

    .line 212
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    if-ne v4, v0, :cond_190

    const/4 v1, 0x1

    goto :goto_191

    :cond_190
    const/4 v1, 0x0

    :goto_191
    if-eqz v1, :cond_1a1

    .line 213
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    goto :goto_1cd

    .line 212
    :cond_1a1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_1ad
    new-instance v11, Lokio/Buffer;

    invoke-direct {v11}, Lokio/Buffer;-><init>()V

    .line 217
    invoke-direct {v9, v11}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    move-result-wide v7

    add-long/2addr v7, v1

    long-to-int v0, v7

    const/4 v3, -0x1

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-object/from16 v0, p0

    move-object v3, v11

    move-object/from16 v5, p5

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 218
    invoke-direct/range {v0 .. v8}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 226
    invoke-virtual {v10, v11}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    :goto_1cd
    return-void

    .line 117
    :cond_1ce
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static bridge synthetic buildTrieRecursive$default(Lokio/Options$Companion;JLokio/Buffer;ILjava/util/List;IILjava/util/List;ILjava/lang/Object;)V
    .registers 22

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_8

    const-wide/16 v0, 0x0

    move-wide v3, v0

    goto :goto_9

    :cond_8
    move-wide v3, p1

    :goto_9
    and-int/lit8 v0, p9, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    const/4 v6, 0x0

    goto :goto_11

    :cond_10
    move v6, p4

    :goto_11
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_17

    const/4 v8, 0x0

    goto :goto_19

    :cond_17
    move/from16 v8, p6

    :goto_19
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_23

    .line 114
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    move v9, v0

    goto :goto_25

    :cond_23
    move/from16 v9, p7

    :goto_25
    move-object v2, p0

    move-object v5, p3

    move-object/from16 v7, p5

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    return-void
.end method

.method private final getIntCount(Lokio/Buffer;)J
    .registers 6

    .line 231
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    const/4 p1, 0x4

    int-to-long v2, p1

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final varargs of([Lokio/ByteString;)Lokio/Options;
    .registers 18

    move-object/from16 v0, p1

    const-string v1, "byteStrings"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    const/4 v4, 0x0

    if-eqz v1, :cond_20

    .line 37
    new-instance v0, Lokio/Options;

    new-array v1, v3, [Lokio/ByteString;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_142

    invoke-direct {v0, v1, v2, v4}, Lokio/Options;-><init>([Lokio/ByteString;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 42
    :cond_20
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 43
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    .line 235
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 236
    array-length v6, v0

    const/4 v7, 0x0

    :goto_2f
    if-ge v7, v6, :cond_3e

    aget-object v8, v0, v7

    const/4 v8, -0x1

    .line 44
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    :cond_3e
    new-array v6, v3, [Ljava/lang/Integer;

    .line 38
    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_137

    check-cast v5, [Ljava/lang/Integer;

    array-length v6, v5

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Integer;

    .line 44
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 242
    array-length v11, v0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_56
    if-ge v12, v11, :cond_70

    aget-object v6, v0, v12

    add-int/lit8 v15, v14, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v5, v1

    .line 46
    invoke-static/range {v5 .. v10}, Lkotlin/collections/CollectionsKt;->binarySearch$default(Ljava/util/List;Ljava/lang/Comparable;IIILjava/lang/Object;)I

    move-result v5

    .line 47
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v13, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    move v14, v15

    goto :goto_56

    .line 49
    :cond_70
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v5

    if-lez v5, :cond_7e

    const/4 v5, 0x1

    goto :goto_7f

    :cond_7e
    const/4 v5, 0x0

    :goto_7f
    if-eqz v5, :cond_129

    const/4 v5, 0x0

    .line 55
    :goto_82
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_f0

    .line 56
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokio/ByteString;

    add-int/lit8 v7, v5, 0x1

    move v8, v7

    .line 58
    :goto_91
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_ee

    .line 59
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lokio/ByteString;

    .line 60
    invoke-virtual {v9, v6}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    move-result v10

    if-nez v10, :cond_a4

    goto :goto_ee

    .line 61
    :cond_a4
    invoke-virtual {v9}, Lokio/ByteString;->size()I

    move-result v10

    invoke-virtual {v6}, Lokio/ByteString;->size()I

    move-result v11

    if-eq v10, v11, :cond_b0

    const/4 v10, 0x1

    goto :goto_b1

    :cond_b0
    const/4 v10, 0x0

    :goto_b1
    if-eqz v10, :cond_d3

    .line 62
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-le v9, v10, :cond_d0

    .line 63
    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 64
    invoke-interface {v13, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_91

    :cond_d0
    add-int/lit8 v8, v8, 0x1

    goto :goto_91

    .line 61
    :cond_d3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duplicate option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_ee
    :goto_ee
    move v5, v7

    goto :goto_82

    .line 72
    :cond_f0
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v14, 0x35

    const/4 v15, 0x0

    move-object/from16 v5, p0

    move-object v8, v2

    move-object v10, v1

    .line 73
    invoke-static/range {v5 .. v15}, Lokio/Options$Companion;->buildTrieRecursive$default(Lokio/Options$Companion;JLokio/Buffer;ILjava/util/List;IILjava/util/List;ILjava/lang/Object;)V

    move-object/from16 v1, p0

    .line 75
    invoke-direct {v1, v2}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    move-result-wide v5

    long-to-int v6, v5

    new-array v5, v6, [I

    .line 77
    :goto_10d
    invoke-virtual {v2}, Lokio/Buffer;->exhausted()Z

    move-result v6

    if-nez v6, :cond_11d

    add-int/lit8 v6, v3, 0x1

    .line 78
    invoke-virtual {v2}, Lokio/Buffer;->readInt()I

    move-result v7

    aput v7, v5, v3

    move v3, v6

    goto :goto_10d

    .line 81
    :cond_11d
    new-instance v2, Lokio/Options;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokio/ByteString;

    invoke-direct {v2, v0, v5, v4}, Lokio/Options;-><init>([Lokio/ByteString;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_129
    move-object/from16 v1, p0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "the empty byte string is not a supported option"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_137
    move-object/from16 v1, p0

    .line 38
    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_142
    .array-data 4
        0x0
        -0x1
    .end array-data
.end method
