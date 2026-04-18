.class Lcom/codemao/creativecenter/customview/CmDisplayRoleView$2;
.super Ljava/lang/Object;
.source "CmDisplayRoleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->clickCopy(Lcom/codemao/creativestore/bean/ActorVO;)V
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

    .line 232
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$2;->this$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$2;->val$actorVO:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 235
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$2;->this$0:Lcom/codemao/creativecenter/customview/CmDisplayRoleView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmDisplayRoleView;->access$100(Lcom/codemao/creativecenter/customview/CmDisplayRoleView;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmDisplayRoleView$2;->val$actorVO:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->copyActor(Lcom/codemao/creativestore/bean/ActorVO;)V

    return-void
.end method
