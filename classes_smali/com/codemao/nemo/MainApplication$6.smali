.class Lcom/codemao/nemo/MainApplication$6;
.super Ljava/lang/Object;
.source "MainApplication.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/MainApplication;->initOkhttp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/codemao/nemo/MainApplication;)V
    .registers 2

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 487
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "test-authorization="

    goto :goto_46

    .line 489
    :cond_11
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dev"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "dev-authorization="

    goto :goto_46

    .line 491
    :cond_22
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "release"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "authorization="

    goto :goto_46

    .line 493
    :cond_33
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "staging"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "staging-authorization="

    goto :goto_46

    :cond_44
    const-string v0, ""

    .line 497
    :goto_46
    :try_start_46
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v1

    .line 498
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "X-CodeMao-Mobile-Requested"

    .line 499
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getHeaderStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 500
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9a

    const-string v3, "upload.qiniup.com"

    .line 501
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7e

    const-string v2, "authorization"

    .line 502
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_7e
    const-string v2, "cookie"

    .line 504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 506
    :cond_9a
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 507
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_a2} :catch_a3

    return-object p1

    .line 511
    :catch_a3
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
