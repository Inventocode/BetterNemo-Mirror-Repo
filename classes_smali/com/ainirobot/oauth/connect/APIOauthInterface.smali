.class public interface abstract Lcom/ainirobot/oauth/connect/APIOauthInterface;
.super Ljava/lang/Object;
.source "APIOauthInterface.java"


# virtual methods
.method public abstract getAuthCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "p_appid"
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "p_scope"
        .end annotation
    .end param
    .param p3  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "rsn"
        .end annotation
    .end param
    .param p4  # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/ainirobot/oauth/connect/ProtocolBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/capi/v1/rsdk/uc/oauth2/authorize"
    .end annotation
.end method
