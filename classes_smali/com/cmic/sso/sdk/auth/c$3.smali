.class Lcom/cmic/sso/sdk/auth/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/sso/sdk/auth/c;->callBackResult(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/auth/TokenListener;

.field final synthetic b:I

.field final synthetic c:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/auth/c;Lcom/cmic/sso/sdk/auth/TokenListener;ILorg/json/JSONObject;)V
    .registers 5

    iput-object p2, p0, Lcom/cmic/sso/sdk/auth/c$3;->a:Lcom/cmic/sso/sdk/auth/TokenListener;

    iput p3, p0, Lcom/cmic/sso/sdk/auth/c$3;->b:I

    iput-object p4, p0, Lcom/cmic/sso/sdk/auth/c$3;->c:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/c$3;->a:Lcom/cmic/sso/sdk/auth/TokenListener;

    iget v1, p0, Lcom/cmic/sso/sdk/auth/c$3;->b:I

    iget-object v2, p0, Lcom/cmic/sso/sdk/auth/c$3;->c:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/cmic/sso/sdk/auth/TokenListener;->onGetTokenComplete(ILorg/json/JSONObject;)V

    return-void
.end method
