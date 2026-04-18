.class public Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;
.super Ljava/lang/Object;
.source "ServerUrl.java"


# instance fields
.field private baseUrl:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private project:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    const-string v0, "default"

    const-string v1, ""

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->url:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_90

    .line 37
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->baseUrl:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 40
    :try_start_19
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->host:Ljava/lang/String;

    const-string v2, "token"

    .line 41
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->token:Ljava/lang/String;

    const-string v2, "project"

    .line 42
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->project:Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2f} :catch_4e
    .catchall {:try_start_19 .. :try_end_2f} :catchall_4c

    .line 46
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->host:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 47
    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->host:Ljava/lang/String;

    .line 49
    :cond_39
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->project:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 50
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->project:Ljava/lang/String;

    .line 52
    :cond_43
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->token:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_90

    goto :goto_6e

    :catchall_4c
    move-exception p1

    goto :goto_71

    :catch_4e
    move-exception p1

    .line 44
    :try_start_4f
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_4c

    .line 46
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->host:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 47
    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->host:Ljava/lang/String;

    .line 49
    :cond_5c
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->project:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 50
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->project:Ljava/lang/String;

    .line 52
    :cond_66
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->token:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_90

    .line 53
    :goto_6e
    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->token:Ljava/lang/String;

    goto :goto_90

    .line 46
    :goto_71
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->host:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 47
    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->host:Ljava/lang/String;

    .line 49
    :cond_7b
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->project:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 50
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->project:Ljava/lang/String;

    .line 52
    :cond_85
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 53
    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->token:Ljava/lang/String;

    .line 55
    :cond_8f
    throw p1

    :cond_90
    :goto_90
    return-void
.end method


# virtual methods
.method public check(Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;)Z
    .registers 4

    if-eqz p1, :cond_24

    .line 91
    :try_start_2
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 92
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->getProject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->getProject()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_20

    if-eqz p1, :cond_24

    const/4 p1, 0x1

    return p1

    :catch_20
    move-exception p1

    .line 97
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method public getBaseUrl()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "/"

    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    const/4 v1, 0x0

    .line 112
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_15
    const-string p1, ""

    return-object p1
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getProject()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->project:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",baseUrl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",project="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->project:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
