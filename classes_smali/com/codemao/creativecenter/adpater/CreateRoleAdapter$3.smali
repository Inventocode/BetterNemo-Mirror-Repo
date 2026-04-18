.class Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$3;
.super Ljava/lang/Object;
.source "CreateRoleAdapter.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->showMoreAnim(Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;Lcom/codemao/creativestore/bean/ActorVO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

.field final synthetic val$actorVO:Lcom/codemao/creativestore/bean/ActorVO;

.field final synthetic val$binding:Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;)V
    .registers 4

    .line 439
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$3;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    iput-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$3;->val$actorVO:Lcom/codemao/creativestore/bean/ActorVO;

    iput-object p3, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$3;->val$binding:Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showMoreViews(Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;)V
    .registers 5

    .line 455
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivMore:Landroid/widget/ImageView;

    const/high16 v1, 0x42b40000  # 90.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 456
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivVisible2:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 457
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivVisible2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$3;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {v2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$200(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 458
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->text:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 459
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->text:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$3;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$200(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 460
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$3;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    iget-object v1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLock:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->showIcon(Landroid/view/View;)V

    .line 461
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$3;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    iget-object v1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivRename:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->showIcon(Landroid/view/View;)V

    .line 462
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$3;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    iget-object v1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCopy:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->showIcon(Landroid/view/View;)V

    .line 463
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$3;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    iget-object v1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivDel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->showIcon(Landroid/view/View;)V

    .line 464
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$3;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    iget-object v1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->showIcon(Landroid/view/View;)V

    .line 465
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$3;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCollect:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->showIcon(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 470
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$3;->val$binding:Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$3;->showMoreViews(Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 451
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$3;->val$binding:Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$3;->showMoreViews(Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 442
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$3;->val$actorVO:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->isUploading()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 443
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$3;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$3;->val$binding:Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCollect:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->hideIcon(Landroid/view/View;)V

    goto :goto_1b

    .line 445
    :cond_12
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$3;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$3;->val$binding:Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->hideIcon(Landroid/view/View;)V

    :goto_1b
    return-void
.end method
