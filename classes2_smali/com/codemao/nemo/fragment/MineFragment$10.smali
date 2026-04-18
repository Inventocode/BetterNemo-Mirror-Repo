.class Lcom/codemao/nemo/fragment/MineFragment$10;
.super Ljava/lang/Object;
.source "MineFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/MineFragment;->setDataOffline(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/MineFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/MineFragment;)V
    .registers 2

    .line 438
    iput-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment$10;->this$0:Lcom/codemao/nemo/fragment/MineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 441
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment$10;->this$0:Lcom/codemao/nemo/fragment/MineFragment;

    iget-object v1, v0, Lcom/codemao/nemo/fragment/MineFragment;->ivLike:Landroid/widget/ImageView;

    if-eqz v1, :cond_16

    .line 442
    invoke-static {v0}, Lcom/codemao/nemo/fragment/MineFragment;->access$800(Lcom/codemao/nemo/fragment/MineFragment;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 443
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment$10;->this$0:Lcom/codemao/nemo/fragment/MineFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/MineFragment;->access$800(Lcom/codemao/nemo/fragment/MineFragment;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_16
    return-void
.end method
