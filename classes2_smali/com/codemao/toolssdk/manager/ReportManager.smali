.class public final Lcom/codemao/toolssdk/manager/ReportManager;
.super Ljava/lang/Object;
.source "ReportManager.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

.field private static final gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/manager/ReportManager;

    invoke-direct {v0}, Lcom/codemao/toolssdk/manager/ReportManager;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/manager/ReportManager;->INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

    .line 20
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/manager/ReportManager;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final exceptionToString(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_5

    const-string p1, ""

    return-object p1

    .line 80
    :cond_5
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 81
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 82
    invoke-virtual {p1, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 83
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "stringWriter.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static synthetic sendCollectionReport$default(Lcom/codemao/toolssdk/manager/ReportManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 51
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/manager/ReportManager;->sendCollectionReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final sendCollectionReport(Ljava/lang/String;)V
    .registers 9

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getCommonReportData()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/codemao/toolssdk/manager/ReportManager;->sendCollectionReport$default(Lcom/codemao/toolssdk/manager/ReportManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final sendCollectionReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/codemao/toolssdk/evolving/CMToolsManager2;->Companion:Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->getEnableAliReport()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 55
    :cond_e
    new-instance v0, Lcom/codemao/toolssdk/model/http/CommonErrorData;

    invoke-direct {v0}, Lcom/codemao/toolssdk/model/http/CommonErrorData;-><init>()V

    .line 56
    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/http/CommonErrorData;->getB()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/codemao/toolssdk/model/http/CommonErrorBody;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3, p3}, Lcom/codemao/toolssdk/model/http/CommonErrorBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance p1, Lcom/codemao/toolssdk/model/http/CommonErrorLog;

    invoke-direct {p1, v0}, Lcom/codemao/toolssdk/model/http/CommonErrorLog;-><init>(Lcom/codemao/toolssdk/model/http/CommonErrorData;)V

    .line 58
    sget-object p2, Lcom/codemao/toolssdk/manager/ReportManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 59
    sget-object p2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    const-string p3, "toJson"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lcom/codemao/toolssdk/manager/HttpClientManager;->INSTANCE:Lcom/codemao/toolssdk/manager/HttpClientManager;

    invoke-virtual {p3}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getJSON()Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 60
    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    const-string v0, "https://collection.codemao.cn/report/sysinfo"

    .line 61
    invoke-virtual {p2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 62
    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 64
    invoke-virtual {p3}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getClient()Lokhttp3/OkHttpClient;

    move-result-object p2

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 65
    new-instance p2, Lcom/codemao/toolssdk/manager/ReportManager$sendCollectionReport$1;

    invoke-direct {p2}, Lcom/codemao/toolssdk/manager/ReportManager$sendCollectionReport$1;-><init>()V

    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public final sendErrorReport(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 8

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 26
    :cond_e
    new-instance v0, Lcom/codemao/toolssdk/model/http/CommonErrorData;

    invoke-direct {v0}, Lcom/codemao/toolssdk/model/http/CommonErrorData;-><init>()V

    .line 27
    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/http/CommonErrorData;->getB()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/codemao/toolssdk/model/http/CommonErrorBody;

    const/4 v3, 0x0

    if-eqz p2, :cond_21

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_22

    :cond_21
    move-object v4, v3

    :goto_22
    invoke-direct {p0, p2}, Lcom/codemao/toolssdk/manager/ReportManager;->exceptionToString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p1, v4, p2, v3}, Lcom/codemao/toolssdk/model/http/CommonErrorBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance p1, Lcom/codemao/toolssdk/model/http/CommonErrorLog;

    invoke-direct {p1, v0}, Lcom/codemao/toolssdk/model/http/CommonErrorLog;-><init>(Lcom/codemao/toolssdk/model/http/CommonErrorData;)V

    .line 29
    sget-object p2, Lcom/codemao/toolssdk/manager/ReportManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 30
    sget-object p2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    const-string v0, "toJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/codemao/toolssdk/manager/HttpClientManager;->INSTANCE:Lcom/codemao/toolssdk/manager/HttpClientManager;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getJSON()Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 31
    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    const-string v1, "https://collection.codemao.cn/report/sysinfo"

    .line 32
    invoke-virtual {p2, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 33
    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 35
    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getClient()Lokhttp3/OkHttpClient;

    move-result-object p2

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 36
    new-instance p2, Lcom/codemao/toolssdk/manager/ReportManager$sendErrorReport$1;

    invoke-direct {p2}, Lcom/codemao/toolssdk/manager/ReportManager$sendErrorReport$1;-><init>()V

    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method
