.class Lcom/codemao/creativecenter/customview/CmDisplayRoleView$4;
.super Ljava/lang/Object;
.source "CmDisplayRoleView.java"

# interfaces
.implements Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->clickRename(Lcom/codemao/creativestore/bean/ActorVO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

.field final synthetic val$actorVO:Lcom/codemao/creativestore/bean/ActorVO;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 3

    .line 320
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$4;->this$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$4;->val$actorVO:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    return-void
.end method

.method public onDone(Ljava/lang/String;)V
    .registers 4

    .line 328
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 329
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$4;->this$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$4;->val$actorVO:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v0, p1, v1}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->rename(Ljava/lang/String;Lcom/codemao/creativestore/bean/ActorVO;)V

    :cond_d
    return-void
.end method

.method public onDoneVariable(Ljava/lang/String;Z)V
    .registers 3

    return-void
.end method
