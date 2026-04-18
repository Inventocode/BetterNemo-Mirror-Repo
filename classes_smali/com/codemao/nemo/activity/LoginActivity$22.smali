.class Lcom/codemao/nemo/activity/LoginActivity$22;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LoginActivity;->fetchUserRegisterInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/retrofit/response/CommonSubcriber<",
        "Lcom/codemao/nemo/bean/UserRegisterInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/LoginActivity;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LoginActivity;Ljava/lang/String;)V
    .registers 3

    .line 1085
    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$22;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    iput-object p2, p0, Lcom/codemao/nemo/activity/LoginActivity$22;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1103
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$22;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    iget-object p2, p0, Lcom/codemao/nemo/activity/LoginActivity$22;->val$type:Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/codemao/nemo/activity/LoginActivity;->access$1600(Lcom/codemao/nemo/activity/LoginActivity;Ljava/lang/String;J)V

    .line 1104
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$22;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/LoginActivity;->access$1700(Lcom/codemao/nemo/activity/LoginActivity;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 1105
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$22;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    iget-object p2, p0, Lcom/codemao/nemo/activity/LoginActivity$22;->val$type:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/codemao/nemo/activity/LoginActivity;->access$1800(Lcom/codemao/nemo/activity/LoginActivity;Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-string p1, ""

    .line 1111
    invoke-virtual {p0, p1, p1}, Lcom/codemao/nemo/activity/LoginActivity$22;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/codemao/nemo/bean/UserRegisterInfo;)V
    .registers 8

    .line 1088
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserRegisterInfo;->getRegisterTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_21

    .line 1089
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$22;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$22;->val$type:Ljava/lang/String;

    invoke-static {p1, v0, v2, v3}, Lcom/codemao/nemo/activity/LoginActivity;->access$1600(Lcom/codemao/nemo/activity/LoginActivity;Ljava/lang/String;J)V

    .line 1090
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$22;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/LoginActivity;->access$1700(Lcom/codemao/nemo/activity/LoginActivity;)Z

    move-result p1

    if-nez p1, :cond_20

    .line 1091
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$22;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$22;->val$type:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/LoginActivity;->access$1800(Lcom/codemao/nemo/activity/LoginActivity;Ljava/lang/String;)V

    :cond_20
    return-void

    .line 1095
    :cond_21
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$22;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    iget-object v1, p0, Lcom/codemao/nemo/activity/LoginActivity$22;->val$type:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserRegisterInfo;->getRegisterTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/codemao/nemo/activity/LoginActivity;->access$1600(Lcom/codemao/nemo/activity/LoginActivity;Ljava/lang/String;J)V

    .line 1096
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$22;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/LoginActivity;->access$1700(Lcom/codemao/nemo/activity/LoginActivity;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 1097
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$22;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$22;->val$type:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/LoginActivity;->access$1800(Lcom/codemao/nemo/activity/LoginActivity;Ljava/lang/String;)V

    :cond_3f
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 1085
    check-cast p1, Lcom/codemao/nemo/bean/UserRegisterInfo;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/LoginActivity$22;->onSuccess(Lcom/codemao/nemo/bean/UserRegisterInfo;)V

    return-void
.end method
