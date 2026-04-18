.class final Lcom/google/zxing/pdf417/decoder/DetectionResult;
.super Ljava/lang/Object;
.source "DetectionResult.java"


# static fields
.field private static final ADJUST_ROW_NUMBER_SKIP:I = 0x2


# instance fields
.field private final barcodeColumnCount:I

.field private final barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

.field private boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

.field private final detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;Lcom/google/zxing/pdf417/decoder/BoundingBox;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    .line 37
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result p1

    iput p1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    .line 38
    iput-object p2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    add-int/lit8 p1, p1, 0x2

    .line 39
    new-array p1, p1, [Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    return-void
.end method

.method private adjustIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V
    .registers 3

    if-eqz p1, :cond_9

    .line 56
    check-cast p1, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    .line 57
    invoke-virtual {p1, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->adjustCompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    :cond_9
    return-void
.end method

.method private static adjustRowNumber(Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/Codeword;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 233
    :cond_4
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getBucket()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getBucket()I

    move-result v2

    if-ne v1, v2, :cond_1d

    .line 234
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V

    const/4 p0, 0x1

    return p0

    :cond_1d
    return v0
.end method

.method private static adjustRowNumberIfValid(IILcom/google/zxing/pdf417/decoder/Codeword;)I
    .registers 4

    if-nez p2, :cond_3

    return p1

    .line 175
    :cond_3
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v0

    if-nez v0, :cond_16

    .line 176
    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/decoder/Codeword;->isValidRowNumber(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 177
    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V

    const/4 p1, 0x0

    goto :goto_16

    :cond_14
    add-int/lit8 p1, p1, 0x1

    :cond_16
    :goto_16
    return p1
.end method

.method private adjustRowNumbers()I
    .registers 8

    .line 69
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersByRow()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 73
    :goto_a
    iget v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/2addr v4, v2

    if-ge v3, v4, :cond_30

    .line 74
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v4

    const/4 v5, 0x0

    .line 75
    :goto_18
    array-length v6, v4

    if-ge v5, v6, :cond_2d

    .line 76
    aget-object v6, v4, v5

    if-eqz v6, :cond_2a

    .line 79
    aget-object v6, v4, v5

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v6

    if-nez v6, :cond_2a

    .line 80
    invoke-direct {p0, v3, v5, v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbers(II[Lcom/google/zxing/pdf417/decoder/Codeword;)V

    :cond_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_30
    return v0
.end method

.method private adjustRowNumbers(II[Lcom/google/zxing/pdf417/decoder/Codeword;)V
    .registers 14

    .line 187
    aget-object v0, p3, p2

    .line 188
    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 190
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    const/4 v3, 0x1

    add-int/2addr p1, v3

    aget-object v4, v2, p1

    if-eqz v4, :cond_1b

    .line 191
    aget-object p1, v2, p1

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object p1

    goto :goto_1c

    :cond_1b
    move-object p1, v1

    :goto_1c
    const/16 v2, 0xe

    new-array v4, v2, [Lcom/google/zxing/pdf417/decoder/Codeword;

    .line 196
    aget-object v5, v1, p2

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const/4 v5, 0x3

    .line 197
    aget-object v7, p1, p2

    aput-object v7, v4, v5

    const/4 v5, 0x0

    if-lez p2, :cond_3d

    add-int/lit8 v7, p2, -0x1

    .line 200
    aget-object v8, p3, v7

    aput-object v8, v4, v5

    const/4 v8, 0x4

    .line 201
    aget-object v9, v1, v7

    aput-object v9, v4, v8

    const/4 v8, 0x5

    .line 202
    aget-object v7, p1, v7

    aput-object v7, v4, v8

    :cond_3d
    if-le p2, v3, :cond_53

    const/16 v7, 0x8

    add-int/lit8 v8, p2, -0x2

    .line 205
    aget-object v9, p3, v8

    aput-object v9, v4, v7

    const/16 v7, 0xa

    .line 206
    aget-object v9, v1, v8

    aput-object v9, v4, v7

    const/16 v7, 0xb

    .line 207
    aget-object v8, p1, v8

    aput-object v8, v4, v7

    .line 209
    :cond_53
    array-length v7, p3

    sub-int/2addr v7, v3

    if-ge p2, v7, :cond_67

    add-int/lit8 v7, p2, 0x1

    .line 210
    aget-object v8, p3, v7

    aput-object v8, v4, v3

    const/4 v3, 0x6

    .line 211
    aget-object v8, v1, v7

    aput-object v8, v4, v3

    const/4 v3, 0x7

    .line 212
    aget-object v7, p1, v7

    aput-object v7, v4, v3

    .line 214
    :cond_67
    array-length v3, p3

    sub-int/2addr v3, v6

    if-ge p2, v3, :cond_7e

    const/16 v3, 0x9

    add-int/2addr p2, v6

    .line 215
    aget-object p3, p3, p2

    aput-object p3, v4, v3

    const/16 p3, 0xc

    .line 216
    aget-object v1, v1, p2

    aput-object v1, v4, p3

    const/16 p3, 0xd

    .line 217
    aget-object p1, p1, p2

    aput-object p1, v4, p3

    :cond_7e
    :goto_7e
    if-ge v5, v2, :cond_8c

    .line 219
    aget-object p1, v4, v5

    .line 220
    invoke-static {v0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumber(Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/Codeword;)Z

    move-result p1

    if-eqz p1, :cond_89

    return-void

    :cond_89
    add-int/lit8 v5, v5, 0x1

    goto :goto_7e

    :cond_8c
    return-void
.end method

.method private adjustRowNumbersByRow()I
    .registers 3

    .line 88
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersFromBothRI()V

    .line 93
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersFromLRI()I

    move-result v0

    .line 94
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbersFromRRI()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private adjustRowNumbersFromBothRI()V
    .registers 8

    .line 98
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_6b

    iget v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aget-object v2, v0, v2

    if-nez v2, :cond_10

    goto :goto_6b

    .line 101
    :cond_10
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .line 102
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/2addr v4, v3

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v2

    .line 103
    :goto_21
    array-length v4, v0

    if-ge v1, v4, :cond_6b

    .line 104
    aget-object v4, v0, v1

    if-eqz v4, :cond_68

    aget-object v4, v2, v1

    if-eqz v4, :cond_68

    aget-object v4, v0, v1

    .line 106
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v4

    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v5

    if-ne v4, v5, :cond_68

    const/4 v4, 0x1

    .line 107
    :goto_3b
    iget v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    if-gt v4, v5, :cond_68

    .line 108
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    aget-object v5, v5, v1

    if-eqz v5, :cond_65

    .line 112
    aget-object v6, v0, v1

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V

    .line 113
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v5

    if-nez v5, :cond_65

    .line 114
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v6, v5, v1

    :cond_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_6b
    :goto_6b
    return-void
.end method

.method private adjustRowNumbersFromLRI()I
    .registers 10

    .line 147
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_8

    return v1

    .line 151
    :cond_8
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 152
    :goto_10
    array-length v4, v0

    if-ge v2, v4, :cond_46

    .line 153
    aget-object v4, v0, v2

    if-eqz v4, :cond_43

    .line 156
    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 158
    :goto_20
    iget v8, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/2addr v8, v5

    if-ge v6, v8, :cond_43

    const/4 v8, 0x2

    if-ge v7, v8, :cond_43

    .line 159
    iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v8

    aget-object v8, v8, v2

    if-eqz v8, :cond_40

    .line 161
    invoke-static {v4, v7, v8}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumberIfValid(IILcom/google/zxing/pdf417/decoder/Codeword;)I

    move-result v7

    .line 162
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v8

    if-nez v8, :cond_40

    add-int/lit8 v3, v3, 0x1

    :cond_40
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_46
    return v3
.end method

.method private adjustRowNumbersFromRRI()I
    .registers 9

    .line 122
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v2, v1, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_c

    return v3

    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 126
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 127
    :goto_16
    array-length v4, v0

    if-ge v1, v4, :cond_4b

    .line 128
    aget-object v4, v0, v1

    if-eqz v4, :cond_48

    .line 131
    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v4

    .line 133
    iget v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    :goto_28
    if-lez v5, :cond_48

    const/4 v7, 0x2

    if-ge v6, v7, :cond_48

    .line 134
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    aget-object v7, v7, v1

    if-eqz v7, :cond_45

    .line 136
    invoke-static {v4, v6, v7}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumberIfValid(IILcom/google/zxing/pdf417/decoder/Codeword;)I

    move-result v6

    .line 137
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v7

    if-nez v7, :cond_45

    add-int/lit8 v2, v2, 0x1

    :cond_45
    add-int/lit8 v5, v5, -0x1

    goto :goto_28

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_4b
    return v2
.end method


# virtual methods
.method getBarcodeColumnCount()I
    .registers 2

    .line 241
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    return v0
.end method

.method getBarcodeECLevel()I
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v0

    return v0
.end method

.method getBarcodeRowCount()I
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v0

    return v0
.end method

.method getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    return-object v0
.end method

.method getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .registers 3

    .line 265
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object p1, v0, p1

    return-object p1
.end method

.method getDetectionResultColumns()[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 44
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    const/16 v0, 0x3a0

    .line 49
    :goto_15
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->adjustRowNumbers()I

    move-result v1

    if-lez v1, :cond_20

    if-lt v1, v0, :cond_1e

    goto :goto_20

    :cond_1e
    move v0, v1

    goto :goto_15

    .line 51
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    return-object v0
.end method

.method setBoundingBox(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V
    .registers 2

    .line 253
    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    return-void
.end method

.method setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V
    .registers 4

    .line 261
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aput-object p2, v0, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    .line 270
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_d

    .line 272
    iget v2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/2addr v2, v3

    aget-object v2, v0, v2

    .line 274
    :cond_d
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    const/4 v4, 0x0

    .line 275
    :goto_13
    :try_start_13
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_74

    const-string v5, "CW %3d:"

    new-array v6, v3, [Ljava/lang/Object;

    .line 276
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v0, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/4 v5, 0x0

    .line 277
    :goto_28
    iget v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    const/4 v7, 0x2

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_6a

    .line 278
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v8, v6, v5
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_7c

    const-string v9, "    |   "

    if-nez v8, :cond_3c

    :try_start_36
    new-array v6, v1, [Ljava/lang/Object;

    .line 279
    invoke-virtual {v0, v9, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_67

    .line 282
    :cond_3c
    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v6

    aget-object v6, v6, v4

    if-nez v6, :cond_4c

    new-array v6, v1, [Ljava/lang/Object;

    .line 284
    invoke-virtual {v0, v9, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_67

    :cond_4c
    const-string v8, " %3d|%3d"

    new-array v7, v7, [Ljava/lang/Object;

    .line 287
    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v1

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v3

    invoke-virtual {v0, v8, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :goto_67
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_6a
    const-string v5, "%n"

    new-array v6, v1, [Ljava/lang/Object;

    .line 289
    invoke-virtual {v0, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 291
    :cond_74
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_78
    .catchall {:try_start_36 .. :try_end_78} :catchall_7c

    .line 292
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    return-object v1

    :catchall_7c
    move-exception v1

    .line 274
    :try_start_7d
    throw v1
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7e

    :catchall_7e
    move-exception v2

    .line 292
    :try_start_7f
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_83

    goto :goto_87

    :catchall_83
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_87
    throw v2
.end method
