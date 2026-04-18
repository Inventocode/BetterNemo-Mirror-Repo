.class public final Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;
.super Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;
.source "NetworkJsApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetworkJsApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkJsApi.kt\ncom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,370:1\n211#2,2:371\n*S KotlinDebug\n*F\n+ 1 NetworkJsApi.kt\ncom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi\n*L\n254#1:371,2\n*E\n"
.end annotation


# instance fields
.field private volatile client:Lokhttp3/OkHttpClient;

.field private ctUpload:Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;

.field private final internalScope$delegate:Lkotlin/Lazy;

.field private final provider:Lcom/codemao/toolssdk/cpp/jsobjects/network/INetworkProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/cpp/jsobjects/network/INetworkProvider;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->provider:Lcom/codemao/toolssdk/cpp/jsobjects/network/INetworkProvider;

    .line 59
    new-instance p1, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;

    invoke-direct {p1}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->ctUpload:Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;

    .line 60
    sget-object p1, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$internalScope$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$internalScope$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->internalScope$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$deleteAgentFile(Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;Ljava/io/File;)Z
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->deleteAgentFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getCtUpload$p(Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;)Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->ctUpload:Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;

    return-object p0
.end method

.method public static final synthetic access$sendReport(Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;IZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)V
    .registers 7

    .line 41
    invoke-direct/range {p0 .. p6}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->sendReport(IZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method private final deleteAgentFile(Ljava/io/File;)Z
    .registers 2

    .line 357
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    :catch_5
    const/4 p1, 0x0

    return p1
.end method

.method private final getHeaders(Ljava/util/Map;)Lokhttp3/Headers;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Headers;"
        }
    .end annotation

    .line 252
    sget-object v0, Lcom/codemao/toolssdk/manager/HttpClientManager;->INSTANCE:Lcom/codemao/toolssdk/manager/HttpClientManager;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->provider:Lcom/codemao/toolssdk/cpp/jsobjects/network/INetworkProvider;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lcom/codemao/toolssdk/cpp/jsobjects/network/INetworkProvider;->getHeaderToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    :cond_c
    const-string v1, ""

    :cond_e
    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getNormalHeadersBuilder(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v0

    const-string v1, "requestFromNative"

    const-string v2, "Android"

    .line 253
    invoke-virtual {v0, v1, v2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    if-eqz p1, :cond_3f

    .line 211
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 255
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_23

    .line 257
    :cond_3f
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object p1

    return-object p1
.end method

.method private final getInternalScope()Lkotlinx/coroutines/CoroutineScope;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->internalScope$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method private final getRequest(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/Request;
    .registers 6

    .line 270
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 271
    invoke-virtual {v0, p2, p4}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 272
    invoke-virtual {v0, p3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 273
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 274
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method private final getRequestBody(Ljava/lang/String;)Lokhttp3/RequestBody;
    .registers 4

    if-eqz p1, :cond_f

    .line 261
    sget-object v0, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v1, Lcom/codemao/toolssdk/manager/HttpClientManager;->INSTANCE:Lcom/codemao/toolssdk/manager/HttpClientManager;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getJSON()Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return-object p1
.end method

.method private final sendReport(IZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)V
    .registers 31

    move/from16 v0, p1

    move-object/from16 v1, p0

    .line 306
    iget-object v2, v1, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->provider:Lcom/codemao/toolssdk/cpp/jsobjects/network/INetworkProvider;

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    invoke-interface {v2}, Lcom/codemao/toolssdk/cpp/jsobjects/network/INetworkProvider;->getWorkTypeAndEnterFrom()Lkotlin/Pair;

    move-result-object v2

    goto :goto_f

    :cond_e
    move-object v2, v3

    :goto_f
    const/4 v4, 0x1

    if-eq v0, v4, :cond_96

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6c

    const/4 v4, 0x3

    if-eq v0, v4, :cond_45

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1d

    goto/16 :goto_bd

    .line 341
    :cond_1d
    sget-object v5, Lcom/codemao/toolssdk/func/logevent/NetworkLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/NetworkLogEventUtils;

    if-eqz v2, :cond_29

    .line 344
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    goto :goto_2a

    :cond_29
    move-object v8, v3

    :goto_2a
    if-eqz v2, :cond_33

    .line 345
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    :cond_33
    move-object v9, v3

    const-string v6, "ct_sdk_agent_file_upload_trigger"

    move/from16 v7, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    .line 341
    invoke-virtual/range {v5 .. v13}, Lcom/codemao/toolssdk/func/logevent/NetworkLogEventUtils;->fileUpload(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)V

    goto/16 :goto_bd

    .line 319
    :cond_45
    sget-object v10, Lcom/codemao/toolssdk/func/logevent/NetworkLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/NetworkLogEventUtils;

    if-eqz v2, :cond_51

    .line 322
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    goto :goto_52

    :cond_51
    move-object v13, v3

    :goto_52
    if-eqz v2, :cond_5b

    .line 323
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    :cond_5b
    move-object v14, v3

    const-string v11, "ct_sdk_agent_json_fetch_trigger"

    move/from16 v12, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    .line 319
    invoke-virtual/range {v10 .. v18}, Lcom/codemao/toolssdk/func/logevent/NetworkLogEventUtils;->jsonFetch(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)V

    goto :goto_bd

    .line 330
    :cond_6c
    sget-object v15, Lcom/codemao/toolssdk/func/logevent/NetworkLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/NetworkLogEventUtils;

    if-eqz v2, :cond_79

    .line 333
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v18, v0

    goto :goto_7b

    :cond_79
    move-object/from16 v18, v3

    :goto_7b
    if-eqz v2, :cond_84

    .line 334
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    :cond_84
    move-object/from16 v19, v3

    const-string v16, "ct_sdk_agent_file_upload"

    move/from16 v17, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move-object/from16 v23, p6

    .line 330
    invoke-virtual/range {v15 .. v23}, Lcom/codemao/toolssdk/func/logevent/NetworkLogEventUtils;->fileUpload(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)V

    goto :goto_bd

    .line 308
    :cond_96
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/NetworkLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/NetworkLogEventUtils;

    if-eqz v2, :cond_a2

    .line 311
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v5, v4

    goto :goto_a3

    :cond_a2
    move-object v5, v3

    :goto_a3
    if-eqz v2, :cond_ac

    .line 312
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    :cond_ac
    move-object v6, v3

    const-string v3, "ct_sdk_agent_json_fetch"

    move-object v2, v0

    move/from16 v4, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 308
    invoke-virtual/range {v2 .. v10}, Lcom/codemao/toolssdk/func/logevent/NetworkLogEventUtils;->jsonFetch(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)V

    :goto_bd
    return-void
.end method

.method private final setupClient()V
    .registers 5

    .line 278
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->client:Lokhttp3/OkHttpClient;

    if-eqz v0, :cond_5

    return-void

    .line 281
    :cond_5
    monitor-enter p0

    .line 282
    :try_start_6
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->client:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_32

    sget-object v0, Lcom/codemao/toolssdk/manager/HttpClientManager;->INSTANCE:Lcom/codemao/toolssdk/manager/HttpClientManager;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v1, 0xa

    .line 283
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 285
    sget-object v1, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;->Companion:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;->getOkHttpDns()Lokhttp3/Dns;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 286
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v3, "为okhttp设置dns2"

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/utils/ExtLog;->dSDK(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 290
    :cond_2e
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 282
    :cond_32
    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->client:Lokhttp3/OkHttpClient;

    .line 291
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_38

    .line 281
    monitor-exit p0

    return-void

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final fileUpload(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 29
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    const-string v1, "msg"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "handler"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;->gson()Lcom/google/gson/Gson;

    move-result-object v1

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;

    .line 107
    sget-object v9, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "web通知原生发起文件上传:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x2c

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->dCdnUpload(Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->sendReport(IZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v7}, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->avaliable()Z

    move-result v0

    if-nez v0, :cond_c1

    .line 110
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;

    const/16 v2, 0x258

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "数据不可用:"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 111
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v2, 0x1c0d

    invoke-direct {v1, v2, v0}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;->gson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->availableDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 114
    invoke-virtual {v7}, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->sendReport(IZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v9, v8}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dNetWorkAgent(Ljava/lang/String;)V

    return-void

    .line 118
    :cond_c1
    iget-object v0, v14, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->provider:Lcom/codemao/toolssdk/cpp/jsobjects/network/INetworkProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_cb

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/network/INetworkProvider;->getWorkTypeAndEnterFrom()Lkotlin/Pair;

    move-result-object v0

    goto :goto_cc

    :cond_cb
    move-object v0, v1

    :goto_cc
    if-eqz v0, :cond_d5

    .line 119
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_d6

    :cond_d5
    move-object v2, v1

    :goto_d6
    const-string v3, "TANYUE_KN"

    .line 120
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "PYTHON"

    const/4 v6, 0x1

    if-eqz v4, :cond_e3

    const/4 v2, 0x1

    goto :goto_e7

    :cond_e3
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_e7
    if-eqz v2, :cond_eb

    const/4 v9, 0x1

    goto :goto_f2

    .line 121
    :cond_eb
    sget-object v2, Lcom/codemao/toolssdk/evolving/android/upload/CTConstUploadFile;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/upload/CTConstUploadFile;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/evolving/android/upload/CTConstUploadFile;->getTestAli()Z

    move-result v2

    move v9, v2

    :goto_f2
    if-eqz v0, :cond_fb

    .line 123
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_fb
    if-eqz v1, :cond_12c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, -0x726edb24

    if-eq v0, v2, :cond_122

    const v2, -0x3e8b3886

    if-eq v0, v2, :cond_119

    const/16 v2, 0x963

    if-eq v0, v2, :cond_110

    goto :goto_12c

    :cond_110
    const-string v0, "KN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11f

    goto :goto_12c

    :cond_119
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12c

    :cond_11f
    const-string v0, "neko"

    goto :goto_12e

    :cond_122
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_129

    goto :goto_12c

    :cond_129
    const-string v0, "turtle"

    goto :goto_12e

    :cond_12c
    :goto_12c
    const-string v0, "nemo_android_ios"

    :goto_12e
    move-object v4, v0

    .line 129
    :try_start_12f
    iget-object v0, v14, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->provider:Lcom/codemao/toolssdk/cpp/jsobjects/network/INetworkProvider;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/network/INetworkProvider;->getUploadCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_138} :catch_139

    goto :goto_13d

    .line 131
    :catch_139
    invoke-direct/range {p0 .. p0}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->getInternalScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    :goto_13d
    move-object/from16 v21, v0

    .line 133
    new-instance v13, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 135
    invoke-virtual {v7}, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->getKey()Ljava/lang/String;

    move-result-object v22

    .line 136
    iget-object v0, v14, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->provider:Lcom/codemao/toolssdk/cpp/jsobjects/network/INetworkProvider;

    const-string v1, ""

    if-eqz v0, :cond_157

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/network/INetworkProvider;->getHeaderToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_155

    goto :goto_157

    :cond_155
    move-object v2, v0

    goto :goto_158

    :cond_157
    :goto_157
    move-object v2, v1

    .line 137
    :goto_158
    invoke-virtual {v7}, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->toCdnToken()Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;

    move-result-object v3

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 139
    invoke-virtual {v7}, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->getText()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    if-eqz v0, :cond_170

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_16e

    goto :goto_170

    :cond_16e
    const/4 v0, 0x0

    goto :goto_171

    :cond_170
    :goto_170
    const/4 v0, 0x1

    :goto_171
    if-nez v0, :cond_199

    .line 140
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v16

    const/16 v17, 0x0

    new-instance v18, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;

    const/4 v12, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v5, v7

    move v6, v9

    move-object v7, v13

    move-object/from16 v8, p2

    move-object/from16 v9, v22

    move-wide/from16 v10, v23

    invoke-direct/range {v0 .. v12}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;Ljava/lang/String;Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;ZLkotlin/jvm/internal/Ref$BooleanRef;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V

    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object/from16 v15, v21

    invoke-static/range {v15 .. v20}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_195
    move-object/from16 v25, v13

    goto/16 :goto_267

    .line 182
    :cond_199
    invoke-virtual {v7}, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->getDataUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a1

    const-string v0, "empty"

    .line 184
    :cond_1a1
    sget-object v11, Lcom/codemao/toolssdk/cpp/util/Base64Utils;->INSTANCE:Lcom/codemao/toolssdk/cpp/util/Base64Utils;

    iget-object v12, v14, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->provider:Lcom/codemao/toolssdk/cpp/jsobjects/network/INetworkProvider;

    if-eqz v12, :cond_1af

    invoke-interface {v12}, Lcom/codemao/toolssdk/cpp/jsobjects/network/INetworkProvider;->getAgentCacheDir()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1ae

    goto :goto_1af

    :cond_1ae
    move-object v1, v12

    :cond_1af
    :goto_1af
    invoke-virtual {v11, v0, v1}, Lcom/codemao/toolssdk/cpp/util/Base64Utils;->saveBase64ToFile(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v11

    .line 185
    invoke-virtual {v11}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_22d

    .line 186
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;

    const/16 v16, 0x258

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x0

    const-string v17, "base64转文件失败"

    move-object v15, v1

    invoke-direct/range {v15 .. v20}, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 187
    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v3, 0x1c0e

    invoke-direct {v2, v3, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 188
    iput-boolean v6, v13, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;->gson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 190
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x16

    if-le v1, v2, :cond_1f1

    const/16 v1, 0x15

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1f2

    :cond_1f1
    move-object v1, v0

    .line 191
    :goto_1f2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "base64转文件失败,size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 192
    invoke-virtual {v7}, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->sendReport(IZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)V

    .line 193
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    invoke-virtual {v0, v8}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->dCdnUpload(Ljava/lang/String;)V

    return-void

    .line 196
    :cond_22d
    invoke-virtual {v11}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 197
    iget-object v0, v14, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->provider:Lcom/codemao/toolssdk/cpp/jsobjects/network/INetworkProvider;

    if-eqz v0, :cond_195

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/network/INetworkProvider;->getUploadCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v15

    if-eqz v15, :cond_195

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-instance v18, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move v6, v9

    move-object v7, v13

    move-object/from16 v8, p2

    move-object v9, v11

    move-object/from16 v10, v22

    move-wide/from16 v11, v23

    move-object/from16 v25, v13

    move-object/from16 v13, v19

    invoke-direct/range {v0 .. v13}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;Ljava/lang/String;Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/internal/Ref$BooleanRef;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lkotlin/Pair;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V

    const/16 v19, 0x3

    const/16 v20, 0x0

    invoke-static/range {v15 .. v20}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 241
    :goto_267
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v16

    const/16 v17, 0x0

    new-instance v18, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$3;

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, p0

    move-object/from16 v3, v22

    move-wide/from16 v4, v23

    invoke-direct/range {v0 .. v6}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$3;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V

    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object/from16 v15, v21

    invoke-static/range {v15 .. v20}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final jsonFetch(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 15
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;->gson()Lcom/google/gson/Gson;

    move-result-object v0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentData;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentData;

    .line 65
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "web通知原生发起请求代理:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dNetWorkAgent(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentData;->getUrl()Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->sendReport(IZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentData;->avaliable()Z

    move-result v0

    if-nez v0, :cond_97

    .line 68
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x1c0c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "数据不可用:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 69
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;->gson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 70
    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentData;->getUrl()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->sendReport(IZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)V

    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dNetWorkAgent(Ljava/lang/String;)V

    return-void

    .line 74
    :cond_97
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->setupClient()V

    .line 76
    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentData;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a2

    const-string p1, ""

    .line 77
    :cond_a2
    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentData;->getSafeMethod()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentData;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->getHeaders(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object v1

    .line 79
    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentData;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->getRequestBody(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 75
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->getRequest(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object p1

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 82
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->client:Lokhttp3/OkHttpClient;

    if-eqz v0, :cond_d3

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    if-eqz p1, :cond_d3

    new-instance v6, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$jsonFetch$1;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$jsonFetch$1;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentData;J)V

    invoke-interface {p1, v6}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    :cond_d3
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .line 364
    invoke-super {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;->onDestroy()V

    .line 365
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->getInternalScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 366
    iput-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->client:Lokhttp3/OkHttpClient;

    .line 367
    iput-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->ctUpload:Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;

    return-void
.end method
