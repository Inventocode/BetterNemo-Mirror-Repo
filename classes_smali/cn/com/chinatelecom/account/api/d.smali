.class final Lcn/com/chinatelecom/account/api/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcn/com/chinatelecom/account/api/ResultListener;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcn/com/chinatelecom/account/api/ResultListener;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/d;->a:Lcn/com/chinatelecom/account/api/ResultListener;

    iput-object p2, p0, Lcn/com/chinatelecom/account/api/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/chinatelecom/account/api/d;->c:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/d;->a:Lcn/com/chinatelecom/account/api/ResultListener;

    if-eqz v0, :cond_24

    :try_start_4
    iget-object v0, p0, Lcn/com/chinatelecom/account/api/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcn/com/chinatelecom/account/api/d;->c:Lorg/json/JSONObject;

    const-string v2, "reqId"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f
    iget-object v0, p0, Lcn/com/chinatelecom/account/api/d;->a:Lcn/com/chinatelecom/account/api/ResultListener;

    iget-object v1, p0, Lcn/com/chinatelecom/account/api/d;->c:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/com/chinatelecom/account/api/ResultListener;->onResult(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1f
    iget-object v0, p0, Lcn/com/chinatelecom/account/api/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/e/f;->c(Ljava/lang/String;)V

    :cond_24
    return-void
.end method
