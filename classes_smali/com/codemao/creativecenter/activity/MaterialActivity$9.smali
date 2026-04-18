.class Lcom/codemao/creativecenter/activity/MaterialActivity$9;
.super Ljava/lang/Object;
.source "MaterialActivity.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$PermissionCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/MaterialActivity;->clickAlubm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/activity/MaterialActivity;)V
    .registers 2

    .line 1094
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$9;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAgree()V
    .registers 3

    .line 1102
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$9;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$1700(Lcom/codemao/creativecenter/activity/MaterialActivity;Z)V

    return-void
.end method

.method public onDenyRequest()V
    .registers 3

    .line 1107
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$9;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_permission_cannot_open_album:I

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    return-void
.end method

.method public onDenyRequestAndDontShow()V
    .registers 1

    return-void
.end method
