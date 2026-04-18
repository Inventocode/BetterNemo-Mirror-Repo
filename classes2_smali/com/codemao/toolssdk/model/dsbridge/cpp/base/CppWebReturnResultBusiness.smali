.class public Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBusiness;
.super Lcom/codemao/toolssdk/model/dsbridge/cpp/base/PythonWebReturnResult;
.source "CppWebReturnResultBusiness.kt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/PythonWebReturnResult;-><init>()V

    return-void
.end method

.method public static synthetic getFailReason$default(Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBusiness;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    if-nez p3, :cond_d

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_8

    const-string p1, ""

    .line 12
    :cond_8
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBusiness;->getFailReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getFailReason"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getPathField$default(Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBusiness;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    if-nez p3, :cond_d

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_8

    const-string p1, ""

    .line 61
    :cond_8
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBusiness;->getPathField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getPathField"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getRunModeField$default(Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBusiness;IILjava/lang/Object;)I
    .registers 4

    if-nez p3, :cond_c

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    .line 36
    :cond_7
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBusiness;->getRunModeField(I)I

    move-result p0

    return p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getRunModeField"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic hasChangedFieldAndTrue$default(Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBusiness;ZILjava/lang/Object;)Z
    .registers 4

    if-nez p3, :cond_c

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_7

    const/4 p1, 0x1

    .line 69
    :cond_7
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBusiness;->hasChangedFieldAndTrue(Z)Z

    move-result p0

    return p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: hasChangedFieldAndTrue"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getAdditionField()Ljava/lang/String;
    .registers 2

    const-string v0, "addition"

    .line 46
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultCommon;->getJSONObjectField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public final getContentField()Ljava/lang/String;
    .registers 2

    const-string v0, "content"

    .line 50
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultCommon;->getJSONObjectField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    :cond_e
    const-string v0, ""

    :cond_10
    return-object v0
.end method

.method public final getDataUrlField()Ljava/lang/String;
    .registers 2

    const-string v0, "dataURL"

    .line 29
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultCommon;->getJSONObjectField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public final getEmptyField()Z
    .registers 2

    const-string v0, "empty"

    .line 54
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultCommon;->getJSONObjectField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getFailReason(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "default"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail_reason"

    .line 13
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultCommon;->getJSONObjectField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_15

    :cond_14
    move-object p1, v0

    :cond_15
    :goto_15
    return-object p1
.end method

.method public final getKeyboardType()Ljava/lang/String;
    .registers 2

    const-string v0, "keyboardType"

    .line 25
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultCommon;->getJSONObjectField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public final getPathField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "default"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    .line 62
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultCommon;->getJSONObjectField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_15

    :cond_14
    move-object p1, v0

    :cond_15
    :goto_15
    return-object p1
.end method

.method public final getRunModeField(I)I
    .registers 3

    :try_start_0
    const-string v0, "run_mode"

    .line 38
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultCommon;->getJSONObjectField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_12

    :catch_12
    :cond_12
    return p1
.end method

.method public final getSuccessField()Z
    .registers 2

    const-string v0, "success"

    .line 66
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultCommon;->getBooleanField(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getTimeLimitField()Ljava/lang/Double;
    .registers 2

    const-string v0, "timeLimit"

    .line 77
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultCommon;->getJSONObjectField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVisibleField()Z
    .registers 2

    const-string v0, "visible"

    .line 58
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultCommon;->getJSONObjectField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final hasChangedField()Z
    .registers 2

    const-string v0, "changed"

    .line 17
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultCommon;->hasJSONObjectField$toolssdk_release(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final hasChangedFieldAndTrue(Z)Z
    .registers 3

    const-string v0, "changed"

    .line 70
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultCommon;->getJSONObjectField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :cond_12
    return p1
.end method

.method public final hasIsSuccessStringAndTrue()Z
    .registers 3

    const-string v0, "is_success"

    .line 6
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultCommon;->getJSONObjectField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public final hasVisibleField()Z
    .registers 2

    const-string v0, "visible"

    .line 21
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultCommon;->hasJSONObjectField$toolssdk_release(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isImageBase64(Ljava/lang/String;)Z
    .registers 6

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data:image/png;base64,"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 33
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    return p1
.end method
