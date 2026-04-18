.class public final Lcom/codemao/toolssdk/manager/CMTUploadManager;
.super Ljava/lang/Object;
.source "CMTUploadManager.kt"


# instance fields
.field private final callList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation
.end field

.field private cancelUpload:Z

.field private cancelUploadAgent:Z

.field private final chars:[Ljava/lang/String;

.field private final gson:Lcom/google/gson/Gson;

.field private final upCancellationSignal:Lcom/qiniu/android/storage/UpCancellationSignal;


# direct methods
.method public static synthetic $r8$lambda$8hsmbdWsVaSE7aW21BZmtVOKTqs(Lcom/codemao/toolssdk/manager/CMTUploadManager;)Z
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/manager/CMTUploadManager;->upCancellationSignal$lambda$0(Lcom/codemao/toolssdk/manager/CMTUploadManager;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$U_PHk4rgoKfTZtcJRHBthJugeIY(Lcom/codemao/toolssdk/manager/CMTUploadManager;)Z
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/manager/CMTUploadManager;->upCancellationSignalAgent$lambda$1(Lcom/codemao/toolssdk/manager/CMTUploadManager;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vG23oQoW_-WuykHFei10K0jUU_M(Lcom/codemao/toolssdk/model/http/GetQiniuResponse;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/codemao/toolssdk/manager/CMTUploadManager;->uploadToQiNiuServer$lambda$2(Lcom/codemao/toolssdk/model/http/GetQiniuResponse;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 66
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lokhttp3/Call;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "callList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/codemao/toolssdk/manager/CMTUploadManager;->callList:Ljava/util/ArrayList;

    .line 26
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iput-object v1, v0, Lcom/codemao/toolssdk/manager/CMTUploadManager;->gson:Lcom/google/gson/Gson;

    .line 27
    new-instance v1, Lcom/codemao/toolssdk/manager/CMTUploadManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/codemao/toolssdk/manager/CMTUploadManager$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/manager/CMTUploadManager;)V

    iput-object v1, v0, Lcom/codemao/toolssdk/manager/CMTUploadManager;->upCancellationSignal:Lcom/qiniu/android/storage/UpCancellationSignal;

    .line 28
    new-instance v1, Lcom/codemao/toolssdk/manager/CMTUploadManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/codemao/toolssdk/manager/CMTUploadManager$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/manager/CMTUploadManager;)V

    const-string v2, "a"

    const-string v3, "b"

    const-string v4, "c"

    const-string v5, "d"

    const-string v6, "e"

    const-string v7, "f"

    const-string v8, "g"

    const-string v9, "h"

    const-string v10, "i"

    const-string v11, "j"

    const-string v12, "k"

    const-string v13, "l"

    const-string v14, "m"

    const-string v15, "n"

    const-string v16, "o"

    const-string v17, "p"

    const-string v18, "q"

    const-string v19, "r"

    const-string v20, "s"

    const-string v21, "t"

    const-string v22, "u"

    const-string v23, "v"

    const-string v24, "w"

    const-string v25, "x"

    const-string v26, "y"

    const-string v27, "z"

    const-string v28, "0"

    const-string v29, "1"

    const-string v30, "2"

    const-string v31, "3"

    const-string v32, "4"

    const-string v33, "5"

    const-string v34, "6"

    const-string v35, "7"

    const-string v36, "8"

    const-string v37, "9"

    const-string v38, "A"

    const-string v39, "B"

    const-string v40, "C"

    const-string v41, "D"

    const-string v42, "E"

    const-string v43, "F"

    const-string v44, "G"

    const-string v45, "H"

    const-string v46, "I"

    const-string v47, "J"

    const-string v48, "K"

    const-string v49, "L"

    const-string v50, "M"

    const-string v51, "N"

    const-string v52, "O"

    const-string v53, "P"

    const-string v54, "Q"

    const-string v55, "R"

    const-string v56, "S"

    const-string v57, "T"

    const-string v58, "U"

    const-string v59, "V"

    const-string v60, "W"

    const-string v61, "X"

    const-string v62, "Y"

    const-string v63, "Z"

    .line 211
    filled-new-array/range {v2 .. v63}, [Ljava/lang/String;

    move-result-object v1

    .line 149
    iput-object v1, v0, Lcom/codemao/toolssdk/manager/CMTUploadManager;->chars:[Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_9

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/manager/CMTUploadManager;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static final synthetic access$getCallList$p(Lcom/codemao/toolssdk/manager/CMTUploadManager;)Ljava/util/ArrayList;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager;->callList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getGson$p(Lcom/codemao/toolssdk/manager/CMTUploadManager;)Lcom/google/gson/Gson;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method public static final synthetic access$uploadToQiNiuServer(Lcom/codemao/toolssdk/manager/CMTUploadManager;Lcom/codemao/toolssdk/model/http/GetQiniuResponse;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .registers 5

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/manager/CMTUploadManager;->uploadToQiNiuServer(Lcom/codemao/toolssdk/model/http/GetQiniuResponse;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final generateShortUuid()Ljava/lang/String;
    .registers 9

    .line 127
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 128
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "randomUUID().toString()"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "-"

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1e
    const/16 v3, 0x8

    if-ge v2, v3, :cond_45

    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v4, v3, 0x4

    .line 130
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x10

    .line 131
    invoke-static {v4}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 132
    iget-object v4, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager;->chars:[Ljava/lang/String;

    rem-int/lit8 v3, v3, 0x3e

    aget-object v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 134
    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shortBuffer.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getUploadFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "0"

    .line 107
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "and"

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-direct {p0}, Lcom/codemao/toolssdk/manager/CMTUploadManager;->generateShortUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "stringBuilder.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_37
    const-string v0, "UTF-8"

    .line 118
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "forName(charsetName)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    .line 119
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_37 .. :try_end_56} :catch_58

    move-object v1, v0

    goto :goto_5d

    :catch_58
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v1, p1

    .line 123
    :goto_5d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "\n"

    const-string v3, ""

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static final upCancellationSignal$lambda$0(Lcom/codemao/toolssdk/manager/CMTUploadManager;)Z
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-boolean p0, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager;->cancelUpload:Z

    return p0
.end method

.method private static final upCancellationSignalAgent$lambda$1(Lcom/codemao/toolssdk/manager/CMTUploadManager;)Z
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-boolean p0, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager;->cancelUploadAgent:Z

    return p0
.end method

.method private final uploadToQiNiuServer(Lcom/codemao/toolssdk/model/http/GetQiniuResponse;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/http/GetQiniuResponse;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    .line 83
    iput-boolean v1, v0, Lcom/codemao/toolssdk/manager/CMTUploadManager;->cancelUpload:Z

    .line 84
    new-instance v2, Lcom/qiniu/android/storage/UploadManager;

    invoke-direct {v2}, Lcom/qiniu/android/storage/UploadManager;-><init>()V

    .line 85
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/http/GetQiniuResponse;->getTokens()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/toolssdk/model/http/UploadFileTokenInfo;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/http/UploadFileTokenInfo;->getFile_path()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/http/GetQiniuResponse;->getTokens()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/model/http/UploadFileTokenInfo;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/http/UploadFileTokenInfo;->getToken()Ljava/lang/String;

    move-result-object v5

    .line 89
    new-instance v3, Ljava/io/File;

    move-object v1, p2

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    new-instance v6, Lcom/codemao/toolssdk/manager/CMTUploadManager$$ExternalSyntheticLambda2;

    move-object v1, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct {v6, p1, v4, v7, v8}, Lcom/codemao/toolssdk/manager/CMTUploadManager$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/model/http/GetQiniuResponse;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 96
    new-instance v1, Lcom/qiniu/android/storage/UploadOptions;

    iget-object v12, v0, Lcom/codemao/toolssdk/manager/CMTUploadManager;->upCancellationSignal:Lcom/qiniu/android/storage/UpCancellationSignal;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/qiniu/android/storage/UploadOptions;-><init>(Ljava/util/Map;Ljava/lang/String;ZLcom/qiniu/android/storage/UpProgressHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    .line 88
    invoke-virtual/range {v2 .. v7}, Lcom/qiniu/android/storage/UploadManager;->put(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V

    return-void
.end method

.method private static final uploadToQiNiuServer$lambda$2(Lcom/codemao/toolssdk/model/http/GetQiniuResponse;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .registers 7

    const-string p4, "$qiNiuResponse"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$successCallback"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$failCallback"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p5}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result p4

    if-eqz p4, :cond_2c

    .line 91
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/http/GetQiniuResponse;->getBucket_url()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 92
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 94
    :cond_2c
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_2f
    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 4

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager;->cancelUpload:Z

    .line 139
    iput-boolean v0, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager;->cancelUploadAgent:Z

    const/4 v0, 0x0

    .line 141
    :goto_6
    iget-object v1, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager;->callList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 142
    iget-object v1, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager;->callList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "callList[index]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lokhttp3/Call;

    .line 143
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 146
    :cond_21
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager;->callList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final getTokenAndUploadFile(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "."

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    .line 36
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    const-string v0, ""

    goto :goto_29

    .line 40
    :cond_20
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String).substring(startIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    :goto_29
    sget-object v1, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getUserId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_3c

    :cond_3b
    move-object v1, v2

    :goto_3c
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/codemao/toolssdk/manager/CMTUploadManager;->getUploadFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/codemao/toolssdk/manager/HttpClientManager;->INSTANCE:Lcom/codemao/toolssdk/manager/HttpClientManager;

    const/4 v4, 0x1

    invoke-static {v3, v2, v4, v2}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getBucketUrl$default(Lcom/codemao/toolssdk/manager/HttpClientManager;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&filePaths="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/codemao/toolssdk/manager/HttpClientManager;->normalHeaders()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 46
    invoke-virtual {v3}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager;->callList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v1, Lcom/codemao/toolssdk/manager/CMTUploadManager$getTokenAndUploadFile$1;

    move-object v2, v1

    move-object v3, p0

    move-object v4, v0

    move-object v5, p3

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/codemao/toolssdk/manager/CMTUploadManager$getTokenAndUploadFile$1;-><init>(Lcom/codemao/toolssdk/manager/CMTUploadManager;Lokhttp3/Call;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public final setCancelUpload(Z)V
    .registers 2

    .line 23
    iput-boolean p1, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager;->cancelUpload:Z

    return-void
.end method
