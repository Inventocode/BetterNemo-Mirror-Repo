.class public Lcom/readboy/personalsettingauth/util/RetryIntercepter;
.super Ljava/lang/Object;
.source "RetryIntercepter.java"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public maxRetry:I

.field private retryNum:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/readboy/personalsettingauth/util/RetryIntercepter;->retryNum:I

    .line 15
    iput p1, p0, Lcom/readboy/personalsettingauth/util/RetryIntercepter;->maxRetry:I

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 21
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    .line 22
    :goto_8
    invoke-virtual {v1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2

    if-nez v2, :cond_1d

    iget v2, p0, Lcom/readboy/personalsettingauth/util/RetryIntercepter;->retryNum:I

    iget v3, p0, Lcom/readboy/personalsettingauth/util/RetryIntercepter;->maxRetry:I

    if-ge v2, v3, :cond_1d

    add-int/lit8 v2, v2, 0x1

    .line 23
    iput v2, p0, Lcom/readboy/personalsettingauth/util/RetryIntercepter;->retryNum:I

    .line 24
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    goto :goto_8

    :cond_1d
    return-object v1
.end method
