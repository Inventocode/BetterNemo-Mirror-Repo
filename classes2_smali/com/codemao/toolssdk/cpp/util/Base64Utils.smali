.class public final Lcom/codemao/toolssdk/cpp/util/Base64Utils;
.super Ljava/lang/Object;
.source "Base64Utils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/cpp/util/Base64Utils$DataUrlParseResult;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/cpp/util/Base64Utils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/cpp/util/Base64Utils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/cpp/util/Base64Utils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/cpp/util/Base64Utils;->INSTANCE:Lcom/codemao/toolssdk/cpp/util/Base64Utils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final determineExtensionFromHeader([B)Ljava/lang/String;
    .registers 9

    .line 121
    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-ge v0, v2, :cond_7

    return-object v1

    :cond_7
    const/4 v0, 0x4

    new-array v2, v0, [I

    .line 126
    fill-array-data v2, :array_c2

    invoke-direct {p0, p1, v2}, Lcom/codemao/toolssdk/cpp/util/Base64Utils;->startsWith([B[I)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string p1, "png"

    return-object p1

    :cond_16
    const/4 v2, 0x3

    new-array v3, v2, [I

    .line 128
    fill-array-data v3, :array_ce

    invoke-direct {p0, p1, v3}, Lcom/codemao/toolssdk/cpp/util/Base64Utils;->startsWith([B[I)Z

    move-result v3

    if-eqz v3, :cond_25

    const-string p1, "jpg"

    return-object p1

    :cond_25
    new-array v3, v0, [I

    .line 130
    fill-array-data v3, :array_d8

    invoke-direct {p0, p1, v3}, Lcom/codemao/toolssdk/cpp/util/Base64Utils;->startsWith([B[I)Z

    move-result v3

    if-eqz v3, :cond_33

    const-string p1, "gif"

    return-object p1

    :cond_33
    new-array v3, v0, [I

    .line 132
    fill-array-data v3, :array_e4

    invoke-direct {p0, p1, v3}, Lcom/codemao/toolssdk/cpp/util/Base64Utils;->startsWith([B[I)Z

    move-result v3

    const/16 v4, 0xb

    const/16 v5, 0x8

    if-eqz v3, :cond_59

    new-instance v3, Lkotlin/ranges/IntRange;

    invoke-direct {v3, v5, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {p1, v3}, Lkotlin/collections/ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object v3

    new-array v6, v0, [B

    .line 133
    fill-array-data v6, :array_f0

    invoke-static {v3, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_59

    const-string p1, "webp"

    return-object p1

    :cond_59
    const/4 v3, 0x2

    new-array v6, v3, [I

    .line 135
    fill-array-data v6, :array_f6

    invoke-direct {p0, p1, v6}, Lcom/codemao/toolssdk/cpp/util/Base64Utils;->startsWith([B[I)Z

    move-result v6

    if-eqz v6, :cond_68

    const-string p1, "bmp"

    return-object p1

    :cond_68
    new-array v2, v2, [I

    .line 141
    fill-array-data v2, :array_fe

    invoke-direct {p0, p1, v2}, Lcom/codemao/toolssdk/cpp/util/Base64Utils;->startsWith([B[I)Z

    move-result v2

    const-string v6, "mp3"

    if-eqz v2, :cond_76

    return-object v6

    :cond_76
    new-array v2, v3, [I

    .line 143
    fill-array-data v2, :array_108

    invoke-direct {p0, p1, v2}, Lcom/codemao/toolssdk/cpp/util/Base64Utils;->startsWith([B[I)Z

    move-result v2

    if-eqz v2, :cond_82

    return-object v6

    :cond_82
    new-array v2, v0, [I

    .line 145
    fill-array-data v2, :array_110

    invoke-direct {p0, p1, v2}, Lcom/codemao/toolssdk/cpp/util/Base64Utils;->startsWith([B[I)Z

    move-result v2

    if-eqz v2, :cond_a4

    new-instance v2, Lkotlin/ranges/IntRange;

    invoke-direct {v2, v5, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {p1, v2}, Lkotlin/collections/ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object v2

    new-array v3, v0, [B

    .line 146
    fill-array-data v3, :array_11c

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_a4

    const-string p1, "wav"

    return-object p1

    :cond_a4
    new-array v2, v0, [I

    .line 148
    fill-array-data v2, :array_122

    invoke-direct {p0, p1, v2}, Lcom/codemao/toolssdk/cpp/util/Base64Utils;->startsWith([B[I)Z

    move-result v2

    if-eqz v2, :cond_b2

    const-string p1, "ogg"

    return-object p1

    :cond_b2
    new-array v0, v0, [I

    .line 150
    fill-array-data v0, :array_12e

    invoke-direct {p0, p1, v0}, Lcom/codemao/toolssdk/cpp/util/Base64Utils;->startsWith([B[I)Z

    move-result p1

    if-eqz p1, :cond_c0

    const-string p1, "flac"

    return-object p1

    :cond_c0
    return-object v1

    nop

    :array_c2
    .array-data 4
        0x89
        0x50
        0x4e
        0x47
    .end array-data

    :array_ce
    .array-data 4
        0xff
        0xd8
        0xff
    .end array-data

    :array_d8
    .array-data 4
        0x47
        0x49
        0x46
        0x38
    .end array-data

    :array_e4
    .array-data 4
        0x52
        0x49
        0x46
        0x46
    .end array-data

    :array_f0
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    :array_f6
    .array-data 4
        0x42
        0x4d
    .end array-data

    :array_fe
    .array-data 4
        0x49
        0x44
        0x33
    .end array-data

    :array_108
    .array-data 4
        0xff
        0xfb
    .end array-data

    :array_110
    .array-data 4
        0x52
        0x49
        0x46
        0x46
    .end array-data

    :array_11c
    .array-data 1
        0x57t
        0x41t
        0x56t
        0x45t
    .end array-data

    :array_122
    .array-data 4
        0x4f
        0x67
        0x67
        0x53
    .end array-data

    :array_12e
    .array-data 4
        0x66
        0x4c
        0x61
        0x43
    .end array-data
.end method

.method private final getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 107
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    .line 111
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_4e

    goto :goto_4c

    :sswitch_13
    const-string v0, "bcmkn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_49

    goto :goto_4c

    :sswitch_1c
    const-string v0, "bcm4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_49

    goto :goto_4c

    :sswitch_25
    const-string v0, "application/json"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_49

    goto :goto_4c

    :sswitch_2e
    const-string v0, "guyukn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_49

    goto :goto_4c

    :sswitch_37
    const-string v0, "bcmknk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4c

    goto :goto_49

    :sswitch_40
    const-string v0, "bcmknh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_49

    goto :goto_4c

    :cond_49
    :goto_49
    const-string p1, "json"

    goto :goto_4d

    :cond_4c
    :goto_4c
    const/4 p1, 0x0

    :goto_4d
    return-object p1

    :sswitch_data_4e
    .sparse-switch
        -0x531ed067 -> :sswitch_40
        -0x531ed064 -> :sswitch_37
        -0x49935493 -> :sswitch_2e
        -0x29cf5b9 -> :sswitch_25
        0x2e0d68 -> :sswitch_1c
        0x593a6af -> :sswitch_13
    .end sparse-switch
.end method

.method private final parseDataUrl(Ljava/lang/String;)Lcom/codemao/toolssdk/cpp/util/Base64Utils$DataUrlParseResult;
    .registers 12

    const-string v0, "data:"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 90
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    return-object v3

    :cond_c
    const/16 v5, 0x2c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v4, p1

    .line 91
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1b

    return-object v3

    .line 94
    :cond_1b
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v4, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x3a

    .line 97
    invoke-static {v1, v0, v3, v2, v3}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-static {v0, v1, v3, v2, v3}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_42

    return-object v3

    .line 100
    :cond_42
    new-instance v1, Lcom/codemao/toolssdk/cpp/util/Base64Utils$DataUrlParseResult;

    invoke-direct {v1, v0, p1}, Lcom/codemao/toolssdk/cpp/util/Base64Utils$DataUrlParseResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private final varargs startsWith([B[I)Z
    .registers 8

    .line 160
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_6

    return v2

    .line 161
    :cond_6
    array-length v0, p2

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_15

    .line 162
    aget-byte v3, p1, v1

    aget v4, p2, v1

    int-to-byte v4, v4

    if-eq v3, v4, :cond_12

    return v2

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_15
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final saveBase64ToFile(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "base64String"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dirPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 22
    :try_start_b
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "文件夹路径："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",大小："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dNetWorkAgent(Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/util/Base64Utils;->parseDataUrl(Ljava/lang/String;)Lcom/codemao/toolssdk/cpp/util/Base64Utils$DataUrlParseResult;

    move-result-object v2

    if-eqz v2, :cond_54

    .line 30
    invoke-virtual {v2}, Lcom/codemao/toolssdk/cpp/util/Base64Utils$DataUrlParseResult;->getBase64Data()Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-virtual {v2}, Lcom/codemao/toolssdk/cpp/util/Base64Utils$DataUrlParseResult;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/codemao/toolssdk/cpp/util/Base64Utils;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "文件类型，方案一解析成功："

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dNetWorkAgent(Ljava/lang/String;)V

    goto :goto_5a

    :cond_54
    const-string v2, "没带文件头，后面确定"

    .line 37
    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dNetWorkAgent(Ljava/lang/String;)V

    move-object v2, v0

    :goto_5a
    const/4 v3, 0x0

    .line 41
    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v4, "fileData"

    .line 42
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, p1

    if-nez v4, :cond_68

    const/4 v3, 0x1

    :cond_68
    if-eqz v3, :cond_77

    const-string p1, "解码数据是空的"

    .line 43
    invoke-virtual {v1, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dNetWorkAgent(Ljava/lang/String;)V

    .line 44
    new-instance p1, Lkotlin/Pair;

    const-string p2, "base64解码数据是空的"

    invoke-direct {p1, v0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_77
    if-nez v2, :cond_91

    .line 49
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/util/Base64Utils;->determineExtensionFromHeader([B)Ljava/lang/String;

    move-result-object v2

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "通过文件头确定文件类型："

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dNetWorkAgent(Ljava/lang/String;)V

    :cond_91
    if-nez v2, :cond_a0

    const-string p1, "无法识别文件类型，放弃保存"

    .line 54
    invoke-virtual {v1, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dNetWorkAgent(Ljava/lang/String;)V

    .line 55
    new-instance p1, Lkotlin/Pair;

    const-string p2, "base64无法识别文件类型，放弃保存"

    invoke-direct {p1, v0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 59
    :cond_a0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_ae

    .line 61
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 65
    :cond_ae
    new-instance p2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_d0} :catch_12d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_d0} :catch_ff

    .line 68
    :try_start_d0
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 69
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_d5
    .catchall {:try_start_d0 .. :try_end_d5} :catchall_f8

    .line 67
    :try_start_d5
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "文件保存成功："

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dNetWorkAgent(Ljava/lang/String;)V

    .line 72
    new-instance p1, Lkotlin/Pair;

    const-string v1, ""

    invoke-direct {p1, p2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_f7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d5 .. :try_end_f7} :catch_12d
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_f7} :catch_ff

    return-object p1

    :catchall_f8
    move-exception p1

    .line 67
    :try_start_f9
    throw p1
    :try_end_fa
    .catchall {:try_start_f9 .. :try_end_fa} :catchall_fa

    :catchall_fa
    move-exception p2

    :try_start_fb
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_ff
    .catch Ljava/lang/IllegalArgumentException; {:try_start_fb .. :try_end_ff} :catch_12d
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_ff} :catch_ff

    :catch_ff
    move-exception p1

    .line 78
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "io异常："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dNetWorkAgent(Ljava/lang/String;)V

    .line 79
    new-instance p2, Lkotlin/Pair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "io异常:+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :catch_12d
    move-exception p1

    .line 75
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "参数异常："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dNetWorkAgent(Ljava/lang/String;)V

    .line 76
    new-instance p2, Lkotlin/Pair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "参数异常:+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method
