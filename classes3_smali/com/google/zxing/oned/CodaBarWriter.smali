.class public final Lcom/google/zxing/oned/CodaBarWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "CodaBarWriter.java"


# static fields
.field private static final ALT_START_END_CHARS:[C

.field private static final CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

.field private static final DEFAULT_GUARD:C

.field private static final START_END_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v1, v0, [C

    .line 26
    fill-array-data v1, :array_1c

    sput-object v1, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    new-array v2, v0, [C

    .line 27
    fill-array-data v2, :array_24

    sput-object v2, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    new-array v0, v0, [C

    .line 28
    fill-array-data v0, :array_2c

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

    const/4 v0, 0x0

    .line 29
    aget-char v0, v1, v0

    sput-char v0, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    return-void

    :array_1c
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data

    :array_24
    .array-data 2
        0x54s
        0x4es
        0x2as
        0x45s
    .end array-data

    :array_2c
    .array-data 2
        0x2fs
        0x3as
        0x2bs
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .registers 12

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ge v0, v3, :cond_1e

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v3, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7f

    .line 39
    :cond_1e
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 41
    sget-object v4, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    invoke-static {v4, v0}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v5

    .line 42
    invoke-static {v4, v3}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v4

    .line 43
    sget-object v6, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    invoke-static {v6, v0}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v0

    .line 44
    invoke-static {v6, v3}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v3

    const-string v6, "Invalid start/end guards: "

    if-eqz v5, :cond_58

    if-eqz v4, :cond_4e

    goto :goto_7f

    .line 47
    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    if-eqz v0, :cond_67

    if-eqz v3, :cond_5d

    goto :goto_7f

    .line 52
    :cond_5d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_67
    if-nez v4, :cond_150

    if-nez v3, :cond_150

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v3, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_7f
    const/16 v0, 0x14

    const/4 v3, 0x1

    .line 67
    :goto_82
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_d5

    .line 68
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_d0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_d0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x24

    if-ne v4, v5, :cond_a4

    goto :goto_d0

    .line 70
    :cond_a4
    sget-object v4, Lcom/google/zxing/oned/CodaBarWriter;->CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v4

    if-eqz v4, :cond_b3

    add-int/lit8 v0, v0, 0xa

    goto :goto_d2

    .line 73
    :cond_b3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot encode : \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d0
    :goto_d0
    add-int/lit8 v0, v0, 0x9

    :goto_d2
    add-int/lit8 v3, v3, 0x1

    goto :goto_82

    .line 77
    :cond_d5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 79
    new-array v0, v0, [Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 81
    :goto_df
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_14f

    .line 82
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    if-eqz v3, :cond_f6

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    if-ne v3, v6, :cond_112

    :cond_f6
    const/16 v6, 0x2a

    if-eq v5, v6, :cond_110

    const/16 v6, 0x45

    if-eq v5, v6, :cond_10d

    const/16 v6, 0x4e

    if-eq v5, v6, :cond_10a

    const/16 v6, 0x54

    if-eq v5, v6, :cond_107

    goto :goto_112

    :cond_107
    const/16 v5, 0x41

    goto :goto_112

    :cond_10a
    const/16 v5, 0x42

    goto :goto_112

    :cond_10d
    const/16 v5, 0x44

    goto :goto_112

    :cond_110
    const/16 v5, 0x43

    :cond_112
    :goto_112
    const/4 v6, 0x0

    .line 101
    :goto_113
    sget-object v7, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    array-length v8, v7

    if-ge v6, v8, :cond_124

    .line 103
    aget-char v7, v7, v6

    if-ne v5, v7, :cond_121

    .line 104
    sget-object v5, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    aget v5, v5, v6

    goto :goto_125

    :cond_121
    add-int/lit8 v6, v6, 0x1

    goto :goto_113

    :cond_124
    const/4 v5, 0x0

    :goto_125
    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_127
    const/4 v8, 0x0

    :goto_128
    const/4 v9, 0x7

    if-ge v6, v9, :cond_141

    .line 112
    aput-boolean v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    rsub-int/lit8 v9, v6, 0x6

    shr-int v9, v5, v9

    and-int/2addr v9, v2

    if-eqz v9, :cond_13c

    if-ne v8, v2, :cond_139

    goto :goto_13c

    :cond_139
    add-int/lit8 v8, v8, 0x1

    goto :goto_128

    :cond_13c
    :goto_13c
    xor-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_127

    .line 122
    :cond_141
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    if-ge v3, v5, :cond_14c

    .line 123
    aput-boolean v1, v0, v4

    add-int/lit8 v4, v4, 0x1

    :cond_14c
    add-int/lit8 v3, v3, 0x1

    goto :goto_df

    :cond_14f
    return-object v0

    .line 58
    :cond_150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
