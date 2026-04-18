.class Lcom/ainirobot/oauth/presenter/AuthPresenter$2;
.super Ljava/lang/Object;
.source "AuthPresenter.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ainirobot/oauth/presenter/AuthPresenter;->doLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/ainirobot/oauth/connect/ProtocolBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ainirobot/oauth/presenter/AuthPresenter;


# direct methods
.method constructor <init>(Lcom/ainirobot/oauth/presenter/AuthPresenter;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/ainirobot/oauth/presenter/AuthPresenter$2;->this$0:Lcom/ainirobot/oauth/presenter/AuthPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/ainirobot/oauth/connect/ProtocolBean;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 94
    iget-object p1, p0, Lcom/ainirobot/oauth/presenter/AuthPresenter$2;->this$0:Lcom/ainirobot/oauth/presenter/AuthPresenter;

    invoke-static {p1}, Lcom/ainirobot/oauth/presenter/AuthPresenter;->access$200(Lcom/ainirobot/oauth/presenter/AuthPresenter;)Lcom/ainirobot/oauth/contract/AuthContract$View;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/ainirobot/oauth/contract/AuthContract$View;->onFailed(Ljava/lang/String;Z)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/ainirobot/oauth/connect/ProtocolBean;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/ainirobot/oauth/connect/ProtocolBean;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ainirobot/oauth/connect/ProtocolBean;

    .line 81
    iget-object p2, p0, Lcom/ainirobot/oauth/presenter/AuthPresenter$2;->this$0:Lcom/ainirobot/oauth/presenter/AuthPresenter;

    invoke-static {p2, p1}, Lcom/ainirobot/oauth/presenter/AuthPresenter;->access$100(Lcom/ainirobot/oauth/presenter/AuthPresenter;Lcom/ainirobot/oauth/connect/ProtocolBean;)Z

    move-result p2

    if-eqz p2, :cond_21

    .line 82
    iget-object p2, p0, Lcom/ainirobot/oauth/presenter/AuthPresenter$2;->this$0:Lcom/ainirobot/oauth/presenter/AuthPresenter;

    invoke-static {p2}, Lcom/ainirobot/oauth/presenter/AuthPresenter;->access$200(Lcom/ainirobot/oauth/presenter/AuthPresenter;)Lcom/ainirobot/oauth/contract/AuthContract$View;

    move-result-object p2

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/ainirobot/oauth/contract/AuthContract$View;->onSuccess(Ljava/lang/String;)V

    goto :goto_41

    :cond_21
    const/4 p2, 0x0

    if-eqz p1, :cond_37

    .line 85
    iget-object v0, p0, Lcom/ainirobot/oauth/presenter/AuthPresenter$2;->this$0:Lcom/ainirobot/oauth/presenter/AuthPresenter;

    invoke-static {v0}, Lcom/ainirobot/oauth/presenter/AuthPresenter;->access$200(Lcom/ainirobot/oauth/presenter/AuthPresenter;)Lcom/ainirobot/oauth/contract/AuthContract$View;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/ainirobot/oauth/contract/AuthContract$View;->onFailed(Ljava/lang/String;Z)V

    goto :goto_41

    .line 87
    :cond_37
    iget-object p1, p0, Lcom/ainirobot/oauth/presenter/AuthPresenter$2;->this$0:Lcom/ainirobot/oauth/presenter/AuthPresenter;

    invoke-static {p1}, Lcom/ainirobot/oauth/presenter/AuthPresenter;->access$200(Lcom/ainirobot/oauth/presenter/AuthPresenter;)Lcom/ainirobot/oauth/contract/AuthContract$View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/ainirobot/oauth/contract/AuthContract$View;->onFailed(Ljava/lang/String;Z)V

    :goto_41
    return-void
.end method
