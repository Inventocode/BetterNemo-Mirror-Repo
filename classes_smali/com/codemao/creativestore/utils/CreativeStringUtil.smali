.class public Lcom/codemao/creativestore/utils/CreativeStringUtil;
.super Ljava/lang/Object;
.source "CreativeStringUtil.java"


# static fields
.field public static aaa:Ljava/lang/String; = "[\\u0020\\u0028\\u0029\\uff08\\uff09\\u002d\\u005f\\u2014\\uff01\\u2019\\u4e00-\\u9fa5() A-Za-z0-9]*"

.field public static bbb:Ljava/lang/String; = "[\\u0020\\u0028\\u0029\\uff08\\uff09\\u002d\\u005f\\u4e00-\\u9fa5A-Za-z0-9]*"

.field public static final chars:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 62

    const-string v0, "a"

    const-string v1, "b"

    const-string v2, "c"

    const-string v3, "d"

    const-string v4, "e"

    const-string v5, "f"

    const-string v6, "g"

    const-string v7, "h"

    const-string v8, "i"

    const-string v9, "j"

    const-string v10, "k"

    const-string v11, "l"

    const-string v12, "m"

    const-string v13, "n"

    const-string v14, "o"

    const-string v15, "p"

    const-string v16, "q"

    const-string v17, "r"

    const-string v18, "s"

    const-string v19, "t"

    const-string v20, "u"

    const-string v21, "v"

    const-string v22, "w"

    const-string v23, "x"

    const-string v24, "y"

    const-string v25, "z"

    const-string v26, "0"

    const-string v27, "1"

    const-string v28, "2"

    const-string v29, "3"

    const-string v30, "4"

    const-string v31, "5"

    const-string v32, "6"

    const-string v33, "7"

    const-string v34, "8"

    const-string v35, "9"

    const-string v36, "A"

    const-string v37, "B"

    const-string v38, "C"

    const-string v39, "D"

    const-string v40, "E"

    const-string v41, "F"

    const-string v42, "G"

    const-string v43, "H"

    const-string v44, "I"

    const-string v45, "J"

    const-string v46, "K"

    const-string v47, "L"

    const-string v48, "M"

    const-string v49, "N"

    const-string v50, "O"

    const-string v51, "P"

    const-string v52, "Q"

    const-string v53, "R"

    const-string v54, "S"

    const-string v55, "T"

    const-string v56, "U"

    const-string v57, "V"

    const-string v58, "W"

    const-string v59, "X"

    const-string v60, "Y"

    const-string v61, "Z"

    .line 328
    filled-new-array/range {v0 .. v61}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/codemao/creativestore/utils/CreativeStringUtil;->chars:[Ljava/lang/String;

    return-void
.end method

.method public static byteToMB(J)Ljava/lang/String;
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/32 v2, 0x40000000

    cmp-long v4, p0, v2

    if-ltz v4, :cond_1b

    new-array v1, v1, [Ljava/lang/Object;

    long-to-float p0, p0

    long-to-float p1, v2

    div-float/2addr p0, p1

    .line 513
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "%.1f GB"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    const/high16 v2, 0x42c80000  # 100.0f

    const-wide/32 v3, 0x100000

    cmp-long v5, p0, v3

    if-ltz v5, :cond_3d

    long-to-float p0, p0

    long-to-float p1, v3

    div-float/2addr p0, p1

    cmpl-float p1, p0, v2

    if-lez p1, :cond_2e

    const-string p1, "%.0f MB"

    goto :goto_30

    :cond_2e
    const-string p1, "%.1f MB"

    :goto_30
    new-array v1, v1, [Ljava/lang/Object;

    .line 516
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3d
    const-wide/16 v3, 0x400

    cmp-long v5, p0, v3

    if-lez v5, :cond_5c

    long-to-float p0, p0

    long-to-float p1, v3

    div-float/2addr p0, p1

    cmpl-float p1, p0, v2

    if-lez p1, :cond_4d

    const-string p1, "%.0f KB"

    goto :goto_4f

    :cond_4d
    const-string p1, "%.1f KB"

    :goto_4f
    new-array v1, v1, [Ljava/lang/Object;

    .line 519
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5c
    new-array v1, v1, [Ljava/lang/Object;

    .line 521
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "%d B"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static compareVersion(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    const-string v0, "\\."

    .line 459
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 460
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 461
    array-length v0, p0

    array-length v1, p1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v1, :cond_12

    goto :goto_32

    .line 463
    :cond_12
    array-length v0, p0

    array-length v1, p1

    if-ge v0, v1, :cond_18

    :goto_16
    const/4 v2, 0x1

    goto :goto_32

    :cond_18
    const/4 v0, 0x0

    .line 466
    :goto_19
    array-length v1, p0

    if-ge v0, v1, :cond_31

    .line 467
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 468
    aget-object v5, p1, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-le v1, v5, :cond_2b

    goto :goto_32

    :cond_2b
    if-ge v1, v5, :cond_2e

    goto :goto_16

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_31
    const/4 v2, 0x0

    :goto_32
    return v2
.end method

.method public static generateShortUuid()Ljava/lang/String;
    .registers 5

    .line 337
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 338
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_16
    const/16 v3, 0x8

    if-ge v2, v3, :cond_34

    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v4, v3, 0x4

    .line 340
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    .line 341
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 342
    sget-object v4, Lcom/codemao/creativestore/utils/CreativeStringUtil;->chars:[Ljava/lang/String;

    rem-int/lit8 v3, v3, 0x3e

    aget-object v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 344
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLength(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 375
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1a

    .line 376
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 377
    invoke-static {v2}, Lcom/codemao/creativestore/utils/CreativeStringUtil;->isDbcCase(C)Z

    move-result v2

    if-eqz v2, :cond_15

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_15
    add-int/lit8 v1, v1, 0x2

    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1a
    return v1
.end method

.method public static getUploadFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 483
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "0"

    .line 486
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "and"

    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    .line 488
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeStringUtil;->generateShortUuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_3e
    const-string p1, "UTF-8"

    .line 500
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/16 p2, 0x8

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_4a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3e .. :try_end_4a} :catch_4b

    goto :goto_4f

    :catch_4b
    move-exception p1

    .line 503
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_4f
    const-string p1, "\n"

    const-string p2, ""

    .line 505
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isAcotorName(Ljava/lang/String;)Z
    .registers 2

    .line 453
    invoke-static {p0}, Lcom/codemao/creativestore/utils/CreativeStringUtil;->getLength(Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x28

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static isBlockFoldName(Ljava/lang/String;)Z
    .registers 2

    .line 449
    invoke-static {p0}, Lcom/codemao/creativestore/utils/CreativeStringUtil;->getLength(Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x10

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static isBroadcastName(Ljava/lang/String;)Z
    .registers 2

    .line 435
    sget-object v0, Lcom/codemao/creativestore/utils/CreativeStringUtil;->bbb:Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method public static isDbcCase(C)Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-lt p0, v1, :cond_a

    const/16 v1, 0x7f

    if-gt p0, v1, :cond_a

    return v0

    :cond_a
    const v1, 0xff61

    if-lt p0, v1, :cond_15

    const v1, 0xff9f

    if-gt p0, v1, :cond_15

    return v0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public static isHanshu(Ljava/lang/String;)Z
    .registers 3

    .line 442
    sget-object v0, Lcom/codemao/creativestore/utils/CreativeStringUtil;->aaa:Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 445
    :cond_a
    invoke-static {p0}, Lcom/codemao/creativestore/utils/CreativeStringUtil;->getLength(Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x10

    if-gt p0, v0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method public static isVariableName(Ljava/lang/String;)Z
    .registers 3

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    const-string v0, "[\\u4e00-\\u9fa5A-Za-z]"

    .line 89
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 91
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0

    :cond_16
    const-string v0, "^[\\u4e00-\\u9fa5A-Za-z][\\u4e00-\\u9fa5A-Za-z0-9]+$"

    .line 93
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method
