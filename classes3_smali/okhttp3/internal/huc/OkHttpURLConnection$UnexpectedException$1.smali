.class final Lokhttp3/internal/huc/OkHttpURLConnection$UnexpectedException$1;
.super Ljava/lang/Object;
.source "OkHttpURLConnection.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/huc/OkHttpURLConnection$UnexpectedException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 582
    :try_start_0
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_8} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    goto :goto_c

    :catch_b
    move-exception p1

    .line 584
    :goto_c
    new-instance v0, Lokhttp3/internal/huc/OkHttpURLConnection$UnexpectedException;

    invoke-direct {v0, p1}, Lokhttp3/internal/huc/OkHttpURLConnection$UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
