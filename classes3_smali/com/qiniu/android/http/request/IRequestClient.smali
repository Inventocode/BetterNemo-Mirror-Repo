.class public interface abstract Lcom/qiniu/android/http/request/IRequestClient;
.super Ljava/lang/Object;
.source "IRequestClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/http/request/IRequestClient$RequestClientCompleteHandler;,
        Lcom/qiniu/android/http/request/IRequestClient$RequestClientProgress;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract request(Lcom/qiniu/android/http/request/Request;ZLcom/qiniu/android/http/ProxyConfiguration;Lcom/qiniu/android/http/request/IRequestClient$RequestClientProgress;Lcom/qiniu/android/http/request/IRequestClient$RequestClientCompleteHandler;)V
.end method
