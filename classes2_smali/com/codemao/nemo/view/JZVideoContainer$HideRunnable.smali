.class Lcom/codemao/nemo/view/JZVideoContainer$HideRunnable;
.super Ljava/lang/Object;
.source "JZVideoContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/view/JZVideoContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HideRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/JZVideoContainer;


# direct methods
.method private constructor <init>(Lcom/codemao/nemo/view/JZVideoContainer;)V
    .registers 2

    .line 762
    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer$HideRunnable;->this$0:Lcom/codemao/nemo/view/JZVideoContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/nemo/view/JZVideoContainer;Lcom/codemao/nemo/view/JZVideoContainer$1;)V
    .registers 3

    .line 762
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/JZVideoContainer$HideRunnable;-><init>(Lcom/codemao/nemo/view/JZVideoContainer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 765
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer$HideRunnable;->this$0:Lcom/codemao/nemo/view/JZVideoContainer;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/JZVideoContainer;->isFull()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_14

    .line 766
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer$HideRunnable;->this$0:Lcom/codemao/nemo/view/JZVideoContainer;

    invoke-static {v0}, Lcom/codemao/nemo/view/JZVideoContainer;->access$200(Lcom/codemao/nemo/view/JZVideoContainer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1d

    .line 768
    :cond_14
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer$HideRunnable;->this$0:Lcom/codemao/nemo/view/JZVideoContainer;

    invoke-static {v0}, Lcom/codemao/nemo/view/JZVideoContainer;->access$300(Lcom/codemao/nemo/view/JZVideoContainer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1d
    return-void
.end method
