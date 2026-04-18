.class final Lcom/codemao/creativecenter/NewBcmFragment$undoAndRedoStatus$1;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment;->undoAndRedoStatus(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $canRedo:Z

.field final synthetic $canUndo:Z

.field final synthetic this$0:Lcom/codemao/creativecenter/NewBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/NewBcmFragment;ZZ)V
    .registers 4

    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$undoAndRedoStatus$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    iput-boolean p2, p0, Lcom/codemao/creativecenter/NewBcmFragment$undoAndRedoStatus$1;->$canUndo:Z

    iput-boolean p3, p0, Lcom/codemao/creativecenter/NewBcmFragment$undoAndRedoStatus$1;->$canRedo:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2925
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$undoAndRedoStatus$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getRevoke$p(Lcom/codemao/creativecenter/NewBcmFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-boolean v1, p0, Lcom/codemao/creativecenter/NewBcmFragment$undoAndRedoStatus$1;->$canUndo:Z

    if-eqz v1, :cond_f

    sget v1, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_back:I

    goto :goto_11

    :cond_f
    sget v1, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_back_unable:I

    :goto_11
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2926
    :cond_14
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$undoAndRedoStatus$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getRedo$p(Lcom/codemao/creativecenter/NewBcmFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-boolean v1, p0, Lcom/codemao/creativecenter/NewBcmFragment$undoAndRedoStatus$1;->$canRedo:Z

    if-eqz v1, :cond_23

    sget v1, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_revert:I

    goto :goto_25

    :cond_23
    sget v1, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_revert_unable:I

    :goto_25
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_28
    return-void
.end method
