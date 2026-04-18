.class Lcom/codemao/nemo/activity/LoginActivity$19;
.super Lcom/codemao/nemo/http/LocalNetCallBack;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LoginActivity;->checkPrivacy(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/codemao/nemo/activity/LoginActivity;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LoginActivity;Ljava/lang/String;)V
    .registers 3

    .line 978
    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$19;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    iput-object p2, p0, Lcom/codemao/nemo/activity/LoginActivity$19;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 986
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$19;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    iget-object p2, p0, Lcom/codemao/nemo/activity/LoginActivity$19;->val$type:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, v0}, Lcom/codemao/nemo/activity/LoginActivity;->access$1300(Lcom/codemao/nemo/activity/LoginActivity;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/retrofit/response/RespCheckPolicy;)V
    .registers 5

    .line 981
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$19;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    iget-object v1, p0, Lcom/codemao/nemo/activity/LoginActivity$19;->val$type:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/codemao/nemo/retrofit/response/RespCheckPolicy;->agreed_enable:Z

    xor-int/lit8 p1, p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/codemao/nemo/activity/LoginActivity;->access$1300(Lcom/codemao/nemo/activity/LoginActivity;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 978
    check-cast p1, Lcom/codemao/nemo/retrofit/response/RespCheckPolicy;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/LoginActivity$19;->onSuc(Lcom/codemao/nemo/retrofit/response/RespCheckPolicy;)V

    return-void
.end method
