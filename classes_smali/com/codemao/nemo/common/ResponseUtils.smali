.class public final Lcom/codemao/nemo/common/ResponseUtils;
.super Ljava/lang/Object;
.source "ResponseUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/common/ResponseUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/common/ResponseUtils;

    invoke-direct {v0}, Lcom/codemao/nemo/common/ResponseUtils;-><init>()V

    sput-object v0, Lcom/codemao/nemo/common/ResponseUtils;->INSTANCE:Lcom/codemao/nemo/common/ResponseUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final errorBodyV0FromJsonStr(Ljava/lang/String;)Lcn/codemao/android/http/model/HttpErrorBodyV0;
    .registers 4

    .line 53
    :try_start_0
    invoke-static {}, Lcom/codemao/nemo/util/GsonUtil;->getInstance()Lcom/google/gson/Gson;

    move-result-object v0

    .line 54
    const-class v1, Lcn/codemao/android/http/model/HttpErrorBodyV0;

    .line 53
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type cn.codemao.android.http.model.HttpErrorBodyV0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcn/codemao/android/http/model/HttpErrorBodyV0;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    const/4 p1, 0x0

    :goto_13
    return-object p1
.end method

.method private final errorBodyV1FromJsonStr(Ljava/lang/String;)Lcn/codemao/android/http/model/HttpErrorBodyV1;
    .registers 4

    .line 64
    :try_start_0
    invoke-static {}, Lcom/codemao/nemo/util/GsonUtil;->getInstance()Lcom/google/gson/Gson;

    move-result-object v0

    .line 65
    const-class v1, Lcn/codemao/android/http/model/HttpErrorBodyV1;

    .line 64
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type cn.codemao.android.http.model.HttpErrorBodyV1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcn/codemao/android/http/model/HttpErrorBodyV1;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    const/4 p1, 0x0

    :goto_13
    return-object p1
.end method

.method private final errorBodyV2FromJsonStr(Ljava/lang/String;)Lcn/codemao/android/http/model/HttpErrorBodyV2;
    .registers 4

    .line 75
    :try_start_0
    invoke-static {}, Lcom/codemao/nemo/util/GsonUtil;->getInstance()Lcom/google/gson/Gson;

    move-result-object v0

    .line 76
    const-class v1, Lcn/codemao/android/http/model/HttpErrorBodyV2;

    .line 75
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type cn.codemao.android.http.model.HttpErrorBodyV2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcn/codemao/android/http/model/HttpErrorBodyV2;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    const/4 p1, 0x0

    :goto_13
    return-object p1
.end method


# virtual methods
.method public final getErrorCodeAndMsg(Lokhttp3/ResponseBody;)Lcn/codemao/android/http/model/CmaoHttpException;
    .registers 8

    const/4 v0, 0x0

    const-string v1, "-1"

    const-string v2, ""

    if-eqz p1, :cond_f

    .line 17
    :try_start_7
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    goto :goto_10

    :catch_c
    move-exception p1

    goto/16 :goto_9c

    :cond_f
    move-object p1, v0

    :goto_10
    if-eqz p1, :cond_9f

    const-string v3, "domain"

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 19
    invoke-static {p1, v3, v5, v4, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 20
    invoke-direct {p0, p1}, Lcom/codemao/nemo/common/ResponseUtils;->errorBodyV2FromJsonStr(Ljava/lang/String;)Lcn/codemao/android/http/model/HttpErrorBodyV2;

    move-result-object p1

    if-eqz p1, :cond_9f

    .line 22
    invoke-virtual {p1}, Lcn/codemao/android/http/model/HttpErrorBodyV2;->getError_code()Ljava/lang/String;

    move-result-object v0

    const-string v3, "httpErrorBodyV2.error_code"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2b} :catch_c

    .line 23
    :try_start_2b
    invoke-virtual {p1}, Lcn/codemao/android/http/model/HttpErrorBodyV2;->getError_message()Ljava/lang/String;

    move-result-object v1

    const-string v3, "httpErrorBodyV2.error_message"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_34} :catch_64

    .line 24
    :try_start_34
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-virtual {p1}, Lcn/codemao/android/http/model/HttpErrorBodyV2;->getDomain()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5e

    invoke-virtual {p1}, Lcn/codemao/android/http/model/HttpErrorBodyV2;->getDomain()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5e

    .line 25
    invoke-virtual {p1}, Lcn/codemao/android/http/model/HttpErrorBodyV2;->getDomain()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/codemao/android/http/model/HttpErrorDetail;

    invoke-virtual {p1}, Lcn/codemao/android/http/model/HttpErrorDetail;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string p1, "httpErrorBodyV2.domain[0].message"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_5d} :catch_61

    goto :goto_5f

    :cond_5e
    move-object v2, v1

    :goto_5f
    move-object v1, v0

    goto :goto_9f

    :catch_61
    move-exception p1

    move-object v2, v1

    goto :goto_65

    :catch_64
    move-exception p1

    :goto_65
    move-object v1, v0

    goto :goto_9c

    :cond_67
    :try_start_67
    const-string v3, "catastrophe"

    .line 28
    invoke-static {p1, v3, v5, v4, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 29
    invoke-direct {p0, p1}, Lcom/codemao/nemo/common/ResponseUtils;->errorBodyV1FromJsonStr(Ljava/lang/String;)Lcn/codemao/android/http/model/HttpErrorBodyV1;

    move-result-object p1

    if-eqz p1, :cond_9f

    .line 31
    invoke-virtual {p1}, Lcn/codemao/android/http/model/HttpErrorBodyV1;->getError_code()Ljava/lang/String;

    move-result-object v0

    const-string v3, "httpErrorBodyV1.error_code"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_7e} :catch_c

    .line 32
    :try_start_7e
    invoke-virtual {p1}, Lcn/codemao/android/http/model/HttpErrorBodyV1;->getCatastrophe()Lcn/codemao/android/http/model/Catastrophe;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_64

    goto :goto_5f

    .line 37
    :cond_82
    :try_start_82
    invoke-direct {p0, p1}, Lcom/codemao/nemo/common/ResponseUtils;->errorBodyV0FromJsonStr(Ljava/lang/String;)Lcn/codemao/android/http/model/HttpErrorBodyV0;

    move-result-object p1

    if-eqz p1, :cond_9f

    .line 39
    invoke-virtual {p1}, Lcn/codemao/android/http/model/HttpErrorBodyV0;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "httpErrorBodyV0.code"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_91} :catch_c

    .line 40
    :try_start_91
    invoke-virtual {p1}, Lcn/codemao/android/http/model/HttpErrorBodyV0;->getMsg()Ljava/lang/String;

    move-result-object p1

    const-string v1, "httpErrorBodyV0.msg"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_9a} :catch_64

    move-object v2, p1

    goto :goto_5f

    .line 45
    :goto_9c
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    :cond_9f
    :goto_9f
    new-instance p1, Lcn/codemao/android/http/model/CmaoHttpException;

    invoke-direct {p1, v1, v2}, Lcn/codemao/android/http/model/CmaoHttpException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
