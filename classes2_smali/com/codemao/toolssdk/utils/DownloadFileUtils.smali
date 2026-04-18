.class public final Lcom/codemao/toolssdk/utils/DownloadFileUtils;
.super Ljava/lang/Object;
.source "DownloadFileUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/utils/DownloadFileUtils;

.field private static final callList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation
.end field

.field private static isCanceled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/utils/DownloadFileUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/utils/DownloadFileUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/utils/DownloadFileUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/DownloadFileUtils;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/utils/DownloadFileUtils;->callList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCallList$p()Ljava/util/ArrayList;
    .registers 1

    .line 9
    sget-object v0, Lcom/codemao/toolssdk/utils/DownloadFileUtils;->callList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final synthetic access$isCanceled$p()Z
    .registers 1

    .line 9
    sget-boolean v0, Lcom/codemao/toolssdk/utils/DownloadFileUtils;->isCanceled:Z

    return v0
.end method


# virtual methods
.method public final downloadFile(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/File;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Exception;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "savePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 22
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 23
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Connection"

    const-string v3, "close"

    .line 24
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 27
    sget-object v1, Lcom/codemao/toolssdk/utils/DownloadFileUtils;->callList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v1, Lcom/codemao/toolssdk/utils/DownloadFileUtils$downloadFile$1;

    move-object v2, v1

    move-object v3, p5

    move-object v4, p2

    move-object v5, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/codemao/toolssdk/utils/DownloadFileUtils$downloadFile$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method
