.class final Lcom/codemao/creativecenter/NewBcmFragment$onResume$1;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/NewBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/NewBcmFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$onResume$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1483
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$onResume$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getBinding$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->vCover:Landroid/view/View;

    if-eqz v0, :cond_11

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    return-void
.end method
