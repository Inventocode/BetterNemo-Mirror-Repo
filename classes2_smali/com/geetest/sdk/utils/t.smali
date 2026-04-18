.class public Lcom/geetest/sdk/utils/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/geetest/sdk/utils/t;->c:[Ljava/lang/String;

    .line 3
    array-length p1, p1

    iput p1, p0, Lcom/geetest/sdk/utils/t;->a:I

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_2
    iget v2, p0, Lcom/geetest/sdk/utils/t;->a:I

    if-ge v1, v2, :cond_38

    .line 3
    iget-object v2, p0, Lcom/geetest/sdk/utils/t;->c:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget v2, p0, Lcom/geetest/sdk/utils/t;->a:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_35

    .line 4
    iget-object v2, p0, Lcom/geetest/sdk/utils/t;->c:[Ljava/lang/String;

    aget-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    aget-object v2, v2, v1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v2, p0, Lcom/geetest/sdk/utils/t;->c:[Ljava/lang/String;

    aget-object v1, v2, v1

    const-string v2, "/"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_32

    .line 7
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_32
    iput-object v1, p0, Lcom/geetest/sdk/utils/t;->b:Ljava/lang/String;

    return-object p1

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_38
    return-object p1
.end method

.method private a(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;)Lokhttp3/Response;
    .registers 3

    .line 1
    :try_start_0
    invoke-interface {p1, p2}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    const/4 p1, 0x0

    :goto_6
    return-object p1
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/geetest/sdk/utils/t;->a(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/ajax.php?gt="

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    return-object v1

    :cond_19
    const/4 v3, 0x0

    :goto_1a
    if-eqz v1, :cond_22

    .line 10
    invoke-virtual {v1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v4

    if-nez v4, :cond_45

    :cond_22
    iget v4, p0, Lcom/geetest/sdk/utils/t;->a:I

    if-ge v3, v4, :cond_45

    .line 12
    invoke-direct {p0, v2}, Lcom/geetest/sdk/utils/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v1

    iget-object v4, p0, Lcom/geetest/sdk/utils/t;->b:Ljava/lang/String;

    const-string v5, "Host"

    invoke-virtual {v1, v5, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    .line 15
    invoke-direct {p0, p1, v1}, Lcom/geetest/sdk/utils/t;->a(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    goto :goto_1a

    :cond_45
    if-eqz v1, :cond_48

    return-object v1

    .line 18
    :cond_48
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method
