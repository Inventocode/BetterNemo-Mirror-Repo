.class final Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$httpClient$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CTCdnGetToken.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lokhttp3/OkHttpClient;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$httpClient$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$httpClient$2;

    invoke-direct {v0}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$httpClient$2;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$httpClient$2;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$httpClient$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 23
    invoke-virtual {p0}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$httpClient$2;->invoke()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lokhttp3/OkHttpClient;
    .registers 2

    .line 23
    sget-object v0, Lcom/codemao/toolssdk/manager/HttpClientManager;->INSTANCE:Lcom/codemao/toolssdk/manager/HttpClientManager;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
