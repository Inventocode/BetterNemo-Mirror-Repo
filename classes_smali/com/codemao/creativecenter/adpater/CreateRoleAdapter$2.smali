.class Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$2;
.super Ljava/lang/Object;
.source "CreateRoleAdapter.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->hideMoreAnim(Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;Lcom/codemao/creativestore/bean/ActorVO;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

.field final synthetic val$actorVO:Lcom/codemao/creativestore/bean/ActorVO;

.field final synthetic val$binding:Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;)V
    .registers 4

    .line 314
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    iput-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$2;->val$actorVO:Lcom/codemao/creativestore/bean/ActorVO;

    iput-object p3, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$2;->val$binding:Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .line 331
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$2;->val$binding:Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$2;->val$actorVO:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-static {p1, v0, v1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$100(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;Lcom/codemao/creativestore/bean/ActorVO;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 326
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$2;->val$binding:Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$2;->val$actorVO:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-static {p1, v0, v1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$100(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;Lcom/codemao/creativestore/bean/ActorVO;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 317
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$2;->val$actorVO:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->isUploading()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 318
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$2;->val$binding:Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivCollect:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->hideIcon(Landroid/view/View;)V

    goto :goto_1b

    .line 320
    :cond_12
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$2;->val$binding:Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->hideIcon(Landroid/view/View;)V

    :goto_1b
    return-void
.end method
