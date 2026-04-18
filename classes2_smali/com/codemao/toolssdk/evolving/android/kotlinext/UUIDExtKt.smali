.class public final Lcom/codemao/toolssdk/evolving/android/kotlinext/UUIDExtKt;
.super Ljava/lang/Object;
.source "UUIDExt.kt"


# static fields
.field private static final chars:[Ljava/lang/String;


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

    .line 67
    filled-new-array/range {v0 .. v61}, [Ljava/lang/String;

    move-result-object v0

    .line 5
    sput-object v0, Lcom/codemao/toolssdk/evolving/android/kotlinext/UUIDExtKt;->chars:[Ljava/lang/String;

    return-void
.end method

.method public static final toShort(Ljava/util/UUID;)Ljava/lang/String;
    .registers 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string p0, "this.toString()"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "-"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_1f
    const/16 v2, 0x8

    if-ge v1, v2, :cond_46

    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v3, v2, 0x4

    .line 74
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x10

    .line 75
    invoke-static {v3}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 76
    sget-object v3, Lcom/codemao/toolssdk/evolving/android/kotlinext/UUIDExtKt;->chars:[Ljava/lang/String;

    rem-int/lit8 v2, v2, 0x3e

    aget-object v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 78
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "shortBuffer.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
