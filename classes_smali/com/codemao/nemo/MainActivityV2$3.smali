.class Lcom/codemao/nemo/MainActivityV2$3;
.super Lcom/codemao/nemo/http/LocalNetCallBack;
.source "MainActivityV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/MainActivityV2;->checkPolicy(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBack<",
        "Lcom/codemao/nemo/retrofit/response/RespCheckPolicy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/MainActivityV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/MainActivityV2;)V
    .registers 2

    .line 460
    iput-object p1, p0, Lcom/codemao/nemo/MainActivityV2$3;->this$0:Lcom/codemao/nemo/MainActivityV2;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 468
    iget-object p1, p0, Lcom/codemao/nemo/MainActivityV2$3;->this$0:Lcom/codemao/nemo/MainActivityV2;

    invoke-static {p1}, Lcom/codemao/nemo/MainActivityV2;->access$300(Lcom/codemao/nemo/MainActivityV2;)V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/retrofit/response/RespCheckPolicy;)V
    .registers 3

    .line 463
    iget-object v0, p0, Lcom/codemao/nemo/MainActivityV2$3;->this$0:Lcom/codemao/nemo/MainActivityV2;

    iget-boolean p1, p1, Lcom/codemao/nemo/retrofit/response/RespCheckPolicy;->agreed_enable:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/codemao/nemo/MainActivityV2;->access$200(Lcom/codemao/nemo/MainActivityV2;Z)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 460
    check-cast p1, Lcom/codemao/nemo/retrofit/response/RespCheckPolicy;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/MainActivityV2$3;->onSuc(Lcom/codemao/nemo/retrofit/response/RespCheckPolicy;)V

    return-void
.end method
