.class public final Lcom/google/zxing/oned/Code39Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code39Writer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static toIntArray(I[I)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x9

    if-ge v0, v1, :cond_14

    rsub-int/lit8 v1, v0, 0x8

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int/2addr v1, p0

    if-nez v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x2

    .line 95
    :goto_f
    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    return-void
.end method

.method private static tryToConvertToExtendedMode(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_f9

    .line 103
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eqz v3, :cond_f0

    const/16 v4, 0x20

    if-eq v3, v4, :cond_ec

    const/16 v5, 0x40

    if-eq v3, v5, :cond_e6

    const/16 v5, 0x60

    if-eq v3, v5, :cond_e0

    const/16 v5, 0x2d

    if-eq v3, v5, :cond_ec

    const/16 v5, 0x2e

    if-eq v3, v5, :cond_ec

    const/16 v5, 0x1a

    if-gt v3, v5, :cond_39

    const/16 v4, 0x24

    .line 121
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v3, v3, 0x41

    int-to-char v3, v3

    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_f5

    :cond_39
    const/16 v5, 0x25

    if-ge v3, v4, :cond_4a

    .line 124
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x1b

    add-int/lit8 v3, v3, 0x41

    int-to-char v3, v3

    .line 125
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_f5

    :cond_4a
    const/16 v4, 0x2c

    const/16 v6, 0x2f

    if-le v3, v4, :cond_d4

    if-eq v3, v6, :cond_d4

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_58

    goto/16 :goto_d4

    :cond_58
    const/16 v4, 0x39

    if-gt v3, v4, :cond_66

    add-int/lit8 v3, v3, -0x30

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 130
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_f5

    :cond_66
    const/16 v4, 0x3f

    if-gt v3, v4, :cond_77

    .line 132
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x3b

    add-int/lit8 v3, v3, 0x46

    int-to-char v3, v3

    .line 133
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_f5

    :cond_77
    const/16 v4, 0x5a

    if-gt v3, v4, :cond_85

    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0x41

    int-to-char v3, v3

    .line 135
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_f5

    :cond_85
    const/16 v4, 0x5f

    if-gt v3, v4, :cond_95

    .line 137
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x5b

    add-int/lit8 v3, v3, 0x4b

    int-to-char v3, v3

    .line 138
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f5

    :cond_95
    const/16 v4, 0x7a

    if-gt v3, v4, :cond_a7

    const/16 v4, 0x2b

    .line 140
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0x41

    int-to-char v3, v3

    .line 141
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f5

    :cond_a7
    const/16 v4, 0x7f

    if-gt v3, v4, :cond_b7

    .line 143
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x7b

    add-int/lit8 v3, v3, 0x50

    int-to-char v3, v3

    .line 144
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f5

    .line 146
    :cond_b7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Requested content contains a non-encodable character: \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_d4
    :goto_d4
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x21

    add-int/lit8 v3, v3, 0x41

    int-to-char v3, v3

    .line 128
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f5

    :cond_e0
    const-string v3, "%W"

    .line 117
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f5

    :cond_e6
    const-string v3, "%V"

    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f5

    .line 111
    :cond_ec
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f5

    :cond_f0
    const-string v3, "%U"

    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_f5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    .line 152
    :cond_f9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_9

    .line 42
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    return-object p1

    .line 40
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Can only encode CODE_39, but got "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode(Ljava/lang/String;)[Z
    .registers 14

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Requested contents should be less than 80 digits long, but got "

    const/16 v2, 0x50

    if-gt v0, v2, :cond_9e

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_c
    const-string v5, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    if-ge v4, v0, :cond_3f

    .line 54
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_3c

    .line 56
    invoke-static {p1}, Lcom/google/zxing/oned/Code39Writer;->tryToConvertToExtendedMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v2, :cond_25

    goto :goto_3f

    .line 59
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (extended full ASCII mode)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_3f
    :goto_3f
    const/16 v1, 0x9

    new-array v2, v1, [I

    add-int/lit8 v4, v0, 0x19

    const/4 v6, 0x0

    :goto_46
    if-ge v6, v0, :cond_63

    .line 69
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 70
    sget-object v8, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v7, v8, v7

    invoke-static {v7, v2}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    const/4 v7, 0x0

    :goto_58
    if-ge v7, v1, :cond_60

    .line 71
    aget v8, v2, v7

    add-int/2addr v4, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_58

    :cond_60
    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    .line 75
    :cond_63
    new-array v1, v4, [Z

    const/16 v4, 0x94

    .line 76
    invoke-static {v4, v2}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    const/4 v6, 0x1

    .line 77
    invoke-static {v1, v3, v2, v6}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v7

    new-array v8, v6, [I

    aput v6, v8, v3

    .line 79
    invoke-static {v1, v7, v8, v3}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v9

    add-int/2addr v7, v9

    const/4 v9, 0x0

    :goto_79
    if-ge v9, v0, :cond_97

    .line 82
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 83
    sget-object v11, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v10, v11, v10

    invoke-static {v10, v2}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 84
    invoke-static {v1, v7, v2, v6}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v10

    add-int/2addr v7, v10

    .line 85
    invoke-static {v1, v7, v8, v3}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v10

    add-int/2addr v7, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_79

    .line 87
    :cond_97
    invoke-static {v4, v2}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 88
    invoke-static {v1, v7, v2, v6}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    return-object v1

    .line 49
    :cond_9e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
