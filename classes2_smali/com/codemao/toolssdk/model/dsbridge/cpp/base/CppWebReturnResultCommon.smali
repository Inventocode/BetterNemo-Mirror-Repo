.class public Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultCommon;
.super Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;
.source "CppWebReturnResultCommon.kt"


# instance fields
.field private otherResponseSuccess:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultCommon;->otherResponseSuccess:Z

    return-void
.end method


# virtual methods
.method public changeResponseSuccess$toolssdk_release(Z)V
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultCommon;->otherResponseSuccess:Z

    return-void
.end method

.method public final getBooleanField(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultCommon;->getJSONObjectField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 35
    :try_start_9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_12

    return p1

    .line 37
    :catch_12
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "获取boolean字段异常"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dJsCall(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getFromJsonData$toolssdk_release(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->getSuccessOriginData()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return-object v1

    .line 62
    :cond_d
    :try_start_d
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->getSuccessOriginData()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1e} :catch_1f

    return-object p1

    .line 64
    :catch_1f
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "解析web返回的数据异常:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->getSuccessOriginData()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dJsCall(Ljava/lang/String;)V

    return-object v1
.end method

.method public getJSONObjectField(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultCommon;->hasJSONObjectField$toolssdk_release(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 44
    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->getSuccessOriginData()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :cond_16
    return-object v1
.end method

.method public getSuccessData(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->getSuccessOriginData()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return-object v1

    .line 16
    :cond_d
    :try_start_d
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->getSuccessOriginData()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1e} :catch_1f

    return-object p1

    :catch_1f
    move-exception p1

    .line 18
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "解析web返回的数据异常:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->getSuccessOriginData()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJsCall(Ljava/lang/String;)V

    return-object v1
.end method

.method public getSuccessDataToString$toolssdk_release()Ljava/lang/String;
    .registers 2

    .line 54
    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->getSuccessOriginData()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public hasJSONObjectField$toolssdk_release(Ljava/lang/String;)Z
    .registers 5

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->getSuccessOriginData()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public isOtherResponseSuccess$toolssdk_release()Z
    .registers 2

    .line 25
    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultCommon;->otherResponseSuccess:Z

    return v0
.end method
