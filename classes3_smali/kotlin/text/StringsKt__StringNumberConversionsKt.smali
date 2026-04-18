.class Lkotlin/text/StringsKt__StringNumberConversionsKt;
.super Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;
.source "StringNumberConversions.kt"


# direct methods
.method public static toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 57
    invoke-static {p0, v0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return-object v1

    :cond_10
    const/4 v2, 0x0

    .line 76
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    .line 77
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v4

    const v5, -0x7fffffff

    const/4 v6, 0x1

    if-gez v4, :cond_33

    if-ne v0, v6, :cond_24

    return-object v1

    :cond_24
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_2c

    const/high16 v5, -0x80000000

    const/4 v3, 0x1

    goto :goto_35

    :cond_2c
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_32

    const/4 v3, 0x0

    goto :goto_35

    :cond_32
    return-object v1

    :cond_33
    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_35
    const v4, -0x38e38e3

    const v7, -0x38e38e3

    :goto_3b
    if-ge v6, v0, :cond_5c

    .line 102
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, p1}, Lkotlin/text/CharsKt__CharJVMKt;->digitOf(CI)I

    move-result v8

    if-gez v8, :cond_48

    return-object v1

    :cond_48
    if-ge v2, v7, :cond_51

    if-ne v7, v4, :cond_50

    .line 107
    div-int v7, v5, p1

    if-ge v2, v7, :cond_51

    :cond_50
    return-object v1

    :cond_51
    mul-int v2, v2, p1

    add-int v9, v5, v8

    if-ge v2, v9, :cond_58

    return-object v1

    :cond_58
    sub-int/2addr v2, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    :cond_5c
    if-eqz v3, :cond_63

    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_68

    :cond_63
    neg-int p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_68
    return-object p0
.end method

.method public static toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 132
    invoke-static {p0, v0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final toLongOrNull(Ljava/lang/String;I)Ljava/lang/Long;
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-static/range {p1 .. p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 144
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_14

    return-object v3

    :cond_14
    const/4 v4, 0x0

    .line 151
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    .line 152
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    const-wide v7, -0x7fffffffffffffffL  # -4.9E-324

    const/4 v9, 0x1

    if-gez v6, :cond_39

    if-ne v2, v9, :cond_2a

    return-object v3

    :cond_2a
    const/16 v6, 0x2d

    if-ne v5, v6, :cond_32

    const-wide/high16 v7, -0x8000000000000000L

    const/4 v4, 0x1

    goto :goto_3a

    :cond_32
    const/16 v6, 0x2b

    if-ne v5, v6, :cond_38

    const/4 v4, 0x1

    goto :goto_39

    :cond_38
    return-object v3

    :cond_39
    :goto_39
    const/4 v9, 0x0

    :goto_3a
    const-wide v5, -0x38e38e38e38e38eL  # -2.772000429909333E291

    const-wide/16 v10, 0x0

    move-wide v12, v5

    :goto_42
    if-ge v4, v2, :cond_73

    .line 177
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14, v1}, Lkotlin/text/CharsKt__CharJVMKt;->digitOf(CI)I

    move-result v14

    if-gez v14, :cond_4f

    return-object v3

    :cond_4f
    cmp-long v15, v10, v12

    if-gez v15, :cond_5f

    cmp-long v15, v12, v5

    if-nez v15, :cond_5e

    int-to-long v12, v1

    .line 182
    div-long v12, v7, v12

    cmp-long v15, v10, v12

    if-gez v15, :cond_5f

    :cond_5e
    return-object v3

    :cond_5f
    int-to-long v5, v1

    mul-long v10, v10, v5

    int-to-long v5, v14

    add-long v16, v7, v5

    cmp-long v14, v10, v16

    if-gez v14, :cond_6a

    return-object v3

    :cond_6a
    sub-long/2addr v10, v5

    add-int/lit8 v4, v4, 0x1

    const-wide v5, -0x38e38e38e38e38eL  # -2.772000429909333E291

    goto :goto_42

    :cond_73
    if-eqz v9, :cond_7a

    .line 199
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_7f

    :cond_7a
    neg-long v0, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_7f
    return-object v0
.end method
